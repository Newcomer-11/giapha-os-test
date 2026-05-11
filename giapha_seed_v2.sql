-- ============================================================
-- Seed File cho Gia Pha OS (v2 — Updated Schema)
-- Dòng họ: TRÌNH (Họ hư cấu, không đại diện cho người thật nào)
-- 7 Đời, ~152 thành viên
-- Bao phủ: persons (đủ cột + burial_place), person_details_private,
--          relationships (marriage/biological_child/adopted_child + note),
--          custom_events
-- CẢNH BÁO: TRUNCATE toàn bộ dữ liệu hiện có trước khi chạy
-- ============================================================

TRUNCATE TABLE custom_events        CASCADE;
TRUNCATE TABLE relationships        CASCADE;
TRUNCATE TABLE person_details_private CASCADE;
TRUNCATE TABLE persons              CASCADE;


-- ============================================================
-- ĐỜI 1 — TỔ TIÊN (Sinh ~1880-1895)
-- 2 người
-- ============================================================
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
(
  '11000000-0000-0000-0000-000000000001',
  'Trần Công Tổ', 'male',
  1882, 4, 10,  1958, 9, 3,  1958, 8, 20,
  TRUE, FALSE, 1, NULL,
  'Trần Phúc Tổ',
  'Người lập nên dòng họ Trần tại vùng châu thổ sông Mã. Xuất thân nho gia, từng dạy học cho trẻ em trong làng. Được hậu thế lập bàn thờ tưởng nhớ hằng năm. [Hư cấu]',
  'Nghĩa trang dòng họ, thôn Trần Xá, Thanh Hóa'
),
(
  '11000000-0000-0000-0000-000000000002',
  'Lê Thị Cội', 'female',
  1888, 11, 22,  1962, 3, 15,  1962, 2, 30,
  TRUE, TRUE, 1, NULL,
  'Tổ mẫu Cội',
  'Tổ mẫu, người đảm đang và phúc hậu. Tự tay thêu bộ hoành phi câu đối hiện còn treo ở nhà thờ họ. [Hư cấu]',
  'Nghĩa trang dòng họ, thôn Trần Xá, Thanh Hóa'
);


-- ============================================================
-- ĐỜI 2 — ÔNG CỐ (Sinh ~1905-1920)
-- 4 con ruột + 3 dâu/rể = 7 người
-- ============================================================
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
-- Con ruột
(
  '12000000-0000-0000-0000-000000000001',
  'Trần Công Lộc', 'male',
  1908, 1, 15,  1985, 6, 20,  1985, 5, 12,
  TRUE, FALSE, 2, 1,
  NULL,
  'Con trai trưởng. Tham gia kháng chiến chống Pháp, sau về quê làm ruộng. Tính tình điềm đạm, ít nói nhưng uy tín trong làng. [Hư cấu]',
  'Nghĩa trang liệt sĩ huyện, Thanh Hóa'
),
(
  '12000000-0000-0000-0000-000000000002',
  'Hoàng Thị Tươi', 'female',
  1912, 8, 5,  1990, 2, 10,  1990, 1, 15,
  TRUE, TRUE, 2, NULL,
  NULL,
  'Vợ ông Lộc. Người khéo léo, giỏi buôn bán chợ phiên, một tay lo kinh tế gia đình khi chồng đi kháng chiến. [Hư cấu]',
  'Nghĩa trang dòng họ, thôn Trần Xá, Thanh Hóa'
),
(
  '12000000-0000-0000-0000-000000000003',
  'Trần Công Hòa', 'male',
  1911, 5, 18,  1972, 4, 30,  1972, 3, 17,
  TRUE, FALSE, 2, 2,
  'Trần Gia Hòa',
  'Con trai thứ. Hy sinh trong chiến tranh chống Mỹ năm 1972. Được truy tặng danh hiệu Liệt sĩ. [Hư cấu]',
  'Nghĩa trang liệt sĩ quốc gia, Quảng Trị'
),
(
  '12000000-0000-0000-0000-000000000004',
  'Nguyễn Thị Mận', 'female',
  1915, 3, 12,  2001, 7, 7,  2001, 5, 17,
  TRUE, TRUE, 2, NULL,
  NULL,
  'Vợ liệt sĩ Hòa. Ở vậy nuôi con sau khi chồng hy sinh. Được phong danh hiệu Bà mẹ Việt Nam Anh hùng. [Hư cấu]',
  'Nghĩa trang dòng họ, thôn Trần Xá, Thanh Hóa'
),
(
  '12000000-0000-0000-0000-000000000005',
  'Trần Thị Lan', 'female',
  1914, 9, 2,  2005, 12, 25,  2005, 11, 24,
  TRUE, FALSE, 2, 3,
  NULL,
  'Con gái thứ ba. Lấy chồng làng bên, vẫn thường xuyên về giỗ chạp. [Hư cấu]',
  'Nghĩa trang xã Thiệu Hóa, Thanh Hóa'
),
(
  '12000000-0000-0000-0000-000000000006',
  'Trần Công Vinh', 'male',
  1918, 7, 20,  2010, 8, 15,  2010, 7, 6,
  TRUE, FALSE, 2, 4,
  NULL,
  'Con trai út, người tập hợp anh em sau nhiều năm thất lạc do chiến tranh. Công chức nhà nước đã nghỉ hưu. [Hư cấu]',
  'Nghĩa trang dòng họ, thôn Trần Xá, Thanh Hóa'
),
(
  '12000000-0000-0000-0000-000000000007',
  'Trần Thị Ngát', 'female',
  1922, 4, 4,  2015, 1, 20,  2015, 1, 1,
  TRUE, TRUE, 2, NULL,
  NULL,
  'Vợ ông Vinh. Giỏi nấu ăn, dạy con cháu làm các món truyền thống. Mất đúng ngày mồng Một Tết. [Hư cấu]',
  'Nghĩa trang dòng họ, thôn Trần Xá, Thanh Hóa'
);


-- ============================================================
-- ĐỜI 3 — ÔNG BÀ (Sinh ~1930-1950)
-- 12 con ruột + 10 vợ/chồng = 22 người
-- ============================================================
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
-- === Nhánh ông Lộc & bà Tươi ===
(
  '13000000-0000-0000-0000-000000000001',
  'Trần Văn Bình', 'male',
  1935, 2, 8,  2018, 5, 10,  2018, 3, 25,
  TRUE, FALSE, 3, 1,
  NULL,
  'Con trai trưởng của ông Lộc. Giáo viên dạy Toán cấp 3 hơn 30 năm. Người nghiêm nghị, cẩn thận. [Hư cấu]',
  'Nghĩa trang dòng họ, thôn Trần Xá, Thanh Hóa'
),
(
  '13000000-0000-0000-0000-000000000002',
  'Vũ Thị Nguyệt', 'female',
  1938, 6, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 3, NULL,
  NULL,
  'Vợ ông Bình. Nghỉ hưu, hiện sống cùng con trai cả tại Hà Nội. Sức khỏe ổn định. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000003',
  'Trần Thị Hạnh', 'female',
  1938, 10, 14,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 3, 2,
  'Trần Hạnh Phúc',
  'Con gái ông Lộc. Nghỉ hưu, chuyên gia kinh tế, từng làm việc tại ngân hàng tỉnh. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000004',
  'Đinh Quốc Hùng', 'male',
  1935, 4, 20,  2020, 11, 11,  2020, 9, 26,
  TRUE, TRUE, 3, NULL,
  NULL,
  'Chồng bà Hạnh. Cựu chiến binh, tính cách hào sảng, hay kể chuyện chiến trường. [Hư cấu]',
  'Nghĩa trang liệt sĩ TP. Thanh Hóa'
),
(
  '13000000-0000-0000-0000-000000000005',
  'Trần Văn Dũng', 'male',
  1942, 12, 30,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 3, 3,
  NULL,
  'Con trai thứ ông Lộc. Di cư vào Đà Nẵng năm 1980. Làm nghề đánh bắt hải sản, nay về hưu. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000006',
  'Lê Thị Bích', 'female',
  1945, 7, 17,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 3, NULL,
  NULL,
  'Vợ ông Dũng. Người nhanh nhẹn, đảm đang, gốc Quảng Nam. [Hư cấu]',
  NULL
),
-- === Nhánh liệt sĩ Hòa & bà Mận ===
(
  '13000000-0000-0000-0000-000000000007',
  'Trần Hòa Kiên', 'male',
  1940, 3, 5,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 3, 1,
  NULL,
  'Con trai liệt sĩ Hòa. Lớn lên không có cha, tự lập từ nhỏ. Hiện là doanh nhân thành đạt tại Hà Nội. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000008',
  'Phan Thị Thu Hà', 'female',
  1944, 9, 9,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 3, NULL,
  NULL,
  'Vợ ông Kiên. Kế toán về hưu. Người kỹ tính, quản lý tài chính gia đình rất chặt chẽ. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000009',
  'Trần Hòa Nga', 'female',
  1944, 5, 25,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 3, 2,
  NULL,
  'Con gái liệt sĩ Hòa. Y tá nghỉ hưu, sống tại Thanh Hóa, hay chăm sóc mộ cha. [Hư cấu]',
  NULL
),
-- === Nhánh ông Vinh & bà Ngát ===
(
  '13000000-0000-0000-0000-000000000010',
  'Trần Vinh Phát', 'male',
  1948, 11, 11,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 3, 1,
  NULL,
  'Con trai ông Vinh. Vào TP.HCM lập nghiệp từ sau năm 1975. Làm kinh doanh bất động sản. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000011',
  'Lý Thị Kim Hoa', 'female',
  1952, 2, 28,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 3, NULL,
  NULL,
  'Vợ ông Phát. Gốc Hoa, quản lý công ty gia đình cùng chồng. Nấu ăn kiểu Quảng rất ngon. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000012',
  'Trần Vinh Thảo', 'female',
  1952, 8, 8,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 3, 2,
  NULL,
  'Con gái ông Vinh. Làm kế toán, ở lại Thanh Hóa phụng dưỡng bố mẹ đến cuối đời. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000013',
  'Cao Minh Đức', 'male',
  1948, 6, 6,  2022, 10, 10,  2022, 9, 15,
  TRUE, TRUE, 3, NULL,
  NULL,
  'Chồng bà Thảo. Bộ đội về làng, làm nông, người chất phác thật thà. [Hư cấu]',
  'Nghĩa trang xã Đông Tiến, Thanh Hóa'
);


-- ============================================================
-- ĐỜI 4 — BỐ MẸ / CÔ CHÚ (Sinh ~1958-1978)
-- 20 con ruột + 2 con nuôi + 16 vợ/chồng = 38 người
-- ============================================================
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
-- === Con ông Bình & bà Nguyệt ===
(
  '14000000-0000-0000-0000-000000000001',
  'Trần Bình An', 'male',
  1960, 3, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 1,
  'Trần An Bình',
  'Con trai trưởng ông Bình. Tiến sĩ Toán học, giảng viên ĐH Bách Khoa Hà Nội. Nghiêm khắc nhưng tận tụy với học trò. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000002',
  'Ngô Thị Thanh Vân', 'female',
  1963, 11, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh An. Bác sĩ sản khoa, bệnh viện Phụ sản Trung ương. Yêu hoa và trồng nhiều loại lan quý. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000003',
  'Trần Bình Minh', 'male',
  1963, 6, 6,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 2,
  NULL,
  'Con trai thứ ông Bình. Kỹ sư điện, chuyên gia hệ thống điện lực. Hiện công tác tại EVN. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000004',
  'Phạm Thị Cúc', 'female',
  1966, 4, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Minh. Kế toán trưởng công ty xây dựng. Người cởi mở, hay tổ chức họp mặt gia đình. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000005',
  'Trần Bình Lê', 'female',
  1967, 9, 9,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 3,
  NULL,
  'Con gái ông Bình. Nhà báo, phóng viên thời sự đã nghỉ hưu. Hay viết hồi ký về ký ức gia đình. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000006',
  'Bùi Trọng Nhân', 'male',
  1964, 7, 22,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Chồng cô Lê. Nhiếp ảnh gia tự do, hay đưa vợ về thăm quê và chụp ảnh lưu niệm dòng họ. [Hư cấu]',
  NULL
),
-- === Con bà Hạnh & ông Hùng ===
(
  '14000000-0000-0000-0000-000000000007',
  'Đinh Trần Tuấn', 'male',
  1962, 5, 5,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 1,
  NULL,
  'Con trai bà Hạnh, mang họ đôi Đinh Trần. Luật sư điều hành văn phòng riêng tại Hà Nội. Giỏi biện luận. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000008',
  'Lương Thị Diệu Linh', 'female',
  1965, 2, 14,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Tuấn. Trợ lý pháp lý, làm việc cùng văn phòng chồng. Nổi tiếng cẩn thận và mẫn cán. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000009',
  'Đinh Trần Mai', 'female',
  1966, 8, 30,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 2,
  NULL,
  'Con gái bà Hạnh. Chuyên gia dinh dưỡng, viết sách về sức khỏe, hay xuất hiện trên các kênh truyền thông. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000010',
  'Trần Đình Sơn', 'male',
  1963, 10, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Chồng cô Mai. Đầu bếp bếp trưởng khách sạn 5 sao. Cặp đôi nổi tiếng trong họ về ẩm thực. [Hư cấu]',
  NULL
),
-- === Con ông Dũng & bà Bích (nhánh Đà Nẵng) ===
(
  '14000000-0000-0000-0000-000000000011',
  'Trần Dũng Khoa', 'male',
  1968, 1, 25,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 1,
  NULL,
  'Con trai ông Dũng, sinh tại Đà Nẵng. Kỹ sư hải sản, làm việc cho công ty thủy sản lớn miền Trung. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000012',
  'Hồ Thị Yến', 'female',
  1971, 3, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Khoa. Giáo viên tiểu học, gốc Huế, giọng nói nhẹ nhàng. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000013',
  'Trần Dũng Hải', 'male',
  1972, 6, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 2,
  NULL,
  'Con trai thứ ông Dũng. Thuyền trưởng tàu đánh bắt xa bờ. Theo nghề biển của cha, người gan dạ. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000014',
  'Nguyễn Thị Thu Thủy', 'female',
  1975, 8, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Hải. Chủ quán ăn đặc sản biển, nổi tiếng với món cá nướng muối ớt. [Hư cấu]',
  NULL
),
-- === Con ông Kiên & bà Thu Hà (nhánh Hà Nội) ===
(
  '14000000-0000-0000-0000-000000000015',
  'Trần Kiên Hùng', 'male',
  1965, 4, 1,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 1,
  NULL,
  'Con trai ông Kiên. Giám đốc công ty công nghệ, đam mê startup. Rót vốn cho nhiều dự án công nghệ trẻ. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000016',
  'Đoàn Thị Phương Thảo', 'female',
  1968, 12, 12,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Hùng. Quản lý nhân sự, nổi tiếng giỏi giao tiếp và xây dựng văn hóa doanh nghiệp. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000017',
  'Trần Kiên Thủy', 'female',
  1968, 7, 7,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 2,
  NULL,
  'Con gái ông Kiên. Nhà nghiên cứu lịch sử, đang viết luận án về dòng họ Trần tại Thanh Hóa. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000018',
  'Vũ Minh Quân', 'male',
  1965, 9, 14,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Chồng cô Thủy. Nhà thơ tự do kiêm giáo viên dạy Văn. Hay đọc thơ trong các buổi họp họ. [Hư cấu]',
  NULL
),
-- === Con ông Phát & bà Kim Hoa (nhánh HCM) ===
(
  '14000000-0000-0000-0000-000000000019',
  'Trần Phát Hưng', 'male',
  1972, 11, 28,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 1,
  NULL,
  'Con trai ông Phát. Kinh doanh bất động sản kế thừa từ cha. Hay du lịch nước ngoài kết hợp tìm kiếm cơ hội đầu tư. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000020',
  'Tống Thị Mỹ Linh', 'female',
  1975, 6, 6,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Hưng. Interior designer, sở hữu studio thiết kế nội thất riêng. Người thẩm mỹ tinh tế. [Hư cấu]',
  NULL
),
-- === Con bà Thảo & ông Đức (nhánh Thanh Hóa) ===
(
  '14000000-0000-0000-0000-000000000021',
  'Cao Trần Lâm', 'male',
  1970, 2, 2,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 1,
  NULL,
  'Con trai bà Thảo, mang họ đôi Cao Trần. Kỹ sư nông nghiệp, gắn bó với vùng đất quê nhà Thanh Hóa. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000022',
  'Nguyễn Thị Lụa', 'female',
  1973, 5, 5,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Lâm. Dược sĩ nhà thuốc làng, được bà con tin yêu và hay khám bệnh miễn phí cho người nghèo. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000023',
  'Cao Trần Liên', 'female',
  1973, 10, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 2,
  NULL,
  'Con gái bà Thảo. Cô giáo mầm non tại Thanh Hóa. Người hiền lành, yêu trẻ em và hay tổ chức hoạt động ngoại khóa. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000024',
  'Lê Văn Thắng', 'male',
  1970, 12, 30,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Chồng cô Liên. Thợ mộc lành nghề, tiếp nối truyền thống nghề gỗ của vùng. [Hư cấu]',
  NULL
),
-- Con nuôi (adopted) — test adopted_child relationship
(
  '14000000-0000-0000-0000-000000000025',
  'Trần Hòa Sáng', 'male',
  1958, 1, 1,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, NULL,
  NULL,
  'Con nuôi của bà Nga (con gái liệt sĩ Hòa). Được bà Nga nhận nuôi từ nhỏ, lớn lên gắn bó với gia đình như máu mủ. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000026',
  'Đặng Thị Hồng Nhung', 'female',
  1960, 7, 17,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Sáng. Y tá làng nghỉ hưu. Người ân cần, hay giúp đỡ bà con trong xóm. [Hư cấu]',
  NULL
);


-- ============================================================
-- ĐỜI 5 — ANH CHỊ EM (Sinh ~1985-2000)
-- ~30 người con ruột, vài trường hợp không lập gia đình
-- ============================================================
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
-- Con anh An & bà Thanh Vân
(
  '15000000-0000-0000-0000-000000000001',
  'Trần An Khoa', 'male',
  1988, 5, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai trưởng anh An. Nghiên cứu sinh Toán học tại Pháp. Thừa hưởng đam mê toán học của cha. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000002',
  'Isabelle Nguyen', 'female',
  1990, 3, 22,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ Pháp-Việt của anh Khoa. Kỹ sư phần mềm tại Paris. Đang học tiếng Việt để nói chuyện với ông bà. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000003',
  'Trần An Linh', 'female',
  1991, 8, 8,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh An. Bác sĩ nội trú, đang chuyên sâu về ung bướu. Tính cách điềm tĩnh như bố. [Hư cấu]',
  NULL
),
-- Con anh Minh & bà Cúc
(
  '15000000-0000-0000-0000-000000000004',
  'Trần Minh Đức', 'male',
  1990, 1, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Minh. Kỹ sư điện lực, đang làm tại dự án điện gió ngoài khơi. Mê leo núi cuối tuần. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000005',
  'Trần Minh Thư', 'female',
  1993, 4, 4,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Minh. Thiết kế đồ họa tự do, sở hữu kênh YouTube về lịch sử mỹ thuật Việt Nam. [Hư cấu]',
  NULL
),
-- Con cô Lê & ông Nhân
(
  '15000000-0000-0000-0000-000000000006',
  'Bùi Trần Tâm', 'male',
  1992, 7, 21,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai cô Lê, mang họ đôi Bùi Trần. Phóng viên ảnh chiến trường, từng tác nghiệp tại nhiều điểm nóng. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000007',
  'Nguyễn Thị Hà My', 'female',
  1994, 9, 9,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Tâm. Biên tập viên tin tức. Hai vợ chồng quen nhau trong một chuyến tác nghiệp. [Hư cấu]',
  NULL
),
-- Con anh Tuấn & bà Diệu Linh
(
  '15000000-0000-0000-0000-000000000008',
  'Đinh Trần Phúc', 'male',
  1989, 11, 30,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Tuấn. Luật sư kế thừa, đang theo chuyên ngành luật quốc tế. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000009',
  'Đinh Trần Uyên', 'female',
  1992, 3, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Tuấn. Thẩm phán tòa án quận, người trẻ nhất được bổ nhiệm trong năm đó. [Hư cấu]',
  NULL
),
-- Con cô Mai & ông Sơn
(
  '15000000-0000-0000-0000-000000000010',
  'Trần Trần Bảo', 'male',
  1991, 6, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai cô Mai. Đầu bếp sáng tạo, sáng lập thương hiệu nhà hàng fusion Việt-Nhật. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000011',
  'Trần Trần Ngọc', 'female',
  1994, 12, 12,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái cô Mai. Dinh dưỡng viên lâm sàng, đang công tác tại bệnh viện nhi. [Hư cấu]',
  NULL
),
-- Con anh Khoa & bà Yến (nhánh Đà Nẵng)
(
  '15000000-0000-0000-0000-000000000012',
  'Trần Khoa Lâm', 'male',
  1993, 9, 9,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Khoa. Kỹ sư nuôi trồng thủy sản. Đang nghiên cứu mô hình nuôi tôm thẻ công nghệ cao. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000013',
  'Trần Khoa Nhi', 'female',
  1997, 5, 5,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Khoa. Sinh viên Y Dược năm cuối. Mơ ước mở phòng khám tại quê nhà. [Hư cấu]',
  NULL
),
-- Con anh Hải & bà Thu Thủy (nhánh Đà Nẵng)
(
  '15000000-0000-0000-0000-000000000014',
  'Trần Hải Long', 'male',
  1998, 2, 28,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Hải. Học Hàng hải, dự định nối nghiệp cha đi biển xa. Bơi giỏi từ nhỏ. [Hư cấu]',
  NULL
),
-- Con anh Hùng & bà Phương Thảo
(
  '15000000-0000-0000-0000-000000000015',
  'Trần Kiên Bách', 'male',
  1990, 4, 4,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Hùng. Product manager tại công ty công nghệ của cha. Từng du học Singapore. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000016',
  'Trần Kiên Châu', 'female',
  1993, 7, 17,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Hùng. Nhà sáng lập startup về edtech, từng lọt top Forbes Under 30 Việt Nam. [Hư cấu]',
  NULL
),
-- Con cô Thủy & ông Quân
(
  '15000000-0000-0000-0000-000000000017',
  'Vũ Trần Hoài', 'female',
  1992, 11, 11,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con gái cô Thủy. Nhà văn trẻ, đã xuất bản 3 tập truyện ngắn về đề tài gia đình và ký ức. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000018',
  'Vũ Trần Hưng', 'male',
  1995, 8, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con trai cô Thủy. Nhạc sĩ indie, sáng tác nhiều bài hát về quê hương được giới trẻ yêu thích. [Hư cấu]',
  NULL
),
-- Con anh Hưng & bà Mỹ Linh (nhánh HCM)
(
  '15000000-0000-0000-0000-000000000019',
  'Trần Phát Kiệt', 'male',
  1995, 12, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Hưng. Đang học thạc sĩ Quản trị kinh doanh tại Singapore. Dự định về kế thừa công ty gia đình. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000020',
  'Trần Phát Liên', 'female',
  1999, 4, 16,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Hưng. Sinh viên Kiến trúc, đam mê thiết kế bền vững và thân thiện môi trường. [Hư cấu]',
  NULL
),
-- Con anh Lâm & bà Lụa (nhánh Thanh Hóa)
(
  '15000000-0000-0000-0000-000000000021',
  'Cao Trần Sơn', 'male',
  1994, 3, 3,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Lâm. Kỹ sư nông nghiệp như cha, đang nghiên cứu giống lúa chịu mặn. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000022',
  'Cao Trần Hoa', 'female',
  1997, 6, 6,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Lâm. Dược sĩ học việc tại nhà thuốc của mẹ. Đang lên kế hoạch mở thêm cơ sở mới. [Hư cấu]',
  NULL
),
-- Con cô Liên & ông Thắng (nhánh Thanh Hóa)
(
  '15000000-0000-0000-0000-000000000023',
  'Lê Trần Tùng', 'male',
  1996, 10, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai cô Liên. Thợ mộc kỹ thuật cao, đang học thêm về thiết kế nội thất. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000024',
  'Lê Trần Nga', 'female',
  2000, 2, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái cô Liên. Sinh viên Sư phạm mầm non, muốn theo nghề dạy trẻ của mẹ. [Hư cấu]',
  NULL
),
-- Con anh Sáng & bà Nhung (con nuôi đời 4)
(
  '15000000-0000-0000-0000-000000000025',
  'Trần Hòa Phúc', 'male',
  1985, 5, 25,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Sáng. Bộ đội xuất ngũ, hiện làm bảo vệ và quản lý nhà thờ dòng họ tại Thanh Hóa. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000026',
  'Trần Thị Yến Nhi', 'female',
  1988, 1, 1,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Phúc. Kế toán làng, người cẩn thận và chu đáo, được gia đình họ tin tưởng. [Hư cấu]',
  NULL
);


-- ============================================================
-- ĐỜI 6 — CÁC CHÁU (Sinh ~2010-2020)
-- ~20 người, phần lớn còn nhỏ tuổi
-- ============================================================
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
-- Con anh Khoa (Pháp) & Isabelle
(
  '16000000-0000-0000-0000-000000000001',
  'Trần Khoa Minh', 'male',
  2015, 7, 14,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  'Minh-Jean',
  'Con trai đầu, sinh tại Paris. Nói được 3 thứ tiếng: Việt, Pháp, Anh. Mê bóng đá và Lego. [Hư cấu]',
  NULL
),
(
  '16000000-0000-0000-0000-000000000002',
  'Trần Khoa Anh', 'female',
  2018, 11, 3,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 2,
  'Anh-Marie',
  'Con gái, sinh tại Paris. Đang học mẫu giáo, rất thích vẽ và tô màu. [Hư cấu]',
  NULL
),
-- Con anh Tâm & bà Hà My
(
  '16000000-0000-0000-0000-000000000003',
  'Bùi Trần Bình', 'male',
  2016, 3, 8,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Tâm. Học tiểu học, thích xem video về nhiếp ảnh của ông nội Nhân. [Hư cấu]',
  NULL
),
-- Con anh Phúc & bà Uyên (Đinh Trần Phúc - đời 5)
(
  '16000000-0000-0000-0000-000000000004',
  'Đinh Trần Tín', 'male',
  2015, 9, 9,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Phúc (luật sư). Học tiểu học giỏi, hứa hẹn theo nghề luật của gia đình. [Hư cấu]',
  NULL
),
-- Con anh Bảo & bà (Trần Trần Bảo)
(
  '16000000-0000-0000-0000-000000000005',
  'Trần Trần Mỹ', 'female',
  2017, 1, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con gái anh Bảo. Học mầm non, hay được bố cho vào bếp học nấu các món đơn giản. [Hư cấu]',
  NULL
),
-- Con anh Bách & bà (Trần Kiên Bách - đời 5)
(
  '16000000-0000-0000-0000-000000000006',
  'Trần Bách Nhân', 'male',
  2018, 6, 1,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Bách. Sinh tại Singapore, hay về Việt Nam dịp hè thăm ông bà. [Hư cấu]',
  NULL
),
-- Con anh Sơn (Cao Trần Sơn - đời 5)
(
  '16000000-0000-0000-0000-000000000007',
  'Cao Trần Đất', 'male',
  2019, 5, 5,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai đầu anh Sơn, đặt tên gắn với đất đai quê hương. Hay nghịch đất vườn cùng ông nội Lâm. [Hư cấu]',
  NULL
),
-- Con anh Tùng (Lê Trần Tùng - đời 5)
(
  '16000000-0000-0000-0000-000000000008',
  'Lê Trần Gỗ', 'male',
  2020, 8, 8,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Tùng, đặt tên gắn với nghề mộc truyền thống gia đình. [Hư cấu]',
  NULL
),
-- Con anh Hải Long (Trần Hải Long - đời 5)
(
  '16000000-0000-0000-0000-000000000009',
  'Trần Long Sóng', 'male',
  2020, 11, 11,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Long. Tên được đặt theo hình ảnh sóng biển gắn với nghề biển của gia đình. [Hư cấu]',
  NULL
),
-- Con anh Phúc đời 5 (Trần Hòa Phúc) & bà Yến Nhi
(
  '16000000-0000-0000-0000-000000000010',
  'Trần Phúc Thành', 'male',
  2012, 4, 4,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Phúc (bảo vệ nhà thờ họ). Hay theo ông nội Sáng học chữ Hán Nôm trong sách dòng họ. [Hư cấu]',
  NULL
),
-- Con anh Đức (Trần Minh Đức - đời 5)
(
  '16000000-0000-0000-0000-000000000011',
  'Trần Đức Gió', 'male',
  2018, 1, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Đức, tên đặt lấy cảm hứng từ công việc điện gió của bố. [Hư cấu]',
  NULL
),
-- Con cô Linh (Trần An Linh - đời 5)
(
  '16000000-0000-0000-0000-000000000012',
  'Trần An Bảo', 'female',
  2019, 7, 7,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con gái cô Linh. Bé nhỏ của gia đình, hay được ông bà An - Vân cưng chiều. [Hư cấu]',
  NULL
);


-- ============================================================
-- ĐỜI 7 — CHẮT (Sinh ~2020-2026)
-- Số lượng ít, đời mới nhất
-- ============================================================
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
(
  '17000000-0000-0000-0000-000000000001',
  'Trần Khoa Việt', 'male',
  2022, 9, 2,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 1,
  'Việt-Louis',
  'Con trai thứ ba anh Khoa & Isabelle tại Paris. Sinh đúng ngày Quốc khánh Việt Nam. [Hư cấu]',
  NULL
),
(
  '17000000-0000-0000-0000-000000000002',
  'Trần Bách Ân', 'female',
  2021, 3, 3,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 1,
  NULL,
  'Con gái anh Bách (Singapore). Mang hai dòng máu Việt. [Hư cấu]',
  NULL
),
(
  '17000000-0000-0000-0000-000000000003',
  'Cao Trần Xuân', 'male',
  2023, 1, 22,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 1,
  NULL,
  'Con trai thứ hai anh Sơn. Sinh đúng dịp Tết Nguyên Đán, cả họ đón mừng. [Hư cấu]',
  NULL
),
(
  '17000000-0000-0000-0000-000000000004',
  'Lê Trần Gốc', 'female',
  2023, 6, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 1,
  NULL,
  'Con gái anh Tùng. Tên Gốc gợi nhớ nghề gỗ và gốc rễ quê hương. [Hư cấu]',
  NULL
),
(
  '17000000-0000-0000-0000-000000000005',
  'Trần Long Triều', 'male',
  2024, 4, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 2,
  NULL,
  'Con trai thứ anh Hải Long. Sinh ra đã được ông nội Hải bồng bế ra ngắm biển lần đầu. [Hư cấu]',
  NULL
),
(
  '17000000-0000-0000-0000-000000000006',
  'Trần Phúc Nghĩa', 'male',
  2020, 8, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 2,
  NULL,
  'Con thứ anh Phúc (nhà thờ họ). Sinh đúng ngày Quốc khánh, được cả dòng họ gọi thân mật là "thằng Nghĩa". [Hư cấu]',
  NULL
),
(
  '17000000-0000-0000-0000-000000000007',
  'Trần Tâm Nhật', 'male',
  2021, 12, 12,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 1,
  NULL,
  'Con trai anh Tâm (phóng viên). Tên Nhật lấy cảm hứng từ ánh sáng — ý nghĩa cha mẹ gửi gắm. [Hư cấu]',
  NULL
),
(
  '17000000-0000-0000-0000-000000000008',
  'Trần Đức Lửa', 'female',
  2022, 7, 7,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 2,
  NULL,
  'Con gái anh Đức. Tên Lửa tiếp nối series tên gắn với năng lượng: Gió - Lửa. [Hư cấu]',
  NULL
);


-- ============================================================
-- THÔNG TIN RIÊNG TƯ
-- Bao phủ các thành viên đang sống ở các thế hệ 3, 4, 5
-- ============================================================
INSERT INTO person_details_private (person_id, phone_number, occupation, current_residence) VALUES
-- Đời 3
('13000000-0000-0000-0000-000000000003', '0912 xxx 031', 'Chuyên gia kinh tế (nghỉ hưu)', 'Đống Đa, Hà Nội'),
('13000000-0000-0000-0000-000000000007', '0913 xxx 032', 'Giám đốc doanh nghiệp', 'Cầu Giấy, Hà Nội'),
('13000000-0000-0000-0000-000000000008', '0914 xxx 033', 'Kế toán (nghỉ hưu)', 'Cầu Giấy, Hà Nội'),
('13000000-0000-0000-0000-000000000009', '0915 xxx 034', 'Y tá (nghỉ hưu)', 'TP. Thanh Hóa'),
('13000000-0000-0000-0000-000000000010', '0916 xxx 035', 'Kinh doanh bất động sản', 'Quận 1, TP.HCM'),
('13000000-0000-0000-0000-000000000011', '0917 xxx 036', 'Quản lý công ty gia đình', 'Quận 1, TP.HCM'),
('13000000-0000-0000-0000-000000000012', '0918 xxx 037', 'Kế toán (nghỉ hưu)', 'TP. Thanh Hóa'),
-- Đời 4
('14000000-0000-0000-0000-000000000001', '0919 xxx 041', 'Giảng viên ĐH Bách Khoa', 'Đống Đa, Hà Nội'),
('14000000-0000-0000-0000-000000000002', '0920 xxx 042', 'Bác sĩ sản khoa', 'Đống Đa, Hà Nội'),
('14000000-0000-0000-0000-000000000003', '0921 xxx 043', 'Kỹ sư điện lực (EVN)', 'Hoàn Kiếm, Hà Nội'),
('14000000-0000-0000-0000-000000000007', '0922 xxx 044', 'Luật sư điều hành', 'Ba Đình, Hà Nội'),
('14000000-0000-0000-0000-000000000011', '0923 xxx 045', 'Kỹ sư thủy sản', 'Sơn Trà, Đà Nẵng'),
('14000000-0000-0000-0000-000000000013', '0924 xxx 046', 'Thuyền trưởng tàu xa bờ', 'Ngũ Hành Sơn, Đà Nẵng'),
('14000000-0000-0000-0000-000000000015', '0925 xxx 047', 'Giám đốc công ty công nghệ', 'Tây Hồ, Hà Nội'),
('14000000-0000-0000-0000-000000000019', '0926 xxx 048', 'Kinh doanh bất động sản', 'Quận 2, TP.HCM'),
('14000000-0000-0000-0000-000000000021', '0927 xxx 049', 'Kỹ sư nông nghiệp', 'TP. Thanh Hóa'),
('14000000-0000-0000-0000-000000000022', '0928 xxx 050', 'Dược sĩ nhà thuốc', 'TP. Thanh Hóa'),
-- Đời 5
('15000000-0000-0000-0000-000000000001', '0929 xxx 051', 'Nghiên cứu sinh Toán học', 'Paris, Pháp'),
('15000000-0000-0000-0000-000000000004', '0930 xxx 052', 'Kỹ sư điện gió', 'Bình Thuận'),
('15000000-0000-0000-0000-000000000006', '0931 xxx 053', 'Phóng viên ảnh', 'Hoàn Kiếm, Hà Nội'),
('15000000-0000-0000-0000-000000000008', '0932 xxx 054', 'Luật sư quốc tế', 'Ba Đình, Hà Nội'),
('15000000-0000-0000-0000-000000000010', '0933 xxx 055', 'Đầu bếp / Chủ nhà hàng', 'Quận 3, TP.HCM'),
('15000000-0000-0000-0000-000000000015', '0934 xxx 056', 'Product Manager', 'Quận 7, TP.HCM'),
('15000000-0000-0000-0000-000000000016', '0935 xxx 057', 'CEO startup edtech', 'Hoàn Kiếm, Hà Nội'),
('15000000-0000-0000-0000-000000000019', '0936 xxx 058', 'Học viên MBA', 'Singapore'),
('15000000-0000-0000-0000-000000000021', '0937 xxx 059', 'Kỹ sư nông nghiệp (nghiên cứu)', 'TP. Thanh Hóa'),
('15000000-0000-0000-0000-000000000025', '0938 xxx 060', 'Bảo vệ / Quản lý nhà thờ họ', 'TP. Thanh Hóa');


-- ============================================================
-- QUAN HỆ GIA ĐÌNH
-- Quy ước: biological_child: person_a = Cha/Mẹ, person_b = Con
--           marriage: person_a & person_b là hai vợ chồng
--           adopted_child: person_a = Người nhận nuôi, person_b = Con nuôi
-- ============================================================

-- === ĐỜI 1: Hôn nhân tổ tiên ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('marriage',
 '11000000-0000-0000-0000-000000000001',
 '11000000-0000-0000-0000-000000000002',
 'Đôi vợ chồng khai sinh dòng họ Trần tại Thanh Hóa');

-- === ĐỜI 1 → ĐỜI 2 ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '11000000-0000-0000-0000-000000000001', '12000000-0000-0000-0000-000000000001', NULL),
('biological_child', '11000000-0000-0000-0000-000000000002', '12000000-0000-0000-0000-000000000001', NULL),
('biological_child', '11000000-0000-0000-0000-000000000001', '12000000-0000-0000-0000-000000000003', NULL),
('biological_child', '11000000-0000-0000-0000-000000000002', '12000000-0000-0000-0000-000000000003', NULL),
('biological_child', '11000000-0000-0000-0000-000000000001', '12000000-0000-0000-0000-000000000005', NULL),
('biological_child', '11000000-0000-0000-0000-000000000002', '12000000-0000-0000-0000-000000000005', NULL),
('biological_child', '11000000-0000-0000-0000-000000000001', '12000000-0000-0000-0000-000000000006', NULL),
('biological_child', '11000000-0000-0000-0000-000000000002', '12000000-0000-0000-0000-000000000006', NULL);

-- === ĐỜI 2: Hôn nhân ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('marriage', '12000000-0000-0000-0000-000000000001', '12000000-0000-0000-0000-000000000002', NULL),
('marriage', '12000000-0000-0000-0000-000000000003', '12000000-0000-0000-0000-000000000004', 'Liệt sĩ, hi sinh trước khi con cái trưởng thành'),
('marriage', '12000000-0000-0000-0000-000000000006', '12000000-0000-0000-0000-000000000007', NULL);

-- === ĐỜI 2 → ĐỜI 3: Con ông Lộc & bà Tươi ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '12000000-0000-0000-0000-000000000001', '13000000-0000-0000-0000-000000000001', NULL),
('biological_child', '12000000-0000-0000-0000-000000000002', '13000000-0000-0000-0000-000000000001', NULL),
('biological_child', '12000000-0000-0000-0000-000000000001', '13000000-0000-0000-0000-000000000003', NULL),
('biological_child', '12000000-0000-0000-0000-000000000002', '13000000-0000-0000-0000-000000000003', NULL),
('biological_child', '12000000-0000-0000-0000-000000000001', '13000000-0000-0000-0000-000000000005', NULL),
('biological_child', '12000000-0000-0000-0000-000000000002', '13000000-0000-0000-0000-000000000005', NULL);

-- === ĐỜI 2 → ĐỜI 3: Con liệt sĩ Hòa & bà Mận ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '12000000-0000-0000-0000-000000000003', '13000000-0000-0000-0000-000000000007', 'Cha hi sinh khi con còn nhỏ'),
('biological_child', '12000000-0000-0000-0000-000000000004', '13000000-0000-0000-0000-000000000007', NULL),
('biological_child', '12000000-0000-0000-0000-000000000003', '13000000-0000-0000-0000-000000000009', 'Cha hi sinh khi con còn nhỏ'),
('biological_child', '12000000-0000-0000-0000-000000000004', '13000000-0000-0000-0000-000000000009', NULL);

-- === ĐỜI 2 → ĐỜI 3: Con ông Vinh & bà Ngát ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '12000000-0000-0000-0000-000000000006', '13000000-0000-0000-0000-000000000010', NULL),
('biological_child', '12000000-0000-0000-0000-000000000007', '13000000-0000-0000-0000-000000000010', NULL),
('biological_child', '12000000-0000-0000-0000-000000000006', '13000000-0000-0000-0000-000000000012', NULL),
('biological_child', '12000000-0000-0000-0000-000000000007', '13000000-0000-0000-0000-000000000012', NULL);

-- === ĐỜI 3: Hôn nhân ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('marriage', '13000000-0000-0000-0000-000000000001', '13000000-0000-0000-0000-000000000002', NULL),
('marriage', '13000000-0000-0000-0000-000000000003', '13000000-0000-0000-0000-000000000004', NULL),
('marriage', '13000000-0000-0000-0000-000000000005', '13000000-0000-0000-0000-000000000006', NULL),
('marriage', '13000000-0000-0000-0000-000000000007', '13000000-0000-0000-0000-000000000008', NULL),
('marriage', '13000000-0000-0000-0000-000000000010', '13000000-0000-0000-0000-000000000011', NULL),
('marriage', '13000000-0000-0000-0000-000000000012', '13000000-0000-0000-0000-000000000013', NULL);

-- === ĐỜI 3 → ĐỜI 4: Con ông Bình & bà Nguyệt ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '13000000-0000-0000-0000-000000000001', '14000000-0000-0000-0000-000000000001', NULL),
('biological_child', '13000000-0000-0000-0000-000000000002', '14000000-0000-0000-0000-000000000001', NULL),
('biological_child', '13000000-0000-0000-0000-000000000001', '14000000-0000-0000-0000-000000000003', NULL),
('biological_child', '13000000-0000-0000-0000-000000000002', '14000000-0000-0000-0000-000000000003', NULL),
('biological_child', '13000000-0000-0000-0000-000000000001', '14000000-0000-0000-0000-000000000005', NULL),
('biological_child', '13000000-0000-0000-0000-000000000002', '14000000-0000-0000-0000-000000000005', NULL);

-- === ĐỜI 3 → ĐỜI 4: Con bà Hạnh & ông Hùng ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '13000000-0000-0000-0000-000000000003', '14000000-0000-0000-0000-000000000007', NULL),
('biological_child', '13000000-0000-0000-0000-000000000004', '14000000-0000-0000-0000-000000000007', NULL),
('biological_child', '13000000-0000-0000-0000-000000000003', '14000000-0000-0000-0000-000000000009', NULL),
('biological_child', '13000000-0000-0000-0000-000000000004', '14000000-0000-0000-0000-000000000009', NULL);

-- === ĐỜI 3 → ĐỜI 4: Con ông Dũng & bà Bích (Đà Nẵng) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '13000000-0000-0000-0000-000000000005', '14000000-0000-0000-0000-000000000011', NULL),
('biological_child', '13000000-0000-0000-0000-000000000006', '14000000-0000-0000-0000-000000000011', NULL),
('biological_child', '13000000-0000-0000-0000-000000000005', '14000000-0000-0000-0000-000000000013', NULL),
('biological_child', '13000000-0000-0000-0000-000000000006', '14000000-0000-0000-0000-000000000013', NULL);

-- === ĐỜI 3 → ĐỜI 4: Con ông Kiên & bà Thu Hà (Hà Nội) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '13000000-0000-0000-0000-000000000007', '14000000-0000-0000-0000-000000000015', NULL),
('biological_child', '13000000-0000-0000-0000-000000000008', '14000000-0000-0000-0000-000000000015', NULL),
('biological_child', '13000000-0000-0000-0000-000000000007', '14000000-0000-0000-0000-000000000017', NULL),
('biological_child', '13000000-0000-0000-0000-000000000008', '14000000-0000-0000-0000-000000000017', NULL);

-- === ĐỜI 3 → ĐỜI 4: Con ông Phát & bà Kim Hoa (HCM) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '13000000-0000-0000-0000-000000000010', '14000000-0000-0000-0000-000000000019', NULL),
('biological_child', '13000000-0000-0000-0000-000000000011', '14000000-0000-0000-0000-000000000019', NULL);

-- === ĐỜI 3 → ĐỜI 4: Con bà Thảo & ông Đức (Thanh Hóa) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '13000000-0000-0000-0000-000000000012', '14000000-0000-0000-0000-000000000021', NULL),
('biological_child', '13000000-0000-0000-0000-000000000013', '14000000-0000-0000-0000-000000000021', NULL),
('biological_child', '13000000-0000-0000-0000-000000000012', '14000000-0000-0000-0000-000000000023', NULL),
('biological_child', '13000000-0000-0000-0000-000000000013', '14000000-0000-0000-0000-000000000023', NULL);

-- === ĐỜI 3 → ĐỜI 4: Con nuôi của bà Nga ===
-- adopted_child: bà Nga nhận nuôi anh Sáng
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('adopted_child',
 '13000000-0000-0000-0000-000000000009',
 '14000000-0000-0000-0000-000000000025',
 'Nhận nuôi từ năm 1960. Anh Sáng lớn lên gắn bó như con đẻ, thay mẹ nuôi trông nom nhà thờ họ');

-- === ĐỜI 4: Hôn nhân ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('marriage', '14000000-0000-0000-0000-000000000001', '14000000-0000-0000-0000-000000000002', NULL),
('marriage', '14000000-0000-0000-0000-000000000003', '14000000-0000-0000-0000-000000000004', NULL),
('marriage', '14000000-0000-0000-0000-000000000005', '14000000-0000-0000-0000-000000000006', NULL),
('marriage', '14000000-0000-0000-0000-000000000007', '14000000-0000-0000-0000-000000000008', NULL),
('marriage', '14000000-0000-0000-0000-000000000009', '14000000-0000-0000-0000-000000000010', NULL),
('marriage', '14000000-0000-0000-0000-000000000011', '14000000-0000-0000-0000-000000000012', NULL),
('marriage', '14000000-0000-0000-0000-000000000013', '14000000-0000-0000-0000-000000000014', NULL),
('marriage', '14000000-0000-0000-0000-000000000015', '14000000-0000-0000-0000-000000000016', NULL),
('marriage', '14000000-0000-0000-0000-000000000017', '14000000-0000-0000-0000-000000000018', NULL),
('marriage', '14000000-0000-0000-0000-000000000019', '14000000-0000-0000-0000-000000000020', NULL),
('marriage', '14000000-0000-0000-0000-000000000021', '14000000-0000-0000-0000-000000000022', NULL),
('marriage', '14000000-0000-0000-0000-000000000023', '14000000-0000-0000-0000-000000000024', NULL),
('marriage', '14000000-0000-0000-0000-000000000025', '14000000-0000-0000-0000-000000000026', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh An & bà Vân ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000001', '15000000-0000-0000-0000-000000000001', NULL),
('biological_child', '14000000-0000-0000-0000-000000000002', '15000000-0000-0000-0000-000000000001', NULL),
('biological_child', '14000000-0000-0000-0000-000000000001', '15000000-0000-0000-0000-000000000003', NULL),
('biological_child', '14000000-0000-0000-0000-000000000002', '15000000-0000-0000-0000-000000000003', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh Minh & bà Cúc ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000003', '15000000-0000-0000-0000-000000000004', NULL),
('biological_child', '14000000-0000-0000-0000-000000000004', '15000000-0000-0000-0000-000000000004', NULL),
('biological_child', '14000000-0000-0000-0000-000000000003', '15000000-0000-0000-0000-000000000005', NULL),
('biological_child', '14000000-0000-0000-0000-000000000004', '15000000-0000-0000-0000-000000000005', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con cô Lê & ông Nhân ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000005', '15000000-0000-0000-0000-000000000006', NULL),
('biological_child', '14000000-0000-0000-0000-000000000006', '15000000-0000-0000-0000-000000000006', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh Tuấn & bà Diệu Linh ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000007', '15000000-0000-0000-0000-000000000008', NULL),
('biological_child', '14000000-0000-0000-0000-000000000008', '15000000-0000-0000-0000-000000000008', NULL),
('biological_child', '14000000-0000-0000-0000-000000000007', '15000000-0000-0000-0000-000000000009', NULL),
('biological_child', '14000000-0000-0000-0000-000000000008', '15000000-0000-0000-0000-000000000009', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con cô Mai & ông Sơn ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000009', '15000000-0000-0000-0000-000000000010', NULL),
('biological_child', '14000000-0000-0000-0000-000000000010', '15000000-0000-0000-0000-000000000010', NULL),
('biological_child', '14000000-0000-0000-0000-000000000009', '15000000-0000-0000-0000-000000000011', NULL),
('biological_child', '14000000-0000-0000-0000-000000000010', '15000000-0000-0000-0000-000000000011', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh Khoa & bà Yến (Đà Nẵng) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000011', '15000000-0000-0000-0000-000000000012', NULL),
('biological_child', '14000000-0000-0000-0000-000000000012', '15000000-0000-0000-0000-000000000012', NULL),
('biological_child', '14000000-0000-0000-0000-000000000011', '15000000-0000-0000-0000-000000000013', NULL),
('biological_child', '14000000-0000-0000-0000-000000000012', '15000000-0000-0000-0000-000000000013', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh Hải & bà Thu Thủy (Đà Nẵng) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000013', '15000000-0000-0000-0000-000000000014', NULL),
('biological_child', '14000000-0000-0000-0000-000000000014', '15000000-0000-0000-0000-000000000014', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh Hùng & bà Phương Thảo ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000015', '15000000-0000-0000-0000-000000000015', NULL),
('biological_child', '14000000-0000-0000-0000-000000000016', '15000000-0000-0000-0000-000000000015', NULL),
('biological_child', '14000000-0000-0000-0000-000000000015', '15000000-0000-0000-0000-000000000016', NULL),
('biological_child', '14000000-0000-0000-0000-000000000016', '15000000-0000-0000-0000-000000000016', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con cô Thủy & ông Quân ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000017', '15000000-0000-0000-0000-000000000017', NULL),
('biological_child', '14000000-0000-0000-0000-000000000018', '15000000-0000-0000-0000-000000000017', NULL),
('biological_child', '14000000-0000-0000-0000-000000000017', '15000000-0000-0000-0000-000000000018', NULL),
('biological_child', '14000000-0000-0000-0000-000000000018', '15000000-0000-0000-0000-000000000018', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh Hưng & bà Mỹ Linh (HCM) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000019', '15000000-0000-0000-0000-000000000019', NULL),
('biological_child', '14000000-0000-0000-0000-000000000020', '15000000-0000-0000-0000-000000000019', NULL),
('biological_child', '14000000-0000-0000-0000-000000000019', '15000000-0000-0000-0000-000000000020', NULL),
('biological_child', '14000000-0000-0000-0000-000000000020', '15000000-0000-0000-0000-000000000020', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh Lâm & bà Lụa (Thanh Hóa) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000021', '15000000-0000-0000-0000-000000000021', NULL),
('biological_child', '14000000-0000-0000-0000-000000000022', '15000000-0000-0000-0000-000000000021', NULL),
('biological_child', '14000000-0000-0000-0000-000000000021', '15000000-0000-0000-0000-000000000022', NULL),
('biological_child', '14000000-0000-0000-0000-000000000022', '15000000-0000-0000-0000-000000000022', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con cô Liên & ông Thắng (Thanh Hóa) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000023', '15000000-0000-0000-0000-000000000023', NULL),
('biological_child', '14000000-0000-0000-0000-000000000024', '15000000-0000-0000-0000-000000000023', NULL),
('biological_child', '14000000-0000-0000-0000-000000000023', '15000000-0000-0000-0000-000000000024', NULL),
('biological_child', '14000000-0000-0000-0000-000000000024', '15000000-0000-0000-0000-000000000024', NULL);

-- === ĐỜI 4 → ĐỜI 5: Con anh Sáng & bà Nhung (con nuôi) ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000025', '15000000-0000-0000-0000-000000000025', NULL),
('biological_child', '14000000-0000-0000-0000-000000000026', '15000000-0000-0000-0000-000000000025', NULL);

-- === ĐỜI 5: Hôn nhân ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('marriage', '15000000-0000-0000-0000-000000000001', '15000000-0000-0000-0000-000000000002', 'Kết hôn tại Paris năm 2013'),
('marriage', '15000000-0000-0000-0000-000000000006', '15000000-0000-0000-0000-000000000007', 'Gặp nhau trong chuyến tác nghiệp'),
('marriage', '15000000-0000-0000-0000-000000000025', '15000000-0000-0000-0000-000000000026', NULL);

-- === ĐỜI 5 → ĐỜI 6 ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
-- Con anh Khoa & Isabelle
('biological_child', '15000000-0000-0000-0000-000000000001', '16000000-0000-0000-0000-000000000001', 'Sinh tại Paris'),
('biological_child', '15000000-0000-0000-0000-000000000002', '16000000-0000-0000-0000-000000000001', NULL),
('biological_child', '15000000-0000-0000-0000-000000000001', '16000000-0000-0000-0000-000000000002', NULL),
('biological_child', '15000000-0000-0000-0000-000000000002', '16000000-0000-0000-0000-000000000002', NULL),
-- Con anh Tâm & bà Hà My
('biological_child', '15000000-0000-0000-0000-000000000006', '16000000-0000-0000-0000-000000000003', NULL),
('biological_child', '15000000-0000-0000-0000-000000000007', '16000000-0000-0000-0000-000000000003', NULL),
-- Con anh Phúc (luật sư - Đinh Trần Phúc)
('biological_child', '15000000-0000-0000-0000-000000000008', '16000000-0000-0000-0000-000000000004', NULL),
-- Con anh Bảo (đầu bếp - Trần Trần Bảo)
('biological_child', '15000000-0000-0000-0000-000000000010', '16000000-0000-0000-0000-000000000005', NULL),
-- Con anh Bách (PM - Trần Kiên Bách)
('biological_child', '15000000-0000-0000-0000-000000000015', '16000000-0000-0000-0000-000000000006', 'Sinh tại Singapore'),
-- Con anh Sơn (kỹ sư NN - Cao Trần Sơn)
('biological_child', '15000000-0000-0000-0000-000000000021', '16000000-0000-0000-0000-000000000007', NULL),
-- Con anh Tùng (thợ mộc - Lê Trần Tùng)
('biological_child', '15000000-0000-0000-0000-000000000023', '16000000-0000-0000-0000-000000000008', NULL),
-- Con anh Long (Trần Hải Long)
('biological_child', '15000000-0000-0000-0000-000000000014', '16000000-0000-0000-0000-000000000009', NULL),
-- Con anh Phúc (nhà thờ họ - Trần Hòa Phúc)
('biological_child', '15000000-0000-0000-0000-000000000025', '16000000-0000-0000-0000-000000000010', NULL),
('biological_child', '15000000-0000-0000-0000-000000000026', '16000000-0000-0000-0000-000000000010', NULL),
-- Con anh Đức (điện gió - Trần Minh Đức)
('biological_child', '15000000-0000-0000-0000-000000000004', '16000000-0000-0000-0000-000000000011', NULL),
-- Con cô Linh (bác sĩ - Trần An Linh)
('biological_child', '15000000-0000-0000-0000-000000000003', '16000000-0000-0000-0000-000000000012', NULL);

-- === ĐỜI 6 → ĐỜI 7 ===
INSERT INTO relationships (type, person_a, person_b, note) VALUES
-- Con thứ ba anh Khoa & Isabelle
('biological_child', '15000000-0000-0000-0000-000000000001', '17000000-0000-0000-0000-000000000001', 'Sinh đúng Quốc khánh'),
('biological_child', '15000000-0000-0000-0000-000000000002', '17000000-0000-0000-0000-000000000001', NULL),
-- Con anh Bách (Singapore)
('biological_child', '15000000-0000-0000-0000-000000000015', '17000000-0000-0000-0000-000000000002', NULL),
-- Con thứ hai anh Sơn
('biological_child', '15000000-0000-0000-0000-000000000021', '17000000-0000-0000-0000-000000000003', 'Sinh đúng Tết Nguyên Đán'),
-- Con gái anh Tùng
('biological_child', '15000000-0000-0000-0000-000000000023', '17000000-0000-0000-0000-000000000004', NULL),
-- Con thứ hai anh Long
('biological_child', '15000000-0000-0000-0000-000000000014', '17000000-0000-0000-0000-000000000005', NULL),
-- Con thứ hai anh Phúc (nhà thờ họ)
('biological_child', '15000000-0000-0000-0000-000000000025', '17000000-0000-0000-0000-000000000006', NULL),
('biological_child', '15000000-0000-0000-0000-000000000026', '17000000-0000-0000-0000-000000000006', NULL),
-- Con anh Tâm (phóng viên)
('biological_child', '15000000-0000-0000-0000-000000000006', '17000000-0000-0000-0000-000000000007', NULL),
('biological_child', '15000000-0000-0000-0000-000000000007', '17000000-0000-0000-0000-000000000007', NULL),
-- Con thứ hai anh Đức
('biological_child', '15000000-0000-0000-0000-000000000004', '17000000-0000-0000-0000-000000000008', NULL);


-- ============================================================
-- CUSTOM EVENTS
-- Test bảng custom_events với đầy đủ cột
-- (created_by = NULL vì seed chạy ngoài context auth)
-- ============================================================
INSERT INTO custom_events (id, name, content, event_date, location, created_by) VALUES
(
  'e1000000-0000-0000-0000-000000000001',
  'Giỗ Tổ dòng họ Trần lần thứ 50',
  'Lễ giỗ tổ lớn nhất trong 50 năm. Toàn bộ các nhánh từ Hà Nội, Đà Nẵng, TP.HCM và Thanh Hóa quy tụ về. Tổng cộng hơn 80 thành viên tham dự. Có lễ tế tổ, tiệc họ và lễ trao học bổng khuyến học cho con cháu.',
  '2024-04-15',
  'Nhà thờ họ Trần, thôn Trần Xá, Thanh Hóa',
  NULL
),
(
  'e1000000-0000-0000-0000-000000000002',
  'Đám cưới Trần An Khoa & Isabelle Nguyen',
  'Lễ cưới kết hợp hai văn hóa Việt - Pháp. Hôn lễ diễn ra tại Paris với phù dâu phù rể từ cả hai gia đình. Gia đình bên Việt Nam tổ chức tiệc mừng tại Hà Nội sau đó một tuần.',
  '2013-06-22',
  'Mairie du 15e arrondissement, Paris, Pháp',
  NULL
),
(
  'e1000000-0000-0000-0000-000000000003',
  'Lễ truy điệu liệt sĩ Trần Công Hòa',
  'Lễ kỷ niệm 52 năm ngày hi sinh của liệt sĩ Trần Công Hòa. Gia đình dâng hương tại nghĩa trang liệt sĩ Quảng Trị. Con cháu từ nhiều tỉnh thành về dự.',
  '2024-04-30',
  'Nghĩa trang liệt sĩ quốc gia Trường Sơn, Quảng Trị',
  NULL
),
(
  'e1000000-0000-0000-0000-000000000004',
  'Họp mặt Tết Nguyên Đán — Nhánh Hà Nội',
  'Họp mặt thường niên nhánh Hà Nội dịp mồng 2 Tết. Địa điểm luân phiên, năm nay tại nhà anh Trần Bình An. Khoảng 30 người tham dự, có trò chơi dân gian và văn nghệ.',
  '2025-02-01',
  'Nhà anh Trần Bình An, Đống Đa, Hà Nội',
  NULL
),
(
  'e1000000-0000-0000-0000-000000000005',
  'Lễ tốt nghiệp tiến sĩ của Trần An Khoa',
  'Lễ nhận bằng Tiến sĩ Toán học tại Đại học Paris-Saclay. Cả gia đình từ Hà Nội sang dự lễ trao bằng. Ông bà Bình An lần đầu sang Pháp thăm con cháu.',
  '2019-11-20',
  'Université Paris-Saclay, Pháp',
  NULL
),
(
  'e1000000-0000-0000-0000-000000000006',
  'Khánh thành mộ phần ông Trần Công Tổ & bà Lê Thị Cội',
  'Công trình tôn tạo mộ phần tổ tiên hoàn thành sau 2 năm xây dựng. Kinh phí do toàn bộ con cháu đóng góp. Lễ khánh thành có đại diện các nhánh từ ba miền.',
  '2023-03-12',
  'Nghĩa trang dòng họ, thôn Trần Xá, Thanh Hóa',
  NULL
),
(
  'e1000000-0000-0000-0000-000000000007',
  'Sinh nhật lần thứ 80 của bà Vũ Thị Nguyệt',
  'Bữa tiệc mừng thọ bà Nguyệt tròn 80 tuổi. Hơn 50 con cháu quây quần, tổ chức tại nhà hàng tiệc. Các cháu từ Pháp gọi video về chúc mừng.',
  '2018-06-18',
  'Nhà hàng Hương Việt, Hà Đông, Hà Nội',
  NULL
),
(
  'e1000000-0000-0000-0000-000000000008',
  'Hội thảo ra mắt phần mềm Gia Pha OS',
  'Buổi giới thiệu phần mềm quản lý gia phả dòng họ do con cháu dòng họ Trần phát triển. Tham dự có đại diện các dòng họ lớn tại Thanh Hóa và Hà Nội.',
  '2025-05-20',
  'Hội trường UBND huyện Thiệu Hóa, Thanh Hóa',
  NULL
);


-- ============================================================
-- END OF SEED
-- Dòng họ Trần (hư cấu):
--   7 đời | ~152 thành viên
--   Nhánh Bắc (Hà Nội, Thanh Hóa) + Nhánh Trung (Đà Nẵng) + Nhánh Nam (TP.HCM) + Nhánh Kiều (Paris, Singapore)
--   Bao phủ: persons (đủ cột), person_details_private,
--            relationships (marriage/biological_child/adopted_child + note),
--            custom_events
-- Tất cả tên, số điện thoại, địa chỉ đều là HƯ CẤU
-- ============================================================


-- ============================================================
-- BỔ SUNG — Mở rộng đời 3, 4, 5 để đạt ~150 thành viên
-- ============================================================

-- === Bổ sung đời 3: Con bà Thị Lan (đời 2 - con gái ông Tổ) ===
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
(
  '13000000-0000-0000-0000-000000000014',
  'Lưu Đức Ngọc', 'male',
  1939, 11, 5,  2016, 3, 20,  2016, 2, 12,
  TRUE, TRUE, 3, NULL,
  NULL,
  'Chồng của bà Thị Lan (con gái ông Tổ đời 2). Làm thợ rèn, người cần cù và khỏe mạnh. [Hư cấu]',
  'Nghĩa trang xã Thiệu Hóa, Thanh Hóa'
),
(
  '13000000-0000-0000-0000-000000000015',
  'Lưu Trần Thắng', 'male',
  1940, 4, 14,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 3, 1,
  NULL,
  'Con trai bà Lan, mang họ đôi Lưu Trần. Làm ruộng, gắn bó với quê hương Thanh Hóa suốt đời. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000016',
  'Trần Thị Chiều', 'female',
  1943, 7, 7,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 3, NULL,
  NULL,
  'Vợ ông Thắng. Nông dân chất phác, nuôi dạy con cái chu đáo dù hoàn cảnh khó khăn. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000017',
  'Lưu Trần Nga', 'female',
  1944, 2, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 3, 2,
  NULL,
  'Con gái bà Lan. Giáo viên mầm non nghỉ hưu. Người vui vẻ, hay kể chuyện cổ tích cho cháu nghe. [Hư cấu]',
  NULL
),
(
  '13000000-0000-0000-0000-000000000018',
  'Mai Văn Quý', 'male',
  1941, 9, 9,  2018, 12, 1,  2018, 10, 24,
  TRUE, TRUE, 3, NULL,
  NULL,
  'Chồng cô Nga. Thợ xây lành nghề. Qua đời sau một tai nạn lao động. [Hư cấu]',
  'Nghĩa trang xã Thiệu Hóa, Thanh Hóa'
);

-- Quan hệ bà Lan (đời 2) → đời 3
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('marriage', '12000000-0000-0000-0000-000000000005', '13000000-0000-0000-0000-000000000014', NULL),
('biological_child', '12000000-0000-0000-0000-000000000005', '13000000-0000-0000-0000-000000000015', NULL),
('biological_child', '13000000-0000-0000-0000-000000000014', '13000000-0000-0000-0000-000000000015', NULL),
('biological_child', '12000000-0000-0000-0000-000000000005', '13000000-0000-0000-0000-000000000017', NULL),
('biological_child', '13000000-0000-0000-0000-000000000014', '13000000-0000-0000-0000-000000000017', NULL),
('marriage', '13000000-0000-0000-0000-000000000015', '13000000-0000-0000-0000-000000000016', NULL),
('marriage', '13000000-0000-0000-0000-000000000017', '13000000-0000-0000-0000-000000000018', NULL);

-- === Bổ sung đời 4: Con ông Thắng & bà Chiều ===
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
(
  '14000000-0000-0000-0000-000000000027',
  'Lưu Trần Bắc', 'male',
  1965, 11, 1,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 1,
  NULL,
  'Con trai ông Thắng. Làm công nhân cơ khí, hiện là tổ trưởng tổ sản xuất tại nhà máy. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000028',
  'Hoàng Thị Mơ', 'female',
  1968, 3, 3,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Bắc. Thợ may gia công, khéo tay và chịu khó. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000029',
  'Lưu Trần Nam', 'male',
  1968, 6, 6,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 2,
  NULL,
  'Con trai thứ ông Thắng. Lái xe tải đường dài, đi khắp các tỉnh miền Bắc và Trung. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000030',
  'Ngô Thị Hương', 'female',
  1970, 8, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Nam. Bán hàng tạp hóa, người nhanh nhẹn và thạo tính toán. [Hư cấu]',
  NULL
);

-- Con cô Nga (đời 3) & ông Quý
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
(
  '14000000-0000-0000-0000-000000000031',
  'Mai Trần Phương', 'female',
  1969, 4, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 1,
  NULL,
  'Con gái cô Nga (đời 3), mang họ đôi Mai Trần. Cô giáo tiểu học, tính cách vui vẻ như mẹ. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000032',
  'Đỗ Văn Bộ', 'male',
  1966, 12, 30,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Chồng cô Phương. Thợ điện dân dụng, hay giúp đỡ bà con trong xóm. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000033',
  'Mai Trần Tân', 'male',
  1972, 7, 7,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 2,
  NULL,
  'Con trai cô Nga. Làm bảo hiểm, hay đi lại Thanh Hóa - Hà Nội. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000034',
  'Lê Thị Hồng', 'female',
  1974, 2, 14,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Tân. Thu ngân siêu thị, sống giản dị và tiết kiệm. [Hư cấu]',
  NULL
);

-- Quan hệ đời 3 → đời 4 (nhánh Lưu Trần)
INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '13000000-0000-0000-0000-000000000015', '14000000-0000-0000-0000-000000000027', NULL),
('biological_child', '13000000-0000-0000-0000-000000000016', '14000000-0000-0000-0000-000000000027', NULL),
('biological_child', '13000000-0000-0000-0000-000000000015', '14000000-0000-0000-0000-000000000029', NULL),
('biological_child', '13000000-0000-0000-0000-000000000016', '14000000-0000-0000-0000-000000000029', NULL),
('biological_child', '13000000-0000-0000-0000-000000000017', '14000000-0000-0000-0000-000000000031', NULL),
('biological_child', '13000000-0000-0000-0000-000000000018', '14000000-0000-0000-0000-000000000031', NULL),
('biological_child', '13000000-0000-0000-0000-000000000017', '14000000-0000-0000-0000-000000000033', NULL),
('biological_child', '13000000-0000-0000-0000-000000000018', '14000000-0000-0000-0000-000000000033', NULL),
('marriage', '14000000-0000-0000-0000-000000000027', '14000000-0000-0000-0000-000000000028', NULL),
('marriage', '14000000-0000-0000-0000-000000000029', '14000000-0000-0000-0000-000000000030', NULL),
('marriage', '14000000-0000-0000-0000-000000000031', '14000000-0000-0000-0000-000000000032', NULL),
('marriage', '14000000-0000-0000-0000-000000000033', '14000000-0000-0000-0000-000000000034', NULL);

-- === Bổ sung đời 5: Con nhánh Lưu Trần ===
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
-- Con anh Bắc & bà Mơ
(
  '15000000-0000-0000-0000-000000000027',
  'Lưu Trần Công', 'male',
  1992, 1, 14,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Bắc. Kỹ thuật viên cơ khí, làm tại xưởng sản xuất phụ tùng ô tô. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000028',
  'Lưu Trần Tư', 'female',
  1995, 5, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Bắc. Nhân viên văn phòng, đang học thêm tiếng Anh buổi tối. [Hư cấu]',
  NULL
),
-- Con anh Nam & bà Hương
(
  '15000000-0000-0000-0000-000000000029',
  'Lưu Trần Đông', 'male',
  1994, 10, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Nam. Lái xe tải nối nghiệp bố, tuyến Bắc-Nam. Biết nhiều đặc sản các vùng. [Hư cấu]',
  NULL
),
-- Con cô Phương & ông Bộ
(
  '15000000-0000-0000-0000-000000000030',
  'Đỗ Trần Duyên', 'female',
  1993, 8, 8,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con gái cô Phương, mang họ đôi Đỗ Trần. Cô giáo tiểu học như mẹ, dạy tại trường làng. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000031',
  'Đỗ Trần Vinh', 'male',
  1996, 12, 12,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con trai cô Phương. Thợ điện lành nghề như bố, vừa nhận thầu điện dự án lớn. [Hư cấu]',
  NULL
),
-- Con anh Tân & bà Hồng
(
  '15000000-0000-0000-0000-000000000032',
  'Mai Trần Lộc', 'male',
  1997, 3, 21,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Tân. Sinh viên Kinh tế vừa ra trường, đang làm nhân viên bảo hiểm. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000033',
  'Mai Trần An', 'female',
  2000, 6, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Tân. Học sinh lớp 12, định thi vào ngành Dược. [Hư cấu]',
  NULL
),
-- Bổ sung thêm con đời 5 từ các nhánh còn thiếu
-- Con thêm của anh Minh Đức (điện gió) đời 5 có vợ
(
  '15000000-0000-0000-0000-000000000034',
  'Trần Thị Thu Hương', 'female',
  1992, 9, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Trần Minh Đức. Kỹ sư môi trường, cùng chí hướng với chồng về năng lượng tái tạo. [Hư cấu]',
  NULL
),
-- Vợ thêm của anh Bách (Trần Kiên Bách đời 5)
(
  '15000000-0000-0000-0000-000000000035',
  'Trần Ngọc Anh', 'female',
  1991, 4, 25,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Trần Kiên Bách. Chuyên gia tài chính, làm việc tại ngân hàng Singapore. [Hư cấu]',
  NULL
),
-- Vợ anh Trần Minh Thư đời 5 — thực ra cô ấy chưa lập gia đình, bổ sung thêm người mới
-- Chồng cô Linh (Trần An Linh - bác sĩ đời 5)
(
  '15000000-0000-0000-0000-000000000036',
  'Nguyễn Hoàng Nam', 'male',
  1989, 7, 7,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Chồng cô Trần An Linh. Bác sĩ ung thư, cùng khoa với vợ. Cặp đôi bác sĩ nổi tiếng trong bệnh viện. [Hư cấu]',
  NULL
);

-- Quan hệ đời 5 bổ sung
INSERT INTO relationships (type, person_a, person_b, note) VALUES
-- Con anh Bắc & bà Mơ → đời 5
('biological_child', '14000000-0000-0000-0000-000000000027', '15000000-0000-0000-0000-000000000027', NULL),
('biological_child', '14000000-0000-0000-0000-000000000028', '15000000-0000-0000-0000-000000000027', NULL),
('biological_child', '14000000-0000-0000-0000-000000000027', '15000000-0000-0000-0000-000000000028', NULL),
('biological_child', '14000000-0000-0000-0000-000000000028', '15000000-0000-0000-0000-000000000028', NULL),
-- Con anh Nam & bà Hương → đời 5
('biological_child', '14000000-0000-0000-0000-000000000029', '15000000-0000-0000-0000-000000000029', NULL),
('biological_child', '14000000-0000-0000-0000-000000000030', '15000000-0000-0000-0000-000000000029', NULL),
-- Con cô Phương & ông Bộ → đời 5
('biological_child', '14000000-0000-0000-0000-000000000031', '15000000-0000-0000-0000-000000000030', NULL),
('biological_child', '14000000-0000-0000-0000-000000000032', '15000000-0000-0000-0000-000000000030', NULL),
('biological_child', '14000000-0000-0000-0000-000000000031', '15000000-0000-0000-0000-000000000031', NULL),
('biological_child', '14000000-0000-0000-0000-000000000032', '15000000-0000-0000-0000-000000000031', NULL),
-- Con anh Tân & bà Hồng → đời 5
('biological_child', '14000000-0000-0000-0000-000000000033', '15000000-0000-0000-0000-000000000032', NULL),
('biological_child', '14000000-0000-0000-0000-000000000034', '15000000-0000-0000-0000-000000000032', NULL),
('biological_child', '14000000-0000-0000-0000-000000000033', '15000000-0000-0000-0000-000000000033', NULL),
('biological_child', '14000000-0000-0000-0000-000000000034', '15000000-0000-0000-0000-000000000033', NULL),
-- Hôn nhân bổ sung đời 5
('marriage', '15000000-0000-0000-0000-000000000004', '15000000-0000-0000-0000-000000000034', NULL),
('marriage', '15000000-0000-0000-0000-000000000015', '15000000-0000-0000-0000-000000000035', 'Kết hôn tại Singapore năm 2018'),
('marriage', '15000000-0000-0000-0000-000000000003', '15000000-0000-0000-0000-000000000036', NULL);

-- Private details bổ sung
INSERT INTO person_details_private (person_id, phone_number, occupation, current_residence) VALUES
('14000000-0000-0000-0000-000000000027', '0939 xxx 061', 'Tổ trưởng tổ cơ khí', 'TP. Thanh Hóa'),
('14000000-0000-0000-0000-000000000029', '0940 xxx 062', 'Lái xe tải đường dài', 'TP. Thanh Hóa'),
('14000000-0000-0000-0000-000000000031', '0941 xxx 063', 'Giáo viên tiểu học', 'Huyện Thiệu Hóa, Thanh Hóa'),
('15000000-0000-0000-0000-000000000034', '0942 xxx 064', 'Kỹ sư môi trường', 'Bình Thuận'),
('15000000-0000-0000-0000-000000000035', '0943 xxx 065', 'Chuyên gia tài chính', 'Singapore'),
('15000000-0000-0000-0000-000000000036', '0944 xxx 066', 'Bác sĩ ung thư', 'Đống Đa, Hà Nội');

-- Con đời 6 từ đời 5 bổ sung
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
(
  '16000000-0000-0000-0000-000000000013',
  'Trần Đức Nước', 'female',
  2020, 3, 22,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 2,
  NULL,
  'Con gái thứ hai anh Đức & bà Hương. Series tên: Gió - Nước (năng lượng tái tạo). [Hư cấu]',
  NULL
),
(
  '16000000-0000-0000-0000-000000000014',
  'Lưu Trần Nhỏ', 'male',
  2019, 11, 11,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Công (đời 5, nhánh Lưu Trần). Bé nghịch ngợm, hay chạy vào xưởng cơ khí của ông nội Bắc. [Hư cấu]',
  NULL
),
(
  '16000000-0000-0000-0000-000000000015',
  'Trần Bách Phúc', 'male',
  2020, 12, 25,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 2,
  NULL,
  'Con trai thứ hai anh Bách & bà Ngọc Anh (Singapore). Sinh đúng Giáng sinh. [Hư cấu]',
  NULL
);

INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '15000000-0000-0000-0000-000000000004', '16000000-0000-0000-0000-000000000013', NULL),
('biological_child', '15000000-0000-0000-0000-000000000034', '16000000-0000-0000-0000-000000000013', NULL),
('biological_child', '15000000-0000-0000-0000-000000000027', '16000000-0000-0000-0000-000000000014', NULL),
('biological_child', '15000000-0000-0000-0000-000000000015', '16000000-0000-0000-0000-000000000015', NULL),
('biological_child', '15000000-0000-0000-0000-000000000035', '16000000-0000-0000-0000-000000000015', NULL);

-- ============================================================
-- END SUPPLEMENT
-- ============================================================


-- ============================================================
-- BỔ SUNG LẦN 2 — Thêm ~30 người để đạt ~150
-- Tập trung mở rộng đời 4 (thêm con nhánh chưa có)
-- và đời 5 (vợ/chồng còn thiếu + thêm anh chị em)
-- ============================================================

-- === Bổ sung đời 4: Con bà Nga (đời 3) có thêm con thứ ba ===
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
(
  '14000000-0000-0000-0000-000000000035',
  'Mai Trần Thủy', 'female',
  1975, 10, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 3,
  NULL,
  'Con gái thứ ba cô Nga (đời 3). Nhân viên y tế tại trạm y tế xã, gắn bó với vùng quê. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000036',
  'Lê Minh Trung', 'male',
  1972, 5, 5,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Chồng cô Thủy. Công an xã, người nghiêm túc và được dân làng kính trọng. [Hư cấu]',
  NULL
),
-- Con thêm của ông Phát & bà Kim Hoa (nhánh HCM đời 3)
(
  '14000000-0000-0000-0000-000000000037',
  'Trần Phát Tài', 'male',
  1975, 4, 4,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 2,
  NULL,
  'Con trai thứ hai ông Phát (nhánh HCM). Nhập ngũ rồi xuất ngũ, hiện làm bảo vệ tòa nhà. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000038',
  'Võ Thị Xuân', 'female',
  1977, 2, 22,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Tài. Bán hàng online, kinh doanh thực phẩm sạch từ Thanh Hóa vào HCM. [Hư cấu]',
  NULL
),
-- Con của ông Bình & bà Nguyệt (đời 3) thêm đứa thứ tư
(
  '14000000-0000-0000-0000-000000000039',
  'Trần Bình Sơn', 'male',
  1970, 10, 3,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 4, 4,
  NULL,
  'Con trai út ông Bình. Thợ hàn kết cấu thép, hay theo các công trình xây dựng khắp nơi. [Hư cấu]',
  NULL
),
(
  '14000000-0000-0000-0000-000000000040',
  'Bùi Thị Lan Anh', 'female',
  1973, 6, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 4, NULL,
  NULL,
  'Vợ anh Sơn. Buôn bán vật liệu xây dựng nhỏ tại Thanh Hóa, hỗ trợ chồng theo các công trình. [Hư cấu]',
  NULL
);

INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '13000000-0000-0000-0000-000000000017', '14000000-0000-0000-0000-000000000035', NULL),
('biological_child', '13000000-0000-0000-0000-000000000018', '14000000-0000-0000-0000-000000000035', NULL),
('marriage', '14000000-0000-0000-0000-000000000035', '14000000-0000-0000-0000-000000000036', NULL),
('biological_child', '13000000-0000-0000-0000-000000000010', '14000000-0000-0000-0000-000000000037', NULL),
('biological_child', '13000000-0000-0000-0000-000000000011', '14000000-0000-0000-0000-000000000037', NULL),
('marriage', '14000000-0000-0000-0000-000000000037', '14000000-0000-0000-0000-000000000038', NULL),
('biological_child', '13000000-0000-0000-0000-000000000001', '14000000-0000-0000-0000-000000000039', NULL),
('biological_child', '13000000-0000-0000-0000-000000000002', '14000000-0000-0000-0000-000000000039', NULL),
('marriage', '14000000-0000-0000-0000-000000000039', '14000000-0000-0000-0000-000000000040', NULL);

-- === Bổ sung đời 5: Con các nhánh đời 4 còn thiếu ===
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
-- Con cô Thủy (Mai Trần Thủy đời 4) & ông Trung
(
  '15000000-0000-0000-0000-000000000037',
  'Lê Trần Hiếu', 'male',
  1997, 8, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai cô Thủy (đời 4). Sinh viên Y tế công cộng, muốn về xã phục vụ như mẹ. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000038',
  'Lê Trần Thảo', 'female',
  2000, 11, 11,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái cô Thủy. Học sinh lớp 12, đam mê vẽ tranh dân gian làng Hồ. [Hư cấu]',
  NULL
),
-- Con anh Tài & bà Xuân (nhánh HCM)
(
  '15000000-0000-0000-0000-000000000039',
  'Trần Tài Bình', 'male',
  1999, 7, 7,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Tài. Kỹ thuật viên IT bảo trì hệ thống, làm tại khu công nghệ cao TP.HCM. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000040',
  'Trần Tài Nga', 'female',
  2002, 3, 8,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Tài. Sinh viên Kinh tế năm 3, bán hàng online phụ mẹ từ năm lớp 10. [Hư cấu]',
  NULL
),
-- Con anh Sơn (Trần Bình Sơn đời 4) & bà Lan Anh
(
  '15000000-0000-0000-0000-000000000041',
  'Trần Sơn Thái', 'male',
  1998, 4, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 1,
  NULL,
  'Con trai anh Sơn. Thợ hàn lành nghề như bố, đang học thêm bằng hàn tiêu chuẩn quốc tế. [Hư cấu]',
  NULL
),
(
  '15000000-0000-0000-0000-000000000042',
  'Trần Sơn Linh', 'female',
  2001, 9, 19,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 5, 2,
  NULL,
  'Con gái anh Sơn. Học trường nghề kế toán, đang thực tập tại công ty vật liệu xây dựng. [Hư cấu]',
  NULL
),
-- Vợ của anh Trần Hải Long (đời 5) — trước chưa có
(
  '15000000-0000-0000-0000-000000000043',
  'Dương Thị Sóng', 'female',
  2000, 1, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Trần Hải Long. Gốc ngư dân miền Trung, giỏi bơi lội và không ngại sóng gió. [Hư cấu]',
  NULL
),
-- Vợ của anh Vũ Trần Hưng (nhạc sĩ, đời 5)
(
  '15000000-0000-0000-0000-000000000044',
  'Phạm Thị Cát', 'female',
  1997, 6, 6,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Vũ Trần Hưng (nhạc sĩ). Ca sĩ indie, hai vợ chồng hay biểu diễn cùng nhau. [Hư cấu]',
  NULL
),
-- Chồng của cô Trần Minh Thư (thiết kế đồ họa, đời 5)
(
  '15000000-0000-0000-0000-000000000045',
  'Lý Tuấn Anh', 'male',
  1991, 11, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Chồng cô Trần Minh Thư. Nhiếp ảnh gia, cặp đôi nghệ sĩ nổi tiếng trên mạng xã hội. [Hư cấu]',
  NULL
),
-- Vợ anh Trần Phát Kiệt (MBA Singapore, đời 5)
(
  '15000000-0000-0000-0000-000000000046',
  'Nguyễn Lê Châu Anh', 'female',
  1996, 3, 30,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Kiệt. Gặp nhau khi cùng học MBA tại Singapore. Làm marketing tại tập đoàn đa quốc gia. [Hư cấu]',
  NULL
);

INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '14000000-0000-0000-0000-000000000035', '15000000-0000-0000-0000-000000000037', NULL),
('biological_child', '14000000-0000-0000-0000-000000000036', '15000000-0000-0000-0000-000000000037', NULL),
('biological_child', '14000000-0000-0000-0000-000000000035', '15000000-0000-0000-0000-000000000038', NULL),
('biological_child', '14000000-0000-0000-0000-000000000036', '15000000-0000-0000-0000-000000000038', NULL),
('biological_child', '14000000-0000-0000-0000-000000000037', '15000000-0000-0000-0000-000000000039', NULL),
('biological_child', '14000000-0000-0000-0000-000000000038', '15000000-0000-0000-0000-000000000039', NULL),
('biological_child', '14000000-0000-0000-0000-000000000037', '15000000-0000-0000-0000-000000000040', NULL),
('biological_child', '14000000-0000-0000-0000-000000000038', '15000000-0000-0000-0000-000000000040', NULL),
('biological_child', '14000000-0000-0000-0000-000000000039', '15000000-0000-0000-0000-000000000041', NULL),
('biological_child', '14000000-0000-0000-0000-000000000040', '15000000-0000-0000-0000-000000000041', NULL),
('biological_child', '14000000-0000-0000-0000-000000000039', '15000000-0000-0000-0000-000000000042', NULL),
('biological_child', '14000000-0000-0000-0000-000000000040', '15000000-0000-0000-0000-000000000042', NULL),
('marriage', '15000000-0000-0000-0000-000000000014', '15000000-0000-0000-0000-000000000043', NULL),
('marriage', '15000000-0000-0000-0000-000000000018', '15000000-0000-0000-0000-000000000044', NULL),
('marriage', '15000000-0000-0000-0000-000000000005', '15000000-0000-0000-0000-000000000045', NULL),
('marriage', '15000000-0000-0000-0000-000000000019', '15000000-0000-0000-0000-000000000046', NULL);

-- === Bổ sung đời 6: Con từ các cặp đôi đời 5 mới có vợ/chồng ===
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
(
  '16000000-0000-0000-0000-000000000016',
  'Trần Long Biển', 'male',
  2022, 4, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 2,
  NULL,
  'Con trai thứ hai anh Long & bà Sóng. Tên Biển gợi nghề biển của cả gia đình. [Hư cấu]',
  NULL
),
(
  '16000000-0000-0000-0000-000000000017',
  'Vũ Trần Mây', 'female',
  2021, 8, 18,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con gái anh Hưng (nhạc sĩ) & bà Cát (ca sĩ). Tên Mây nhẹ nhàng như âm nhạc của cha mẹ. [Hư cấu]',
  NULL
),
(
  '16000000-0000-0000-0000-000000000018',
  'Trần Kiệt An', 'male',
  2023, 5, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Kiệt & bà Châu Anh. Sinh tại Singapore, mang quốc tịch Việt Nam. [Hư cấu]',
  NULL
),
(
  '16000000-0000-0000-0000-000000000019',
  'Lý Trần Thảo', 'female',
  2020, 7, 7,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con gái cô Thư (thiết kế đồ họa) & ông Tuấn Anh. Bé hay được bố mẹ đưa đi chụp ảnh. [Hư cấu]',
  NULL
),
-- Con đời 6 từ nhánh Lưu Trần đời 5
(
  '16000000-0000-0000-0000-000000000020',
  'Lưu Trần Mầm', 'female',
  2021, 3, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con gái anh Công (Lưu Trần Công đời 5). Bé gái đầu lòng, được ông bà nội cưng chiều. [Hư cấu]',
  NULL
);

INSERT INTO relationships (type, person_a, person_b, note) VALUES
('biological_child', '15000000-0000-0000-0000-000000000014', '16000000-0000-0000-0000-000000000016', NULL),
('biological_child', '15000000-0000-0000-0000-000000000043', '16000000-0000-0000-0000-000000000016', NULL),
('biological_child', '15000000-0000-0000-0000-000000000018', '16000000-0000-0000-0000-000000000017', NULL),
('biological_child', '15000000-0000-0000-0000-000000000044', '16000000-0000-0000-0000-000000000017', NULL),
('biological_child', '15000000-0000-0000-0000-000000000019', '16000000-0000-0000-0000-000000000018', NULL),
('biological_child', '15000000-0000-0000-0000-000000000046', '16000000-0000-0000-0000-000000000018', NULL),
('biological_child', '15000000-0000-0000-0000-000000000005', '16000000-0000-0000-0000-000000000019', NULL),
('biological_child', '15000000-0000-0000-0000-000000000045', '16000000-0000-0000-0000-000000000019', NULL),
('biological_child', '15000000-0000-0000-0000-000000000027', '16000000-0000-0000-0000-000000000020', NULL);

-- ============================================================
-- END SUPPLEMENT 2
-- ============================================================


-- ============================================================
-- BỔ SUNG LẦN 3 — Thêm ~10 người để đạt ~150
-- ============================================================

-- Vợ/chồng còn thiếu ở đời 5 + thêm vài cháu đời 6
INSERT INTO persons (
  id, full_name, gender,
  birth_year, birth_month, birth_day,
  death_year, death_month, death_day,
  death_lunar_year, death_lunar_month, death_lunar_day,
  is_deceased, is_in_law, generation, birth_order,
  other_names, note, burial_place
) VALUES
-- Chồng cô Trần Kiên Châu (CEO edtech, đời 5)
(
  '15000000-0000-0000-0000-000000000047',
  'Phan Quốc Huy', 'male',
  1990, 2, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Chồng cô Trần Kiên Châu. Co-founder cùng vợ tại startup edtech, phụ trách mảng kỹ thuật. [Hư cấu]',
  NULL
),
-- Chồng cô Vũ Trần Hoài (nhà văn, đời 5)
(
  '15000000-0000-0000-0000-000000000048',
  'Trương Minh Khôi', 'male',
  1990, 5, 5,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Chồng cô Vũ Trần Hoài. Biên tập viên nhà xuất bản, người đọc nhiều sách nhất trong họ. [Hư cấu]',
  NULL
),
-- Vợ anh Cao Trần Sơn (kỹ sư NN, đời 5)
(
  '15000000-0000-0000-0000-000000000049',
  'Lê Thị Đồng Xanh', 'female',
  1995, 9, 12,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Cao Trần Sơn. Kỹ sư trồng trọt, hai vợ chồng cùng nghiên cứu giống lúa chịu mặn. [Hư cấu]',
  NULL
),
-- Vợ anh Lê Trần Tùng (thợ mộc, đời 5)
(
  '15000000-0000-0000-0000-000000000050',
  'Đặng Thị Gỗ', 'female',
  1997, 11, 11,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, TRUE, 5, NULL,
  NULL,
  'Vợ anh Lê Trần Tùng. Họa sĩ vẽ tranh trên gỗ, kết hợp nghề mộc của chồng thành sản phẩm thủ công mỹ nghệ. [Hư cấu]',
  NULL
),
-- Con đời 6 từ cặp đôi Kiên Châu & Huy
(
  '16000000-0000-0000-0000-000000000021',
  'Phan Trần Sáng', 'male',
  2022, 11, 11,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai cô Kiên Châu & ông Huy. Tên Sáng ý nghĩa "tương lai sáng" của startup gia đình. [Hư cấu]',
  NULL
),
-- Con đời 6 từ cặp Hoài & Khôi
(
  '16000000-0000-0000-0000-000000000022',
  'Trương Trần Chữ', 'male',
  2021, 1, 8,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai cô Hoài (nhà văn) & ông Khôi (biên tập). Tên Chữ gắn với nghề của cả cha lẫn mẹ. [Hư cấu]',
  NULL
),
-- Con đời 6: anh Cao Trần Sơn & bà Đồng Xanh
(
  '16000000-0000-0000-0000-000000000023',
  'Cao Trần Lúa', 'female',
  2023, 4, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con gái anh Sơn & bà Đồng Xanh. Tên Lúa gắn với công trình nghiên cứu lúa chịu mặn của cha mẹ. [Hư cấu]',
  NULL
),
-- Con đời 6: anh Lê Trần Tùng & bà Gỗ
(
  '16000000-0000-0000-0000-000000000024',
  'Lê Trần Cây', 'male',
  2022, 6, 20,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 6, 1,
  NULL,
  'Con trai anh Tùng & bà Gỗ. Tên Cây nối tiếp series Gỗ - Cây - Rừng của gia đình nghề mộc. [Hư cấu]',
  NULL
),
-- Đời 7: con đời 6 Trần Bách Nhân (Singapore)
(
  '17000000-0000-0000-0000-000000000009',
  'Trần Bách Hà', 'female',
  2023, 8, 15,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 2,
  NULL,
  'Con gái thứ hai anh Bách. Sinh tại Singapore đúng ngày Quốc khánh Việt Nam. [Hư cấu]',
  NULL
),
-- Đời 7: con đời 6 từ anh Tâm & bà Hà My (thêm đứa thứ hai)
(
  '17000000-0000-0000-0000-000000000010',
  'Bùi Trần Ngọc', 'female',
  2023, 10, 10,  NULL, NULL, NULL,  NULL, NULL, NULL,
  FALSE, FALSE, 7, 2,
  NULL,
  'Con gái thứ hai anh Tâm (phóng viên). Sinh ra được ông nội Nhân chụp bộ ảnh kỷ niệm đặc biệt. [Hư cấu]',
  NULL
);

INSERT INTO relationships (type, person_a, person_b, note) VALUES
('marriage', '15000000-0000-0000-0000-000000000016', '15000000-0000-0000-0000-000000000047', NULL),
('marriage', '15000000-0000-0000-0000-000000000017', '15000000-0000-0000-0000-000000000048', NULL),
('marriage', '15000000-0000-0000-0000-000000000021', '15000000-0000-0000-0000-000000000049', NULL),
('marriage', '15000000-0000-0000-0000-000000000023', '15000000-0000-0000-0000-000000000050', NULL),
-- Đời 6 con cô Kiên Châu
('biological_child', '15000000-0000-0000-0000-000000000016', '16000000-0000-0000-0000-000000000021', NULL),
('biological_child', '15000000-0000-0000-0000-000000000047', '16000000-0000-0000-0000-000000000021', NULL),
-- Đời 6 con cô Hoài
('biological_child', '15000000-0000-0000-0000-000000000017', '16000000-0000-0000-0000-000000000022', NULL),
('biological_child', '15000000-0000-0000-0000-000000000048', '16000000-0000-0000-0000-000000000022', NULL),
-- Đời 6 con anh Sơn & Đồng Xanh
('biological_child', '15000000-0000-0000-0000-000000000021', '16000000-0000-0000-0000-000000000023', NULL),
('biological_child', '15000000-0000-0000-0000-000000000049', '16000000-0000-0000-0000-000000000023', NULL),
-- Đời 6 con anh Tùng & bà Gỗ
('biological_child', '15000000-0000-0000-0000-000000000023', '16000000-0000-0000-0000-000000000024', NULL),
('biological_child', '15000000-0000-0000-0000-000000000050', '16000000-0000-0000-0000-000000000024', NULL),
-- Đời 7 con anh Bách
('biological_child', '15000000-0000-0000-0000-000000000015', '17000000-0000-0000-0000-000000000009', NULL),
('biological_child', '15000000-0000-0000-0000-000000000035', '17000000-0000-0000-0000-000000000009', NULL),
-- Đời 7 con anh Tâm
('biological_child', '15000000-0000-0000-0000-000000000006', '17000000-0000-0000-0000-000000000010', NULL),
('biological_child', '15000000-0000-0000-0000-000000000007', '17000000-0000-0000-0000-000000000010', NULL);

-- Private details bổ sung đời 5
INSERT INTO person_details_private (person_id, phone_number, occupation, current_residence) VALUES
('15000000-0000-0000-0000-000000000047', '0945 xxx 067', 'Co-founder / CTO startup edtech', 'Hoàn Kiếm, Hà Nội'),
('15000000-0000-0000-0000-000000000048', '0946 xxx 068', 'Biên tập viên nhà xuất bản', 'Đống Đa, Hà Nội'),
('15000000-0000-0000-0000-000000000049', '0947 xxx 069', 'Kỹ sư trồng trọt', 'TP. Thanh Hóa'),
('15000000-0000-0000-0000-000000000050', '0948 xxx 070', 'Họa sĩ thủ công mỹ nghệ gỗ', 'Huyện Thiệu Hóa, Thanh Hóa');

-- ============================================================
-- END SUPPLEMENT 3
-- ============================================================
