"use client";

import { createClient } from "@/utils/supabase/client";
import { formatDistanceToNow } from "date-fns";
import { vi } from "date-fns/locale";
import { useEffect, useState } from "react";
import { Clock, User, Plus, Pencil, Trash2, Loader2 } from "lucide-react";

interface AuditLog {
  id: string;
  action: string;
  table_name: string;
  record_id: string;
  old_data: Record<string, unknown> | null;
  new_data: Record<string, unknown> | null;
  created_at: string;
  user_email: string;
}

const actionConfig = {
  create: { label: "Thêm mới", color: "text-green-600 bg-green-50 border-green-200", icon: Plus },
  update: { label: "Cập nhật", color: "text-blue-600 bg-blue-50 border-blue-200", icon: Pencil },
  delete: { label: "Xóa", color: "text-red-600 bg-red-50 border-red-200", icon: Trash2 },
};

const tableLabel: Record<string, string> = {
  persons: "Thành viên",
  relationships: "Quan hệ",
  person_details_private: "Thông tin liên hệ",
};

function getChangedFields(oldData: Record<string, unknown> | null, newData: Record<string, unknown> | null) {
  if (!oldData || !newData) return [];
  return Object.keys(newData).filter(
    (key) =>
      !["updated_at", "created_at"].includes(key) &&
      JSON.stringify(oldData[key]) !== JSON.stringify(newData[key])
  );
}

const fieldLabel: Record<string, string> = {
  full_name: "Họ tên", gender: "Giới tính", birth_year: "Năm sinh",
  birth_month: "Tháng sinh", birth_day: "Ngày sinh", death_year: "Năm mất",
  is_deceased: "Trạng thái", generation: "Đời", note: "Ghi chú",
  phone_number: "Số điện thoại", occupation: "Nghề nghiệp",
  current_residence: "Nơi ở", avatar_url: "Ảnh đại diện",
  burial_place: "Nơi an táng",
};

export default function AuditLogList({ recordId }: { recordId?: string }) {
  const supabase = createClient();
  const [logs, setLogs] = useState<AuditLog[]>([]);
  const [loading, setLoading] = useState(true);
  const [page, setPage] = useState(0);
  const [hasMore, setHasMore] = useState(true);
  const LIMIT = 20;

  const fetchLogs = async (offset = 0) => {
    setLoading(true);
    const { data, error } = await supabase.rpc("get_audit_logs", {
      p_limit: LIMIT + 1,
      p_offset: offset,
      p_record_id: recordId || "00000000-0000-0000-0000-000000000000",
    });
  
  console.log("audit error:", JSON.stringify(error));
  console.log("audit data:", data);
    if (data) {
      setHasMore(data.length > LIMIT);
      setLogs(offset === 0 ? data.slice(0, LIMIT) : (prev) => [...prev, ...data.slice(0, LIMIT)]);
    }
    setLoading(false);
  };

  useEffect(() => { fetchLogs(0); }, [recordId]);

  if (loading && logs.length === 0) {
    return (
      <div className="flex items-center justify-center py-12">
        <Loader2 className="size-6 animate-spin text-stone-400" />
      </div>
    );
  }

  if (logs.length === 0) {
    return (
      <div className="text-center py-12 text-stone-400">
        <Clock className="size-10 mx-auto mb-3 opacity-40" />
        <p>Chưa có lịch sử thay đổi</p>
      </div>
    );
  }

  return (
    <div className="space-y-3">
      {logs.map((log) => {
        const cfg = actionConfig[log.action as keyof typeof actionConfig];
        const Icon = cfg?.icon ?? Pencil;
        const changedFields = getChangedFields(log.old_data, log.new_data);
        const personName = (log.new_data?.full_name || log.old_data?.full_name) as string;

        return (
          <div key={log.id} className="bg-white border border-stone-200/80 rounded-xl p-4 shadow-xs">
            <div className="flex items-start gap-3">
              <div className={`p-2 rounded-lg border ${cfg?.color} shrink-0`}>
                <Icon className="size-3.5" />
              </div>
              <div className="flex-1 min-w-0">
                <div className="flex items-center gap-2 flex-wrap">
                  <span className={`text-xs font-bold px-2 py-0.5 rounded-full border ${cfg?.color}`}>
                    {cfg?.label}
                  </span>
                  <span className="text-xs text-stone-500">
                    {tableLabel[log.table_name] ?? log.table_name}
                  </span>
                  {personName && (
                    <span className="text-xs font-semibold text-stone-700">
                      · {personName}
                    </span>
                  )}
                </div>

                {changedFields.length > 0 && (
                  <div className="mt-2 flex flex-wrap gap-1">
                    {changedFields.map((field) => (
                      <span key={field} className="text-[11px] bg-stone-100 text-stone-600 px-2 py-0.5 rounded-md border border-stone-200">
                        {fieldLabel[field] ?? field}
                      </span>
                    ))}
                  </div>
                )}

                <div className="flex items-center gap-3 mt-2 text-xs text-stone-400">
                  <span className="flex items-center gap-1">
                    <User className="size-3" />
                    {log.user_email}
                  </span>
                  <span className="flex items-center gap-1">
                    <Clock className="size-3" />
                    {formatDistanceToNow(new Date(log.created_at), {
                      addSuffix: true,
                      locale: vi,
                    })}
                  </span>
                </div>
              </div>
            </div>
          </div>
        );
      })}

      {hasMore && (
        <button
          onClick={() => { setPage((p) => p + 1); fetchLogs((page + 1) * LIMIT); }}
          disabled={loading}
          className="w-full py-2.5 text-sm text-stone-500 hover:text-stone-700 border border-stone-200 rounded-xl hover:bg-stone-50 transition-colors"
        >
          {loading ? "Đang tải..." : "Xem thêm"}
        </button>
      )}
    </div>
  );
}