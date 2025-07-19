import 'package:flutter/material.dart';

class ContestantSection extends StatelessWidget {
  const ContestantSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 8 : 32,
        vertical: isMobile ? 12 : 28,
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
                'ĐỐI TƯỢNG DỰ THI',
                style: TextStyle(
                  fontSize: isMobile ? 22 : 28,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                  shadows: [
                    Shadow(
                      blurRadius: 8,
                      color: Colors.black54,
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
          SizedBox(height: isMobile ? 14 : 28),
          isMobile
              ? Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _ContestantBox(isMobile: isMobile),
                    SizedBox(height: 18),
                    _QrBox(isMobile: isMobile),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 3, child: _ContestantBox(isMobile: isMobile)),
                    SizedBox(width: 32),
                    Expanded(flex: 2, child: _QrBox(isMobile: isMobile)),
                  ],
                ),
        ],
      ),
    );
  }
}

class _ContestantBox extends StatelessWidget {
  final bool isMobile;
  const _ContestantBox({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.45),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Color(0xFFB6B65A), width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.all(isMobile ? 12 : 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Text(
                  'Đối tượng dự thi',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 17 : 20,
                  ),
                ),
                SizedBox(height: 2),
                Container(
                  width: 100,
                  height: 2,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 13.5 : 16,
                height: 1.6,
              ),
              children: [
                const TextSpan(text: 'Các bạn sinh viên đang theo học khối ngành '),
                _bold('kinh tế'),
                const TextSpan(text: ' và các khối ngành liên quan có quan tâm về '),
                _yellow('Thương mại điện tử xuyên biên giới'),
                const TextSpan(text: ', mong muốn '),
                _bold('trải nghiệm thực tế'),
                const TextSpan(text: ' và định hướng làm việc lâu dài trong lĩnh vực.'),
              ],
            ),
          ),
          SizedBox(height: 14),
          Center(
            child: Column(
              children: [
                Text(
                  'Cách thức đăng ký',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: isMobile ? 17 : 20,
                  ),
                ),
                SizedBox(height: 2),
                Container(
                  width: 160,
                  height: 2,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          _buildBullet(isMobile, 'Mỗi đội thi ', _yellow('từ 2-5 thành viên'), '. Mỗi thí sinh chỉ được quyền tham gia ', _yellow('01 đội thi duy nhất'), '.'),
          _buildBullet(isMobile, 'Các đội thi không được phép thay đổi thành viên trong quá trình dự thi nếu chưa có sự đồng ý của BTC.'),
          _buildBullet(isMobile, 'Đội thi top 5 ECOMPETE 2024 không được dự thi lại.'),
          _buildBullet(isMobile, 'Đăng ký tham gia tại ', _link('Link'), '.'),
        ],
      ),
    );
  }

  static TextSpan _yellow(String text) => TextSpan(
        text: text,
        style: const TextStyle(
          color: Color(0xFFB6B65A),
          fontWeight: FontWeight.bold,
        ),
      );
  static TextSpan _bold(String text) => TextSpan(
        text: text,
        style: const TextStyle(fontWeight: FontWeight.bold),
      );
  static TextSpan _link(String text) => TextSpan(
        text: text,
        style: const TextStyle(
          color: Color(0xFFB6B65A),
          fontWeight: FontWeight.bold,
          decoration: TextDecoration.underline,
        ),
      );

  Widget _buildBullet(bool isMobile, String text, [TextSpan? highlight1, String? text2, TextSpan? highlight2, String? text3]) {
    return Padding(
      padding: EdgeInsets.only(bottom: isMobile ? 2 : 4),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('• ', style: TextStyle(color: Color(0xFFB6B65A), fontSize: isMobile ? 15 : 18)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: isMobile ? 13.5 : 16, height: 1.5),
                children: [
                  TextSpan(text: text),
                  if (highlight1 != null) highlight1,
                  if (text2 != null) TextSpan(text: text2),
                  if (highlight2 != null) highlight2,
                  if (text3 != null) TextSpan(text: text3),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _QrBox extends StatelessWidget {
  final bool isMobile;
  const _QrBox({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.45),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: Color(0xFFB6B65A), width: 2),
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      padding: EdgeInsets.symmetric(horizontal: isMobile ? 12 : 24, vertical: isMobile ? 16 : 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Quy chế cuộc thi',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 16 : 19,
            ),
          ),
          SizedBox(height: isMobile ? 10 : 18),
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.asset(
              'assets/images/quychethi.png',
              width: isMobile ? 120 : 160,
              height: isMobile ? 120 : 160,
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
    );
  }
} 