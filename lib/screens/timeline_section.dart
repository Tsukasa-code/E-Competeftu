import 'package:flutter/material.dart';

class TimelineSection extends StatelessWidget {
  const TimelineSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    final boxWidth = isMobile ? 180.0 : 260.0;
    final boxHeight = isMobile ? 70.0 : 90.0;
    final titleFont = isMobile ? 16.0 : 22.0;
    final dateFont = isMobile ? 13.0 : 16.0;
    final timeline = [
      {'title': 'MỞ ĐƠN ĐĂNG KÝ', 'date': '(1/6-24/6/2025)'},
      {'title': 'VÒNG 1', 'date': '(25/6-27/6/2025)'},
      {'title': 'VÒNG 2', 'date': '(2/7-11/7/2025)'},
      {'title': 'VÒNG 3', 'date': '(16/7-13/8/2025)'},
      {'title': 'CHUNG KẾT', 'date': '(17/8/2025)'},
    ];
    // Các vị trí top/left/right cho từng box để tạo bậc thang
    //final double leftCol = 0;
    //final double rightCol = size.width - boxWidth;
    //final double centerCol = (size.width - boxWidth) / 2;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 2 : 24,
        vertical: isMobile ? 9 : 18,
      ),
      child: Column(
        children: [
          // Tiêu đề lớn
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
                'TIMELINE CUỘC THI',
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
          SizedBox(height: isMobile ? 18 : 32),
          // Timeline dạng Stack lệch hàng
          SizedBox(
            width: double.infinity,
            height: isMobile ? 650 : 750, // Chiều cao tùy chỉnh cho phù hợp với thiết bị
            child: Stack(
              children: [
                // Đường nối (zigzag)
                CustomPaint(
                  size: Size(double.infinity, isMobile ? 950 : 750),
                  painter: _TimelinePainter(
                    isMobile: isMobile,
                    boxWidth: boxWidth,
                    boxHeight: boxHeight,
                    screenWidth: size.width,
                  ),
                ),
                // Các box lệch hàng
                // Box 1: Trái trên cùng
                Positioned(
                  left: 0,
                  top: 0,
                  child: _TimelineBox(
                    width: boxWidth,
                    height: boxHeight,
                    title: timeline[0]['title']!,
                    date: timeline[0]['date']!,
                    titleFont: titleFont,
                    dateFont: dateFont,
                  ),
                ),
                // Box 2: Phải, thấp hơn box 1
                Positioned(
                  right: 0,
                  top: isMobile ? 110 : 90,
                  child: _TimelineBox(
                    width: boxWidth,
                    height: boxHeight,
                    title: timeline[1]['title']!,
                    date: timeline[1]['date']!,
                    titleFont: titleFont,
                    dateFont: dateFont,
                  ),
                ),
                // Box 3: Trái, thấp hơn box 2
                Positioned(
                  left: 0,
                  top: isMobile ? 250 : 200,
                  child: _TimelineBox(
                    width: boxWidth,
                    height: boxHeight,
                    title: timeline[2]['title']!,
                    date: timeline[2]['date']!,
                    titleFont: titleFont,
                    dateFont: dateFont,
                  ),
                ),
                // Box 4: Phải, thấp hơn box 3
                Positioned(
                  right: 0,
                  top: isMobile ? 390 : 320,
                  child: _TimelineBox(
                    width: boxWidth,
                    height: boxHeight,
                    title: timeline[3]['title']!,
                    date: timeline[3]['date']!,
                    titleFont: titleFont,
                    dateFont: dateFont,
                  ),
                ),
                // Box 5: Trái, thấp hơn box 4
                Positioned(
                  left: 0,
                  top: isMobile ? 530 : 440,
                  child: _TimelineBox(
                    width: boxWidth,
                    height: boxHeight,
                    title: timeline[4]['title']!,
                    date: timeline[4]['date']!,
                    titleFont: titleFont,
                    dateFont: dateFont,
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

class _TimelineBox extends StatelessWidget {
  final double width;
  final double height;
  final String title;
  final String date;
  final double titleFont;
  final double dateFont;
  const _TimelineBox({
    required this.width,
    required this.height,
    required this.title,
    required this.date,
    required this.titleFont,
    required this.dateFont,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.8),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Color(0xFFB6B65A), width: 1.5),
        boxShadow: [
          BoxShadow(color: Colors.black38, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            title,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: titleFont,
              letterSpacing: 1.1,
              shadows: const [
                Shadow(
                  blurRadius: 4,
                  color: Colors.black54,
                  offset: Offset(1, 2),
                ),
              ],
            ),
          ),
          SizedBox(height: 4),
          Text(
            date,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFB6B65A),
              fontWeight: FontWeight.w600,
              fontSize: dateFont,
              letterSpacing: 0.5,
              shadows: const [
                Shadow(
                  blurRadius: 2,
                  color: Colors.black38,
                  offset: Offset(1, 1),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _TimelinePainter extends CustomPainter {
  final bool isMobile;
  final double boxWidth;
  final double boxHeight;
  final double screenWidth;
  _TimelinePainter({
    required this.isMobile,
    required this.boxWidth,
    required this.boxHeight,
    required this.screenWidth,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color(0xFFB6B65A).withOpacity(0.7)
      ..strokeWidth = isMobile ? 5 : 7
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final double leftX = 0 + boxWidth;
    final double rightX = size.width - boxWidth;
    final double offsetX = 90; // khoảng cách đi ngang để tạo chữ L

    final double midY1 = (isMobile ? 0 : 0) + boxHeight / 2;
    final double midY2 = (isMobile ? 110 : 90) + boxHeight / 2;
    final double midY3 = (isMobile ? 250 : 200) + boxHeight / 2;
    final double midY4 = (isMobile ? 390 : 320) + boxHeight / 2;
    final double midY5 = (isMobile ? 530 : 440) + boxHeight / 2;

    final path = Path();

    // Box 1 -> Box 2
    path.moveTo(leftX, midY1);
    path.lineTo(rightX + offsetX, midY1); // đi ngang phải
    path.lineTo(rightX + offsetX, midY2); // đi xuống
    path.lineTo(rightX, midY2); // đi vào giữa box 2

    // Box 2 -> Box 3
    path.lineTo(rightX + offsetX, midY2);
    path.lineTo(rightX + offsetX, midY3);
    path.lineTo(leftX, midY3);

    // Box 3 -> Box 4
    path.lineTo(leftX - offsetX, midY3);
    path.lineTo(leftX - offsetX, midY4);
    path.lineTo(rightX, midY4);

    // Box 4 -> Box 5
    path.lineTo(rightX + offsetX, midY4);
    path.lineTo(rightX + offsetX, midY5);
    path.lineTo(leftX, midY5);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
