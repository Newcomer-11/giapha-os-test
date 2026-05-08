import PrivacySettings from "@/components/PrivacySettings";
import { getIsAdmin, getSupabase } from "@/utils/supabase/queries";
import { redirect } from "next/navigation";

export const metadata = {
  title: "Cài đặt hệ thống",
};

export default async function SettingsPage() {
  const isAdmin = await getIsAdmin();
  if (!isAdmin) redirect("/dashboard");

  const supabase = await getSupabase();
  const { data } = await supabase
    .from("app_settings")
    .select("value")
    .eq("key", "private_data_visibility")
    .single();

  const visibility = (data?.value ?? "all_members") as
    | "admin_only"
    | "admin_editor"
    | "all_members";

  return (
    <div className="flex-1 w-full relative flex flex-col pb-12">
      <div className="w-full relative z-20 py-6 px-4 sm:px-6 lg:px-8 max-w-3xl mx-auto">
        <h1 className="title">Cài đặt hệ thống</h1>
        <p className="text-stone-500 mt-1 text-sm">
          Quản lý cấu hình và quyền truy cập
        </p>
      </div>
      <main className="max-w-3xl mx-auto px-4 sm:px-6 lg:px-8 w-full flex-1">
        <PrivacySettings initialValue={visibility} />
      </main>
    </div>
  );
}