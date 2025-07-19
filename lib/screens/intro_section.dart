import 'package:flutter/material.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 8 : 32,
        vertical: isMobile ? 24 : 40,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Tiêu đề lớn với gạch ngang hai bên
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: Colors.white70,
                  thickness: 1.5,
                  endIndent: 12,
                ),
              ),
              Text(
                'GIỚI THIỆU CUỘC THI',
                style: TextStyle(
                  fontSize: isMobile ? 22 : 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      blurRadius: 6,
                      color: Colors.black54,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Divider(
                  color: Colors.white70,
                  thickness: 1.5,
                  indent: 12,
                ),
              ),
            ],
          ),
          SizedBox(height: isMobile ? 18 : 28),
          // Khung nội dung + logo
          Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.45),
              borderRadius: BorderRadius.circular(22),
              border: Border.all(color: Color(0xFFB6B65A), width: 2),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38,
                  blurRadius: 12,
                  offset: Offset(0, 6),
                ),
              ],
            ),
            padding: EdgeInsets.all(isMobile ? 14 : 28),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Nội dung bên trái
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      // Tiêu đề phụ bằng ảnh logo căn giữa
                      Center(
                        child: Image.asset(
                          'assets/images/logo.png',
                          height: isMobile ? 160 : 220,
                          fit: BoxFit.contain,
                        ),
                      ),
                      SizedBox(height: isMobile ? 4 : 8),
                      // Nội dung mô tả
                      RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: isMobile ? 13.5 : 16,
                            color: Colors.white,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(
                              text: 'E-COMPETE - ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            TextSpan(
                              text: 'Kiến tạo Doanh nhân số',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB6B65A),
                              ),
                            ),
                            TextSpan(text: ' là cuộc thi xây dựng '),
                            TextSpan(
                              text: 'kế hoạch và kinh doanh thực chiến',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB6B65A),
                              ),
                            ),
                            TextSpan(text: ' theo mô hình '),
                            TextSpan(
                              text: 'Print-On-Demand',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB6B65A),
                              ),
                            ),
                            TextSpan(text: ' trên nền tảng '),
                            TextSpan(
                              text: 'Thương mại điện tử xuyên biên giới',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB6B65A),
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' được tổ chức bởi Câu lạc bộ Thương mại điện tử Trường Đại học Ngoại thương.\n\n',
                            ),
                            TextSpan(text: 'Cuộc thi cũng là nơi '),
                            TextSpan(
                              text: 'khơi nguồn đam mê, truyền cảm hứng',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB6B65A),
                              ),
                            ),
                            TextSpan(
                              text:
                                  ' cho những sinh viên có ước định làm việc trong lĩnh vực ',
                            ),
                            TextSpan(
                              text: 'Thương mại điện tử xuyên biên giới',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB6B65A),
                              ),
                            ),
                            TextSpan(
                              text:
                                  ', và trở thành cầu nối giữa doanh nghiệp và sinh viên, giúp tìm kiếm phát triển những tài năng trẻ thành ',
                            ),
                            TextSpan(
                              text: 'nguồn nhân lực chất lượng cao.',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFFB6B65A),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: isMobile ? 12 : 32),
                // Logo đá bên phải
                Container(
                  width: isMobile ? 80 : 130,
                  height: isMobile ? 80 : 130,
                  alignment: Alignment.center,
                  child: Image.asset(
                    'assets/images/logoda.png',
                    fit: BoxFit.contain,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
