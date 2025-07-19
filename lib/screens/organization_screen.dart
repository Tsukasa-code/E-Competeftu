import 'package:flutter/material.dart';

class OrganizationSection extends StatelessWidget {
  const OrganizationSection({super.key});

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
                'ĐƠN VỊ TỔ CHỨC',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Tiêu đề phụ
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: isMobile ? 10 : 18,
                          vertical: isMobile ? 6 : 10,
                        ),
                        decoration: BoxDecoration(
                          color: Color(0xFFB6B65A).withOpacity(0.85),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Text(
                          'ECOM CLUB FTU',
                          style: TextStyle(
                            fontSize: isMobile ? 18 : 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                      SizedBox(height: isMobile ? 10 : 18),
                      // Nội dung mô tả
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: isMobile ? 13.5 : 16,
                            color: Colors.white,
                            height: 1.6,
                          ),
                          children: [
                            TextSpan(
                              text: 'CLB Thương mại điện tử Trường Đại học Ngoại thương - ',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'ECOM CLUB FTU',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                            ),
                            TextSpan(
                              text: ' được thành lập vào ngày 06/12/2010, là CLB ',
                            ),
                            TextSpan(
                              text: 'tiên phong và duy nhất',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                            ),
                            TextSpan(
                              text: ' hoạt động trong lĩnh vực ',
                            ),
                            TextSpan(
                              text: 'Thương mại điện tử',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                            ),
                            TextSpan(
                              text: ', trực thuộc Đoàn Thanh niên Trường Đại học Ngoại thương và được bảo trợ chuyên môn bởi khoa Quản trị Kinh doanh Trường Đại học Ngoại thương.\n\n',
                            ),
                            TextSpan(
                              text: 'ECOM FTU',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                            ),
                            TextSpan(
                              text: ' hoạt động với tôn chỉ ',
                            ),
                            TextSpan(
                              text: '“NĂNG ĐỘNG - HÒA ĐỒNG - SÁNG TẠO”',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                            ),
                            TextSpan(
                              text: '. ECOM mang trong mình ',
                            ),
                            TextSpan(
                              text: 'sứ mệnh',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                            ),
                            TextSpan(
                              text: ' thành một sân chơi trí tuệ ',
                            ),
                            TextSpan(
                              text: 'toàn diện và chất lượng',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                            ),
                            TextSpan(
                              text: ' cho những sinh viên yêu thích và quan tâm đến ',
                            ),
                            TextSpan(
                              text: 'Thương mại điện tử',
                              style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFB6B65A)),
                            ),
                            TextSpan(
                              text: ', là cầu nối đưa các doanh nghiệp hoạt động trong lĩnh vực Thương mại điện tử đến gần hơn với sinh viên, đặc biệt là sinh viên trường Đại học Ngoại thương.',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: isMobile ? 12 : 32),
                // Logo bên phải
                ClipOval(
                  child: Container(
                    color: Colors.transparent,
                    width: isMobile ? 70 : 110,
                    height: isMobile ? 70 : 110,
                    child: Image.asset(
                      'assets/images/ecom_logo.png',
                      fit: BoxFit.cover,
                    ),
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