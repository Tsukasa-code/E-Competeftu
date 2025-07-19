import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 700;
    final logoSize = isMobile ? 90.0 : 160.0;
    final padding = isMobile ? 12.0 : 32.0;
    final titleFont = isMobile ? 22.0 : 32.0;
    final infoFont = isMobile ? 12.0 : 16.0;
    final boldFont = isMobile ? 13.5 : 18.0;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: isMobile ? 24 : 48, horizontal: isMobile ? 8 : 32),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.65),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Color(0xFFB6B65A), width: 2.5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Tiêu đề lớn với gạch ngang hai bên
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Divider(
                  color: Colors.white70,
                  thickness: 1.5,
                  endIndent: 12,
                ),
              ),
              Text(
                'THÔNG TIN LIÊN HỆ',
                style: TextStyle(
                  fontSize: titleFont,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black26,
                      offset: Offset(2, 2),
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
          SizedBox(height: isMobile ? 18 : 32),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo bên trái
              Padding(
                padding: EdgeInsets.only(right: padding),
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/ecom_logo.png',
                    width: logoSize,
                    height: logoSize,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              // Thông tin bên phải
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Các kênh truyền thông
                    Text(
                      'CÁC KÊNH TRUYỀN THÔNG:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: boldFont,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 4),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: infoFont, color: Colors.white),
                        children: [
                          TextSpan(text: '➤ ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'ECOM CLUB FTU\n', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'https://www.facebook.com/Ecom.Ftu\n'),
                          TextSpan(text: '➤ ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'E-COMPETE: Kiến tạo Doanh nhân số:\n', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'https://www.facebook.com/ecompete.com\n'),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    // Thông tin liên hệ
                    Text(
                      'THÔNG TIN LIÊN HỆ:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: boldFont,
                        color: Colors.white,
                        letterSpacing: 0.5,
                      ),
                    ),
                    SizedBox(height: 2),
                    RichText(
                      text: TextSpan(
                        style: TextStyle(fontSize: infoFont, color: Colors.white),
                        children: [
                          TextSpan(text: 'Fanpage: ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'https://www.facebook.com/ecompete.com\n'),
                          TextSpan(text: 'Email: ', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: 'ecompete.ecom.ftu@gmail.com\n'),
                          TextSpan(text: 'Hotline:\n', style: TextStyle(fontWeight: FontWeight.bold)),
                          TextSpan(text: '0865874753 (Mr Sơn)\n'),
                          TextSpan(text: '0369761450 (Ms Ngọc)\n'),
                          TextSpan(text: '0946205913 (Ms Linh)'),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
} 