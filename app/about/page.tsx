"use client";

import { motion } from "framer-motion";
import { ArrowLeft, Info, Mail, ShieldAlert } from "lucide-react";
import Link from "next/link";

export default function AboutPage() {
  return (
    <div className="min-h-screen flex flex-col bg-[#fafaf9] selection:bg-amber-200 selection:text-amber-900 relative">
      <div className="absolute inset-0 bg-[linear-gradient(to_right,#80808008_1px,transparent_1px),linear-gradient(to_bottom,#80808008_1px,transparent_1px)] bg-size-[24px_24px] pointer-events-none"></div>

      <Link href="/dashboard" className="btn absolute top-6 left-6 z-20">
        <ArrowLeft className="size-4 group-hover:-translate-x-1 transition-transform" />
        Quay lại
      </Link>

      <div className="flex-1 flex flex-col justify-center items-center px-4 py-20 relative z-10 w-full mb-10">
        <motion.div
          initial={{ opacity: 0, scale: 0.98, y: 10 }}
          animate={{ opacity: 1, scale: 1, y: 0 }}
          className="max-w-3xl w-full"
        >
          <div className="bg-white rounded-3xl p-8 sm:p-12 shadow-sm border border-stone-200 mb-8 mt-6">
            <div className="flex items-center gap-3 mb-6">
              <div className="p-3 bg-amber-100/50 text-amber-700 rounded-2xl">
                <Info className="size-6" />
              </div>
              <h1 className="title">Giới thiệu</h1>
            </div>

            <div className="max-w-none">
              <p className="text-stone-600 leading-relaxed text-[15px] mb-8 text-justify">
                <strong className="text-stone-800">“Uống nước nhớ nguồn, ăn quả nhớ người trồng cây” - đó là đạo lý tốt đẹp đã được gìn giữ qua bao đời của dân tộc Việt Nam và cũng là nền tảng gia phong của dòng họ Trần tại quê hương Nam Phù.</strong>
              </p>

              <div className="mt-8 mb-4 border-t border-stone-100 pt-8 flex items-center gap-3">
                {/* <div className="p-2.5 bg-rose-50 text-rose-600 rounded-xl">
                  <ShieldAlert className="size-5" />
                </div> */}
                {/* <h2 className="text-xl font-bold text-stone-900">
                  Tuyên bố từ chối trách nhiệm & Quyền riêng tư
                </h2> */}
              </div>

              <div className="bg-stone-50 border border-stone-200/60 rounded-2xl p-6 text-[14.5px] leading-relaxed">
                {/* <p className="font-bold text-stone-800 mb-4 bg-white py-2 px-3 rounded-lg border border-stone-200 shadow-sm inline-block">
                  Dự án này chỉ cung cấp mã nguồn (source code). Không có bất kỳ
                  dữ liệu cá nhân nào được thu thập hay lưu trữ bởi tác giả.
                </p> */}

                <ul className="space-y-4 text-stone-600 list-none">
                  <li className="text-justify">
                    {/* <strong className="text-stone-800">
                      Tự lưu trữ hoàn toàn (Self-hosted):
                    </strong>{" "} */}
                    Website Gia phả họ Trần Phúc được lập nên với tâm nguyện lưu giữ cội nguồn, 
                    ghi nhớ công đức tổ tiên và kết nối các thế hệ con cháu trong dòng họ, dù sinh sống nơi quê nhà hay khắp mọi miền đất nước. 
                    Trải qua bao biến đổi của thời gian, các thế hệ họ Trần nơi quê hương Nam Phù vẫn luôn giữ gìn truyền thống đoàn kết, 
                    hiếu nghĩa, cần cù lao động và coi trọng việc học hành, lễ nghĩa.{" "}
                    {/* <strong className="text-stone-800">
                      trong tài khoản Supabase của chính bạn
                    </strong>
                    . Tác giả dự án không có quyền truy cập vào database đó. */}
                  </li>
                  <li className="text-justify">
                    {/* <strong className="text-stone-800">
                      Không thu thập dữ liệu:
                    </strong>{" "}
                    Không có analytics, không có tracking, không có telemetry,
                    không có bất kỳ hình thức thu thập thông tin người dùng nào
                    được tích hợp trong mã nguồn. */}
                    Mỗi trang gia phả không chỉ ghi lại tên tuổi, thế thứ hay huyết thống của dòng tộc, mà còn lưu giữ những ký ức, nếp nhà và giá trị tinh thần mà cha ông đã dày công vun đắp. Đó là lời nhắc nhở con cháu hôm nay luôn hướng về quê hương, biết kính trên nhường dưới, sống nhân hậu, giữ gìn gia phong và tiếp nối những truyền thống tốt đẹp của dòng họ cũng như của dân tộc Việt Nam.
                  </li>
                  <li className="text-justify">
                    {/* <strong className="text-stone-800">
                      Bạn kiểm soát dữ liệu của bạn:
                    </strong>{" "}
                    Mọi dữ liệu gia đình, thông tin thành viên đều nằm hoàn toàn
                    trong cơ sở dữ liệu Supabase mà bạn tạo và quản lý. Bạn có
                    thể xóa, xuất hoặc di chuyển dữ liệu bất cứ lúc nào. */}
                    Chúng tôi hy vọng website này sẽ trở thành nơi hội tụ tình thân, là nhịp cầu gắn kết con cháu họ Trần gần xa, cùng nhau gìn giữ cội nguồn, vun bồi đức hạnh và xây dựng dòng họ ngày càng hưng thịnh, xứng đáng với công lao tổ tiên nơi quê hương Nam Phù yêu dấu.
                  </li>
                  {/* <li>
                    <strong className="text-stone-800">Demo công khai:</strong>{" "}
                    Trang demo tại{" "}
                    <code className="bg-white border border-stone-200 px-1 py-0.5 rounded text-[13px] text-amber-700">
                      giapha-os.homielab.com
                    </code>{" "}
                    sử dụng dữ liệu mẫu hư cấu, không chứa thông tin của người
                    thật. Không nên nhập thông tin cá nhân thật vào trang demo.
                  </li> */}
                </ul>
              </div>

              <div className="mt-8 mb-4 border-t border-stone-100 pt-8 flex items-center gap-3">
                <div className="p-2.5 bg-blue-50 text-blue-600 rounded-xl">
                  <Mail className="size-5" />
                </div>
                <h2 className="text-xl font-bold text-stone-900">
                  Liên hệ & Góp ý
                </h2>
              </div>

              <p className="text-stone-600 leading-relaxed text-[15px] mb-8">
                Nếu bạn có bất kỳ thắc mắc, đề xuất tính năng, báo lỗi khi sử
                dụng phần mềm, hoặc muốn thảo luận thì xin vui lòng gửi email về
                địa chỉ:{` `}
                <a
                  href="mailto:giaphahotranphuc@gmail.com"
                  className="font-semibold text-amber-700 hover:text-amber-600 transition-colors inline-flex items-center gap-1.5 mt-2"
                >
                  giaphahotranphuc@gmail.com
                </a>
              </p>
            </div>
          </div>
        </motion.div>
      </div>
    </div>
  );
}
