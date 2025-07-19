import 'package:flutter/material.dart';

class PartnerSection extends StatelessWidget {
  const PartnerSection({super.key});

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
                'ĐỐI TÁC CHIẾN LƯỢC',
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
                    _PartnerBox(isMobile: isMobile),
                    SizedBox(height: 18),
                    _PartnerLogo(isMobile: isMobile),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(flex: 3, child: _PartnerBox(isMobile: isMobile)),
                    SizedBox(width: 32),
                    Expanded(flex: 2, child: _PartnerLogo(isMobile: isMobile)),
                  ],
                ),
        ],
      ),
    );
  }
}

class _PartnerBox extends StatelessWidget {
  final bool isMobile;
  const _PartnerBox({required this.isMobile});

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
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32),
                child: Image.asset(
                  'assets/images/tieudeprintway.png',
                  width: isMobile ? 160 : 220,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SizedBox(height: isMobile ? 10 : 18),
          RichText(
            text: TextSpan(
              style: TextStyle(
                color: Colors.white,
                fontSize: isMobile ? 13.5 : 16,
                height: 1.6,
              ),
              children: [
                const TextSpan(text: 'Thành lập vào năm 2019, Printway là một trong những công ty '),
                _bold('hàng đầu'),
                const TextSpan(text: ' trong việc '),
                _bold('sản xuất và cung cấp'),
                const TextSpan(text: ' các sản phẩm & dịch vụ '),
                _yellow('Print-On-Demand Fulfillment'),
                const TextSpan(text: ' cho các đối tác trong lĩnh vực '),
                _yellow('Thương mại điện tử xuyên biên giới'),
                const TextSpan(text: '.'),
                
                const TextSpan(text: '\n\nLà một trong những nền tảng cung cấp '),
                _bold('dịch vụ toàn diện'),
                const TextSpan(text: ' cho các nhà bán hàng P.O.D, Printway hiện đang hỗ trợ dịch vụ '),
                _bold('P.O.D Fulfillment'),
                const TextSpan(text: ' với hơn 500 đầu mục sản phẩm.'),
                
                const TextSpan(text: '\n\nVới '),
                _bold('mục tiêu và sứ mệnh'),
                const TextSpan(text: ' đưa hàng Việt vươn ra thế giới cùng với lợi thế về nhà xưởng sản xuất trực tiếp tại Việt Nam, Printway mang đến cho cộng đồng seller '),
                _yellow('P.O.D Việt Nam'),
                const TextSpan(text: ' và trên toàn thế giới những '),
                _bold('cơ hội phát triển'),
                const TextSpan(text: ' các thương hiệu riêng với nhiều loại sản phẩm cùng sự '),
                _bold('chủ động và linh hoạt'),
                const TextSpan(text: ' trong sản xuất.'),
              ],
            ),
          ),
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
}

class _PartnerLogo extends StatelessWidget {
  final bool isMobile;
  const _PartnerLogo({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(24),
        child: Image.asset(
          'assets/images/logoprintway.png',
          width: isMobile ? 120 : 180,
          height: isMobile ? 120 : 180,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
} 