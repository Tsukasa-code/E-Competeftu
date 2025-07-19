import 'package:flutter/material.dart';

class StatisticsSection extends StatelessWidget {
  const StatisticsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    final circleSize = isMobile ? 120.0 : 160.0;
    final diamondSize = isMobile ? 13.0 : 18.0;
    final stats = [
      {'value': '100+', 'desc': 'Đội thi đăng ký\ntham gia'},
      {'value': '400+', 'desc': 'Thí sinh tham\ngia tranh tài'},
      {'value': '30+', 'desc': 'Trường Đại học\ntrên toàn quốc'},
      {'value': '650.000+', 'desc': 'Lượt quan tâm\nvà tiếp cận'},
      {'value': '110+', 'desc': 'Suất thực tập và\nhọc bổng'},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 2 : 24,
        vertical: isMobile ? 12 : 28,
      ),
      child: Column(
        children: [
          Text(
            'E-COMPETE 2024 VÀ NHỮNG CON SỐ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: isMobile ? 20 : 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
              letterSpacing: 1.5,
              shadows: [
                Shadow(
                  blurRadius: 8,
                  color: Colors.black54,
                  offset: Offset(2, 2),
                ),
              ],
            ),
          ),
          SizedBox(height: isMobile ? 14 : 24),
          // Grid 3-2
          Wrap(
            alignment: WrapAlignment.center,
            spacing: isMobile ? 6 : 24,
            runSpacing: isMobile ? 12 : 24,
            children: List.generate(5, (i) {
              return SizedBox(
                width: circleSize,
                height: circleSize,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    // Outer circle
                    Container(
                      width: circleSize,
                      height: circleSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Color(0xFFB6B65A), width: 2.2),
                        color: Colors.black.withOpacity(0.18),
                      ),
                    ),
                    // Inner circle
                    Container(
                      width: circleSize - 10,
                      height: circleSize - 10,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white.withOpacity(0.7), width: 1.1),
                        color: Colors.transparent,
                      ),
                    ),
                    // Diamonds at 4 corners
                    Positioned(
                      top: 0,
                      left: (circleSize - diamondSize) / 2,
                      child: _Diamond(size: diamondSize),
                    ),
                    Positioned(
                      bottom: 0,
                      left: (circleSize - diamondSize) / 2,
                      child: _Diamond(size: diamondSize),
                    ),
                    Positioned(
                      left: 0,
                      top: (circleSize - diamondSize) / 2,
                      child: _Diamond(size: diamondSize),
                    ),
                    Positioned(
                      right: 0,
                      top: (circleSize - diamondSize) / 2,
                      child: _Diamond(size: diamondSize),
                    ),
                    // Content
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          stats[i]['value']!,
                          style: TextStyle(
                            fontSize: isMobile ? 22 : 30,
                            color: Color(0xFFB6B65A),
                            fontWeight: FontWeight.bold,
                            letterSpacing: 1.2,
                            shadows: [
                              Shadow(
                                blurRadius: 4,
                                color: Colors.black45,
                                offset: Offset(1, 2),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          stats[i]['desc']!,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: isMobile ? 12 : 15,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            height: 1.3,
                            letterSpacing: 0.1,
                            shadows: [
                              Shadow(
                                blurRadius: 2,
                                color: Colors.black26,
                                offset: Offset(1, 1),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class _Diamond extends StatelessWidget {
  final double size;
  const _Diamond({required this.size});

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: 0.785398, // 45 độ
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: size,
            height: size,
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Color(0xFFB6B65A), width: 1.2),
              borderRadius: BorderRadius.circular(2),
            ),
          ),
          Container(
            width: size * 0.28,
            height: size * 0.28,
            decoration: BoxDecoration(
              color: Color(0xFFB6B65A),
              shape: BoxShape.circle,
            ),
          ),
        ],
      ),
    );
  }
} 