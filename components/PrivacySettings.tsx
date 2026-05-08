"use client";

import { createClient } from "@/utils/supabase/client";
import { useState } from "react";
import { Shield, Save, Loader2 } from "lucide-react";

type Visibility = "admin_only" | "admin_editor" | "all_members";

interface Props {
  initialValue: Visibility;
}

const options: { value: Visibility; label: string; desc: string }[] = [
  {
    value: "admin_only",
    label: "Chỉ Admin",
    desc: "Chỉ quản trị viên mới xem được số điện thoại, nghề nghiệp, nơi ở",
  },
  {
    value: "admin_editor",
    label: "Admin & Editor",
    desc: "Admin và biên tập viên có thể xem thông tin riêng tư",
  },
  {
    value: "all_members",
    label: "Tất cả thành viên",
    desc: "Mọi tài khoản đã được duyệt đều xem được thông tin riêng tư",
  },
];

export default function PrivacySettings({ initialValue }: Props) {
  const supabase = createClient();
  const [value, setValue] = useState<Visibility>(initialValue);
  const [loading, setLoading] = useState(false);
  const [saved, setSaved] = useState(false);

  const handleSave = async () => {
    setLoading(true);
    await supabase
      .from("app_settings")
      .upsert({ key: "private_data_visibility", value });
    setLoading(false);
    setSaved(true);
    setTimeout(() => setSaved(false), 2000);
  };

  return (
    <div className="bg-white border border-stone-200 rounded-2xl p-6 shadow-sm">
      <h3 className="font-serif font-bold text-lg text-stone-800 mb-1 flex items-center gap-2">
        <Shield className="size-5 text-amber-600" />
        Quyền xem thông tin riêng tư
      </h3>
      <p className="text-sm text-stone-500 mb-4">
        Ai có thể xem số điện thoại, nghề nghiệp và nơi ở của thành viên?
      </p>

      <div className="flex flex-col gap-3 mb-6">
        {options.map((opt) => (
          <label
            key={opt.value}
            className={`flex items-start gap-3 p-4 rounded-xl border cursor-pointer transition-all ${
              value === opt.value
                ? "border-amber-400 bg-amber-50"
                : "border-stone-200 hover:border-stone-300"
            }`}
          >
            <input
              type="radio"
              name="visibility"
              value={opt.value}
              checked={value === opt.value}
              onChange={() => setValue(opt.value)}
              className="mt-0.5 accent-amber-600"
            />
            <div>
              <p className="font-semibold text-stone-800 text-sm">{opt.label}</p>
              <p className="text-stone-500 text-xs mt-0.5">{opt.desc}</p>
            </div>
          </label>
        ))}
      </div>

      <button
        onClick={handleSave}
        disabled={loading}
        className="btn-primary flex items-center gap-2"
      >
        {loading ? <Loader2 className="size-4 animate-spin" /> : <Save className="size-4" />}
        {saved ? "Đã lưu!" : "Lưu cài đặt"}
      </button>
    </div>
  );
}