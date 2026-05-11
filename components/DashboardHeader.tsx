import config from "@/app/config";
import HeaderMenu from "@/components/HeaderMenu";
import Image from "next/image";
import Link from "next/link";
import ThemeToggle from "@/components/ThemeToggle";

export default function DashboardHeader() {
  return (
    <header className="sticky top-0 z-30 bg-white/80 border-b border-stone-200 shadow-sm transition-all duration-200">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
        <div className="flex items-center gap-4">
          <Link
            href="/dashboard"
            className="group flex items-center gap-2 sm:gap-3"
          >
            <div className="relative size-8 rounded-lg overflow-hidden shrink-0 border border-stone-200/50 transition-all">
              <Image
                src="/icon.png"
                alt="Logo"
                fill
                className="object-contain"
                sizes="32px"
              />
            </div>
            <h1 className="text-xl sm:text-2xl font-serif font-bold text-stone-800 group-hover:text-amber-700 transition-colors">
              {config.siteName}
            </h1>
          </Link>
        </div>
        <div className="flex items-center gap-4">
          <HeaderMenu />
        </div>
      </div>
    </header>
  );
}

// export default function DashboardHeader() {
//   return (
//     <header className="sticky top-0 z-30 border-b shadow-sm transition-all duration-200"
//       style={{ background: "var(--surface)", borderColor: "var(--border)" }}>
//       <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 h-16 flex items-center justify-between">
//         <div className="flex items-center gap-4">
//           <Link href="/dashboard" className="group flex items-center gap-2 sm:gap-3">
//             <div className="relative size-8 rounded-lg overflow-hidden shrink-0 border"
//               style={{ borderColor: "var(--border)" }}>
//               <Image src="/icon.png" alt="Logo" fill className="object-contain" sizes="32px" />
//             </div>
//             <h1 className="text-xl sm:text-2xl font-serif font-bold transition-colors"
//               style={{ color: "var(--text-primary)" }}>
//               {config.siteName}
//             </h1>
//           </Link>
//         </div>
//         <div className="flex items-center gap-3">
//           <ThemeToggle />
//           <HeaderMenu />
//         </div>
//       </div>
//     </header>
//   );
// }