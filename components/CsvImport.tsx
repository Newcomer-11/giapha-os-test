"use client";

import { importFromCsv } from "@/app/actions/data";
import { generateCsvTemplate, parseCsvTemplate } from "@/utils/csv";
import {
  AlertTriangle,
  CheckCircle2,
  Download,
  FileSpreadsheet,
  Upload,
  X,
} from "lucide-react";
import { useRef, useState } from "react";

export default function CsvImport() {
  const fileInputRef = useRef<HTMLInputElement>(null);
  const [preview, setPreview] = useState<Record<string, unknown>[]>([]);
  const [privateData, setPrivateData] = useState<Record<string, unknown>[]>([]);
  const [errors, setErrors] = useState<string[]>([]);
  const [importing, setImporting] = useState(false);
  const [status, setStatus] = useState<{
    type: "success" | "error";
    message: string;
  } | null>(null);

  const handleDownloadTemplate = () => {
    const csv = generateCsvTemplate();
    const blob = new Blob([csv], { type: "text/csv;charset=utf-8;" });
    const url = URL.createObjectURL(blob);
    const a = document.createElement("a");
    a.href = url;
    a.download = "giapha-mau-nhap-lieu.csv";
    a.click();
    URL.revokeObjectURL(url);
  };

  const handleFileChange = async (e: React.ChangeEvent<HTMLInputElement>) => {
    const file = e.target.files?.[0];
    if (!file) return;

    const text = await file.text();
    const { persons, privateData, errors } = parseCsvTemplate(text);
    setPreview(persons);
    setPrivateData(privateData);
    setErrors(errors);
    setStatus(null);
  };

  const handleImport = async () => {
    if (preview.length === 0) return;
    setImporting(true);
    const result = await importFromCsv(preview, privateData);
    setImporting(false);

    if ("error" in result) {
      //setStatus({ type: "error", message: result.error });
      setStatus({ type: "error", message: result.error ?? "Import failed",
});
    } else {
      setStatus({
        type: "success",
        message: `Đã thêm thành công ${result.imported} thành viên!`,
      });
      setPreview([]);
      setPrivateData([]);
      setErrors([]);
      if (fileInputRef.current) fileInputRef.current.value = "";
    }
  };

  const handleReset = () => {
    setPreview([]);
    setPrivateData([]);
    setErrors([]);
    setStatus(null);
    if (fileInputRef.current) fileInputRef.current.value = "";
  };

  return (
    <div className="space-y-6">
      {/* Hướng dẫn */}
      <div className="bg-amber-50 border border-amber-200 rounded-2xl p-5">
        <h3 className="font-bold text-amber-900 mb-3 flex items-center gap-2">
          <FileSpreadsheet className="size-5" /> Nhập liệu từ file CSV
        </h3>
        <ol className="text-sm text-amber-800 space-y-1.5 list-decimal list-inside">
          <li>Tải về file CSV mẫu bên dưới</li>
          <li>Mở bằng Excel hoặc Google Sheets, điền thông tin thành viên</li>
          <li>Lưu lại dưới dạng CSV (UTF-8)</li>
          <li>Upload file lên để xem trước và import</li>
        </ol>
        <button
          onClick={handleDownloadTemplate}
          className="mt-4 flex items-center gap-2 px-4 py-2 bg-amber-600 text-white rounded-xl text-sm font-semibold hover:bg-amber-700 transition-colors"
        >
          <Download className="size-4" /> Tải file CSV mẫu
        </button>
      </div>

      {/* Upload */}
      <div>
        <label className="block text-sm font-semibold text-stone-700 mb-2">
          Upload file CSV
        </label>
        <input
          ref={fileInputRef}
          type="file"
          accept=".csv"
          onChange={handleFileChange}
          className="block w-full text-sm text-stone-600 file:mr-4 file:py-2 file:px-4 file:rounded-xl file:border-0 file:bg-stone-100 file:text-stone-700 file:font-semibold hover:file:bg-stone-200 cursor-pointer"
        />
      </div>

      {/* Lỗi validation */}
      {errors.length > 0 && (
        <div className="bg-red-50 border border-red-200 rounded-xl p-4">
          <p className="text-red-700 font-semibold text-sm mb-2 flex items-center gap-2">
            <AlertTriangle className="size-4" /> {errors.length} lỗi phát hiện:
          </p>
          <ul className="text-sm text-red-600 space-y-1">
            {errors.map((err, i) => (
              <li key={i}>• {err}</li>
            ))}
          </ul>
        </div>
      )}

      {/* Preview */}
      {preview.length > 0 && (
        <div>
          <div className="flex items-center justify-between mb-3">
            <p className="font-semibold text-stone-700 text-sm">
              Xem trước:{" "}
              <span className="text-amber-600">{preview.length} thành viên</span>
            </p>
            <button
              onClick={handleReset}
              className="text-stone-400 hover:text-stone-600"
            >
              <X className="size-4" />
            </button>
          </div>
          <div className="overflow-x-auto rounded-xl border border-stone-200">
            <table className="w-full text-xs">
              <thead className="bg-stone-100 text-stone-600">
                <tr>
                  <th className="px-3 py-2 text-left font-semibold">Họ tên</th>
                  <th className="px-3 py-2 text-left font-semibold">
                    Giới tính
                  </th>
                  <th className="px-3 py-2 text-left font-semibold">
                    Năm sinh
                  </th>
                  <th className="px-3 py-2 text-left font-semibold">Đời</th>
                  <th className="px-3 py-2 text-left font-semibold">
                    Ghi chú
                  </th>
                </tr>
              </thead>
              <tbody className="divide-y divide-stone-100">
                {preview.slice(0, 10).map((p, i) => (
                  <tr key={i} className="hover:bg-stone-50">
                    <td className="px-3 py-2 font-medium text-stone-800">
                      {p.full_name as string}
                    </td>
                    <td className="px-3 py-2 text-stone-500">
                      {p.gender as string}
                    </td>
                    <td className="px-3 py-2 text-stone-500">
                      {(p.birth_year as string) ?? "—"}
                    </td>
                    <td className="px-3 py-2 text-stone-500">
                      {(p.generation as string) ?? "—"}
                    </td>
                    <td className="px-3 py-2 text-stone-400 truncate max-w-[150px]">
                      {(p.note as string) ?? "—"}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
            {preview.length > 10 && (
              <p className="text-center text-xs text-stone-400 py-2">
                ... và {preview.length - 10} thành viên khác
              </p>
            )}
          </div>

          <button
            onClick={handleImport}
            disabled={importing}
            className="mt-4 flex items-center gap-2 px-6 py-2.5 bg-stone-800 text-white rounded-xl text-sm font-semibold hover:bg-stone-900 transition-colors disabled:opacity-50"
          >
            <Upload className="size-4" />
            {importing
              ? "Đang import..."
              : `Import ${preview.length} thành viên`}
          </button>
        </div>
      )}

      {/* Status */}
      {status && (
        <div
          className={`flex items-center gap-3 p-4 rounded-xl border ${
            status.type === "success"
              ? "bg-green-50 border-green-200 text-green-700"
              : "bg-red-50 border-red-200 text-red-700"
          }`}
        >
          {status.type === "success" ? (
            <CheckCircle2 className="size-5 shrink-0" />
          ) : (
            <AlertTriangle className="size-5 shrink-0" />
          )}
          <p className="text-sm font-medium">{status.message}</p>
        </div>
      )}
    </div>
  );
}
