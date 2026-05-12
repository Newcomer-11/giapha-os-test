export function getAvatarBg(gender: string, isDeceased?: boolean) {
  if (isDeceased) return "bg-linear-to-br from-stone-400 to-stone-500";
  if (gender === "male") return "bg-linear-to-br from-sky-400 to-sky-500";
  if (gender === "female") return "bg-linear-to-br from-rose-200 to-rose-300";
  return "bg-linear-to-br from-stone-400 to-stone-500";
}
