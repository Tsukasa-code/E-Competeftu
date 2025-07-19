import 'package:flutter/material.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 8 : 32,
        vertical: isMobile ? 4 : 8,
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
                'TỔNG QUAN CUỘC THI',
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
          // Box 1: Vòng 1, Vòng 2
          _OverviewBox(
            isMobile: isMobile,
            children: [
              _buildRichTitle('Vòng 1: Giải Case Study', isMobile),
              SizedBox(height: 4),
              _buildRichText([
                const TextSpan(text: '- Đội thi sẽ nhận ngẫu nhiên 1 trong 2 đề đến từ doanh nghiệp và giải case về lĩnh vực '),
                _yellow('P.O.D'),
                const TextSpan(text: ' trong '),
                _yellow('thời gian 3 ngày'),
                const TextSpan(text: '.'),
              ], isMobile),
              _buildRichText([
                const TextSpan(text: '- Top 30 đội thi xuất sắc sẽ tiến vào vòng 2 - vòng Đề án.'),
              ], isMobile),
              Divider(color: Colors.white, thickness: 1, height: isMobile ? 20 : 22),
              _buildRichTitle('Vòng 2: Đề Án', isMobile),
              SizedBox(height: 4),
              _buildRichText([
                const TextSpan(text: '- Các đội thi lập đề án '),
                _yellow('kinh doanh'),
                const TextSpan(text: ' cho một cửa hàng theo mô hình '),
                _yellow('Print-on-demand'),
                const TextSpan(text: ' trên nền tảng '),
                _yellow('Shopify'),
                const TextSpan(text: '.'),
              ], isMobile),
              _buildRichText([
                const TextSpan(text: '- Top 05 đề án xuất sắc nhất sẽ được triển khai '),
                _yellow('kinh doanh Thực chiến'),
                const TextSpan(text: '.'),
              ], isMobile),
              _buildRichText([
                const TextSpan(text: '- Các đội thi sẽ được '),
                _yellow('training về Print-On-Demand'),
                const TextSpan(text: ' bởi các chuyên gia trong lĩnh vực '),
                _yellow('Thương mại điện tử xuyên biên giới'),
                const TextSpan(text: '.'),
              ], isMobile),
            ],
            image: 'assets/images/logoda.png',
          ),
          SizedBox(height: isMobile ? 18 : 32),
          // Box 2: Vòng 3, Đêm chung kết
          _OverviewBox(
            isMobile: isMobile,
            children: [
              _buildRichTitle('Vòng 3: Thực chiến', isMobile),
              SizedBox(height: 4),
              _buildRichText([
                const TextSpan(text: '- Đội thi tiến hành '),
                _yellow('kinh doanh theo đề án'),
                const TextSpan(text: ' đã lập trên nền tảng '),
                _yellow('Thương mại điện tử xuyên biên giới Shopify'),
                const TextSpan(text: '.'),
              ], isMobile),
              _buildRichText([
                const TextSpan(text: '- Các đội thi sẽ được '),
                _yellow('training và đồng hành cùng các mentor'),
                const TextSpan(text: ' dày dặn kinh nghiệm trong suốt quá trình tham gia thực chiến.'),
              ], isMobile),
              _buildRichText([
                const TextSpan(text: '- Mỗi đội thi được '),
                _yellow('hỗ trợ 300\$'),
                const TextSpan(text: ' để thực hiện đề án.'),
              ], isMobile),
              Divider(color: Colors.white, thickness: 1, height: isMobile ? 20 : 22),
              _buildRichTitle('Đêm chung kết', isMobile),
              SizedBox(height: 4),
              _buildRichText([
                const TextSpan(text: '- Top 05 đội thi thuyết trình '),
                _yellow('bản đề án kinh doanh'),
                const TextSpan(text: ' của đội mình, sau đó thực hiện phần '),
                _yellow('hỏi đáp'),
                const TextSpan(text: ' với Hội đồng Ban giám khảo.'),
              ], isMobile),
              _buildRichText([
                const TextSpan(text: '- Sau phần thi Pitching, top 03 đội thi sẽ '),
                _yellow('giải Case và hỏi đáp'),
                const TextSpan(text: ' với Hội đồng BGK.'),
              ], isMobile),
            ],
            image: 'assets/images/logoda.png',
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

  static Widget _buildRichTitle(String text, bool isMobile) => Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: isMobile ? 15.5 : 19,
          letterSpacing: 0.5,
        ),
      );

  static Widget _buildRichText(List<TextSpan> children, bool isMobile) =>
      Padding(
        padding: EdgeInsets.only(bottom: isMobile ? 2 : 4),
        child: RichText(
          text: TextSpan(
            style: TextStyle(
              fontSize: isMobile ? 13.5 : 16,
              color: Colors.white,
              height: 1.6,
            ),
            children: children,
          ),
        ),
      );
}

class _OverviewBox extends StatelessWidget {
  final List<Widget> children;
  final String image;
  final bool isMobile;
  const _OverviewBox({required this.children, required this.image, required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Container(
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
              children: children,
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
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
    );
  }
} 