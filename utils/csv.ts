import { Person, Relationship } from "@/types";
import JSZip from "jszip";
import Papa from "papaparse";

const UTF8_BOM = "\uFEFF";


interface PersonDetailsPrivateRow {
  person_id: string;
  phone_number: string | null;
  occupation: string | null;
  current_residence: string | null;
}

interface CustomEventRow {
  id: string;
  name: string;
  content: string | null;
  event_date: string;
  location: string | null;
  created_by: string | null;
}

export async function exportToCsvZip(data: {
  persons: Partial<Person>[];
  relationships: Partial<Relationship>[];
  person_details_private?: PersonDetailsPrivateRow[];
  custom_events?: CustomEventRow[];
}): Promise<Blob> {
  const personsCsv = UTF8_BOM + Papa.unparse(data.persons);
  const relationshipsCsv = UTF8_BOM + Papa.unparse(data.relationships);

  const zip = new JSZip();
  zip.file("persons.csv", personsCsv);
  zip.file("relationships.csv", relationshipsCsv);

  if (data.person_details_private && data.person_details_private.length > 0) {
    zip.file(
      "person_details_private.csv",
      UTF8_BOM + Papa.unparse(data.person_details_private),
    );
  }

  if (data.custom_events && data.custom_events.length > 0) {
    zip.file("custom_events.csv", UTF8_BOM + Papa.unparse(data.custom_events));
  }

  const zipBlob = await zip.generateAsync({ type: "blob" });
  return zipBlob;
}

export async function parseCsvZip(zipBlob: Blob): Promise<{
  persons: Partial<Person>[];
  relationships: Partial<Relationship>[];
  person_details_private?: PersonDetailsPrivateRow[];
  custom_events?: CustomEventRow[];
}> {
  const zip = new JSZip();
  const loadedZip = await zip.loadAsync(zipBlob);

  const personsFile = loadedZip.file("persons.csv");
  const relationshipsFile = loadedZip.file("relationships.csv");

  if (!personsFile || !relationshipsFile) {
    throw new Error(
      "File ZIP không hợp lệ: thiếu persons.csv hoặc relationships.csv.",
    );
  }

  const personsCsvRaw = await personsFile.async("text");
  const relationshipsCsvRaw = await relationshipsFile.async("text");

  const personsCsvStr = personsCsvRaw.startsWith(UTF8_BOM)
    ? personsCsvRaw.slice(1)
    : personsCsvRaw;
  const relationshipsCsvStr = relationshipsCsvRaw.startsWith(UTF8_BOM)
    ? relationshipsCsvRaw.slice(1)
    : relationshipsCsvRaw;

  const personsParsed = Papa.parse<Partial<Person>>(personsCsvStr, {
    header: true,
    skipEmptyLines: true,
    dynamicTyping: true, // Tự động convert số và boolean
  });

  const relationshipsParsed = Papa.parse<Partial<Relationship>>(
    relationshipsCsvStr,
    {
      header: true,
      skipEmptyLines: true,
      dynamicTyping: true,
    },
  );

  if (personsParsed.errors.length > 0) {
    console.error("Lỗi parse persons.csv:", personsParsed.errors);
  }

  if (relationshipsParsed.errors.length > 0) {
    console.error("Lỗi parse relationships.csv:", relationshipsParsed.errors);
  }

  const result: {
    persons: Partial<Person>[];
    relationships: Partial<Relationship>[];
    person_details_private?: PersonDetailsPrivateRow[];
    custom_events?: CustomEventRow[];
  } = {
    persons: personsParsed.data,
    relationships: relationshipsParsed.data,
  };

  // Parse person_details_private.csv (optional, backward compat)
  const privateFile = loadedZip.file("person_details_private.csv");
  if (privateFile) {
    const raw = await privateFile.async("text");
    const privateCsvStr = raw.startsWith(UTF8_BOM) ? raw.slice(1) : raw;
    const privateParsed = Papa.parse<PersonDetailsPrivateRow>(privateCsvStr, {
      header: true,
      skipEmptyLines: true,
      dynamicTyping: true,
    });
    if (privateParsed.errors.length > 0) {
      console.error(
        "Lỗi parse person_details_private.csv:",
        privateParsed.errors,
      );
    }
    result.person_details_private = privateParsed.data;
  }

  // Parse custom_events.csv (optional, backward compat)
  const eventsFile = loadedZip.file("custom_events.csv");
  if (eventsFile) {
    const raw = await eventsFile.async("text");
    const eventsCsvStr = raw.startsWith(UTF8_BOM) ? raw.slice(1) : raw;
    const eventsParsed = Papa.parse<CustomEventRow>(eventsCsvStr, {
      header: true,
      skipEmptyLines: true,
      dynamicTyping: true,
    });
    if (eventsParsed.errors.length > 0) {
      console.error("Lỗi parse custom_events.csv:", eventsParsed.errors);
    }
    result.custom_events = eventsParsed.data;
  }

  return result;
}


// ── CSV TEMPLATE IMPORT ──────────────────────────────────────────────────────

export const CSV_IMPORT_COLUMNS: Record<string, string> = {
  full_name: "Họ và tên (*)",
  gender: "Giới tính (*) [male/female/other]",
  birth_year: "Năm sinh",
  birth_month: "Tháng sinh",
  birth_day: "Ngày sinh",
  death_year: "Năm mất",
  death_month: "Tháng mất",
  death_day: "Ngày mất",
  is_deceased: "Đã mất [true/false]",
  generation: "Đời thứ",
  birth_order: "Thứ tự sinh",
  other_names: "Tên khác",
  note: "Ghi chú",
  burial_place: "Nơi an táng",
  phone_number: "Số điện thoại",
  occupation: "Nghề nghiệp",
  current_residence: "Nơi ở hiện tại",
};

export function generateCsvTemplate(): string {
  const headers = Object.values(CSV_IMPORT_COLUMNS);
  const example1 = [
    "Nguyễn Văn An", "male", "1940", "", "", "", "", "",
    "false", "1", "1", "", "Người sáng lập dòng họ", "", "", "", "Hà Nội",
  ];
  const example2 = [
    "Nguyễn Thị Bình", "female", "1975", "3", "15", "", "", "",
    "false", "2", "1", "Bình", "", "", "0912345678", "Giáo viên", "TP.HCM",
  ];
  const rows = [headers, example1, example2];
  return UTF8_BOM + rows.map((row) =>
    row.map((cell) => `"${String(cell).replace(/"/g, '""')}"`).join(",")
  ).join("\n");
}

export function parseCsvTemplate(csvText: string): {
  persons: Record<string, unknown>[];
  privateData: Record<string, unknown>[];
  errors: string[];
} {
  const columnKeys = Object.keys(CSV_IMPORT_COLUMNS);
  const columnValues = Object.values(CSV_IMPORT_COLUMNS);

  const parsed = Papa.parse<Record<string, string>>(
    csvText.startsWith(UTF8_BOM) ? csvText.slice(1) : csvText,
    { header: true, skipEmptyLines: true }
  );

  const persons: Record<string, unknown>[] = [];
  const privateData: Record<string, unknown>[] = [];
  const errors: string[] = [];

  parsed.data.forEach((row, i) => {
    // Map tên cột tiếng Việt → key database
    const mapped: Record<string, string | null> = {};
    Object.entries(row).forEach(([header, value]) => {
      const keyIdx = columnValues.indexOf(header);
      if (keyIdx !== -1) {
        mapped[columnKeys[keyIdx]] = value?.trim() || null;
      }
    });

    // Validate bắt buộc
    if (!mapped.full_name) {
      errors.push(`Dòng ${i + 2}: Thiếu họ tên.`);
      return;
    }
    if (!["male", "female", "other"].includes(mapped.gender ?? "")) {
      errors.push(`Dòng ${i + 2}: Giới tính không hợp lệ (phải là male/female/other).`);
      return;
    }

    const toInt = (v: string | null) => {
      const n = parseInt(v ?? "", 10);
      return isNaN(n) ? null : n;
    };

    persons.push({
      full_name: mapped.full_name,
      gender: mapped.gender,
      birth_year: toInt(mapped.birth_year),
      birth_month: toInt(mapped.birth_month),
      birth_day: toInt(mapped.birth_day),
      death_year: toInt(mapped.death_year),
      death_month: toInt(mapped.death_month),
      death_day: toInt(mapped.death_day),
      is_deceased: mapped.is_deceased === "true" || !!toInt(mapped.death_year),
      generation: toInt(mapped.generation),
      birth_order: toInt(mapped.birth_order),
      other_names: mapped.other_names ?? null,
      note: mapped.note ?? null,
      burial_place: mapped.burial_place ?? null,
      is_in_law: false,
    });

    if (mapped.phone_number || mapped.occupation || mapped.current_residence) {
      privateData.push({
        _index: persons.length - 1,
        phone_number: mapped.phone_number ?? null,
        occupation: mapped.occupation ?? null,
        current_residence: mapped.current_residence ?? null,
      });
    }
  });

  return { persons, privateData, errors };
}