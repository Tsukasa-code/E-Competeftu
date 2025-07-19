import 'package:flutter/material.dart';

class MissionVisionSection extends StatelessWidget {
  const MissionVisionSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 8 : 32,
        vertical: isMobile ? 18 : 32,
      ),
      child: Column(
        children: [
          // Sứ mệnh
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Tiêu đề Sứ mệnh
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 14 : 22,
                  vertical: isMobile ? 6 : 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'SỨ MỆNH',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 18 : 22,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
          SizedBox(height: isMobile ? 8 : 14),
          // Khối mô tả Sứ mệnh
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.45),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Color(0xFFB6B65A), width: 2),
            ),
            padding: EdgeInsets.all(isMobile ? 12 : 22),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: isMobile ? 13.5 : 16,
                  color: Colors.white,
                  height: 1.6,
                ),
                children: [
                  const TextSpan(text: 'Cuộc thi mang '),
                  TextSpan(
                    text: 'sứ mệnh',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                  ),
                  const TextSpan(text: ' trở thành chương trình '),
                  TextSpan(
                    text: 'đào tạo chuyên môn',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                  ),
                  const TextSpan(text: ' và cung cấp trải nghiệm '),
                  TextSpan(
                    text: 'kinh doanh thực chiến',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                  ),
                  const TextSpan(text: ' trên các nền tảng '),
                  TextSpan(
                    text: 'Thương mại điện tử xuyên biên giới',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                  ),
                  const TextSpan(text: ' tới các bạn sinh viên có niềm đam mê và yêu thích trong lĩnh vực này.'),
                ],
              ),
            ),
          ),
          SizedBox(height: isMobile ? 22 : 36),
          // Tầm nhìn
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              // Tiêu đề Tầm nhìn
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: isMobile ? 14 : 22,
                  vertical: isMobile ? 6 : 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 2),
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Text(
                  'TẦM NHÌN',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 18 : 22,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 8 : 14),
          // Khối mô tả Tầm nhìn
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.45),
              borderRadius: BorderRadius.circular(18),
              border: Border.all(color: Color(0xFFB6B65A), width: 2),
            ),
            padding: EdgeInsets.all(isMobile ? 12 : 22),
            child: RichText(
              text: TextSpan(
                style: TextStyle(
                  fontSize: isMobile ? 13.5 : 16,
                  color: Colors.white,
                  height: 1.6,
                ),
                children: [
                  const TextSpan(text: 'Tiếp nối thành công của mùa trước, E-COMPETE tiếp tục phát triển với '),
                  TextSpan(
                    text: 'mục tiêu',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                  ),
                  const TextSpan(text: ' khẳng định vị thế là '),
                  TextSpan(
                    text: 'cuộc thi sinh viên',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                  ),
                  const TextSpan(text: ' mang tính '),
                  TextSpan(
                    text: 'chuyên môn cao tiên phong',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                  ),
                  const TextSpan(text: ' trong lĩnh vực '),
                  TextSpan(
                    text: 'TMDT xuyên biên giới',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                  ),
                  const TextSpan(text: ' tại Việt Nam.'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 