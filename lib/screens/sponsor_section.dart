import 'package:flutter/material.dart';

class SponsorSection extends StatelessWidget {
  const SponsorSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 900;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 4 : 32,
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
                'NHÀ TÀI TRỢ',
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
                  children: [
                    _DiamondBox(
                      title: 'NTT kim cương',
                      child: _SponsorLogoGrid([
                        'assets/images/logoprintway2.png',
                      ], isBig: true),
                      isBig: true,
                    ),
                    SizedBox(height: 18),
                    _SponsorGrid(isMobile: isMobile),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 4,
                      child: _DiamondBox(
                        title: 'NTT kim cương',
                        child: _SponsorLogoGrid([
                          'assets/images/logoprintway2.png',
                        ], isBig: true),
                        isBig: true,
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      flex: 6,
                      child: _SponsorGrid(isMobile: isMobile),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}

class _SponsorGrid extends StatelessWidget {
  final bool isMobile;
  const _SponsorGrid({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: isMobile ? 1 : 2,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      mainAxisSpacing: isMobile ? 12 : 18,
      crossAxisSpacing: isMobile ? 8 : 18,
      childAspectRatio: isMobile ? 2.2 : 1.4,
      children: [
        _DiamondBox(
          title: 'NTT vàng',
          child: _SponsorLogoGrid([
            'assets/images/logodzt.png',
            'assets/images/logovietminhglobal.png',
            'assets/images/logobluestar.png',
          ]),
        ),
        _DiamondBox(
          title: 'NTT bạc',
          child: _SponsorLogoGrid([
            'assets/images/logomoonpie.png',
            'assets/images/logomerchfox.png',
            'assets/images/logowealify.png',
            'assets/images/logocatkissfish.png',
          ], maxPerRow: 4),
        ),
        _DiamondBox(
          title: 'NTT đồng',
          child: _SponsorLogoGrid([
            'assets/images/logotimind.png',
            'assets/images/logodol.png',
          ]),
        ),
        _DiamondBox(
          title: 'NTT đồng hành',
          child: _SponsorLogoGrid([
            'assets/images/logocolorme.png',
            'assets/images/logostlighthouse.png',
            'assets/images/logonails.png',
            'assets/images/logospark.png',
            'assets/images/logotocotoco.png',
            'assets/images/logodreamship.png',
            'assets/images/logoizone.png',
            'assets/images/logopink.png',
            'assets/images/logotwin.png',
          ], maxPerRow: 5),
        ),
      ],
    );
  }
}

class _SponsorLogoGrid extends StatelessWidget {
  final List<String> logos;
  final bool isBig;
  final int maxPerRow;
  const _SponsorLogoGrid(this.logos, {this.isBig = false, this.maxPerRow = 3});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    final perRow = isBig ? 1 : maxPerRow;
    final rows = <Widget>[];
    for (int i = 0; i < logos.length; i += perRow) {
      rows.add(Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int j = i; j < (i + perRow) && j < logos.length; j++)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: isBig ? 0 : 6, vertical: 6),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(isBig ? 18 : 10),
                child: Image.asset(
                  logos[j],
                  width: isBig ? (isMobile ? 80 : 120) : (isMobile ? 40 : 60),
                  height: isBig ? (isMobile ? 80 : 120) : (isMobile ? 40 : 60),
                  fit: BoxFit.contain,
                ),
              ),
            ),
        ],
      ));
    }
    return Column(children: rows);
  }
}

// Khôi phục lại class _DiamondBox và _DiamondCorner như ban đầu, bỏ BorderNTTBox và _NTTBorderPainter
class _DiamondBox extends StatelessWidget {
  final String title;
  final Widget child;
  final bool isBig;
  const _DiamondBox({required this.title, required this.child, this.isBig = false, Widget? logo});

  @override
  Widget build(BuildContext context) {
    final isMobile = MediaQuery.of(context).size.width < 900;
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: isBig ? (isMobile ? 250 : 300) : null,
          padding: EdgeInsets.symmetric(horizontal: isBig ? 18 : 10, vertical: isBig ? 18 : 10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.13),
            borderRadius: BorderRadius.circular(18),
            border: Border.all(color: Color(0xFFB6B65A), width: 2.5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: isBig ? 8 : 0),
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isBig ? (isMobile ? 18 : 22) : (isMobile ? 15 : 18),
                  letterSpacing: 1.1,
                  shadows: [
                    Shadow(
                      blurRadius: 4,
                      color: Colors.black54,
                      offset: Offset(1, 2),
                    ),
                  ],
                ),
              ),
              SizedBox(height: isBig ? 12 : 8),
              child,
            ],
          ),
        ),
        // Kim cương 4 góc
        _DiamondCorner(top: 0, left: 0),
        _DiamondCorner(top: 0, right: 0),
        _DiamondCorner(bottom: 0, left: 0),
        _DiamondCorner(bottom: 0, right: 0),
      ],
    );
  }
}

class _DiamondCorner extends StatelessWidget {
  final double? top, left, right, bottom;
  const _DiamondCorner({this.top, this.left, this.right, this.bottom});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: top,
      left: left,
      right: right,
      bottom: bottom,
      child: Transform.rotate(
        angle: 0.785398,
        child: Container(
          width: 22,
          height: 22,
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: Border.all(color: Color(0xFFB6B65A), width: 2),
            borderRadius: BorderRadius.circular(4),
          ),
          child: Center(
            child: Container(
              width: 7,
              height: 7,
              decoration: BoxDecoration(
                color: Color(0xFFB6B65A),
                shape: BoxShape.circle,
              ),
            ),
          ),
        ),
      ),
    );
  }
} 