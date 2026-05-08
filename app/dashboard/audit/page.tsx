import AuditLogList from "@/components/AuditLogList";
import { getIsAdmin } from "@/utils/supabase/queries";
import { redirect } from "next/navigation";
import { History } from "lucide-react";

export const metadata = { title: "Lịch sử thay đổi" };

export default async function AuditPage() {
  const isAdmin = await getIsAdmin();
  if (!isAdmin) redirect("/dashboard");

  return (
    <div className="flex-1 w-full flex flex-col pb-12">
      <div className="py-6 px-4 sm:px-6 lg:px-8 max-w-4xl mx-auto w-full">
        <h1 className="title flex items-center gap-2">
          <History className="size-6 text-amber-600" />
          Lịch sử thay đổi
        </h1>
        <p className="text-stone-500 mt-1 text-sm">
          Theo dõi mọi thay đổi dữ liệu trong hệ thống
        </p>
      </div>
      <main className="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 w-full flex-1">
        <AuditLogList />
      </main>
    </div>
  );
}