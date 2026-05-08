"use client";

import { Moon, Sun } from "lucide-react";
import { useTheme } from "next-themes";
import { useEffect, useState } from "react";

export default function ThemeToggle() {
  const { theme, setTheme } = useTheme();
  const [mounted, setMounted] = useState(false);

  // Tránh hydration mismatch
  useEffect(() => setMounted(true), []);
  if (!mounted) return <div className="size-9" />;

  const isDark = theme === "dark";

  return (
    <button
      onClick={() => setTheme(isDark ? "light" : "dark")}
      className="size-9 flex items-center justify-center rounded-full border transition-all hover:-translate-y-0.5"
      style={{
        borderColor: "var(--border)",
        background: "var(--surface-raised)",
        color: "var(--text-secondary)",
      }}
      title={isDark ? "Chuyển sang Light" : "Chuyển sang Dark"}
    >
      {isDark ? <Sun className="size-4" /> : <Moon className="size-4" />}
    </button>
  );
}