import 'package:flutter/material.dart';

class SideActivitiesSection extends StatelessWidget {
  const SideActivitiesSection({super.key});

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
                'HOẠT ĐỘNG BÊN LỀ',
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
                    _TalkshowBox(isMobile: isMobile),
                    SizedBox(height: 16),
                    _TalkshowImages(isMobile: isMobile),
                    SizedBox(height: 32),
                    _TrainingBox(isMobile: isMobile),
                    SizedBox(height: 16),
                    _TrainingImages(isMobile: isMobile),
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _TalkshowBox(isMobile: isMobile),
                          SizedBox(height: 32),
                          _TrainingBox(isMobile: isMobile),
                        ],
                      ),
                    ),
                    SizedBox(width: 32),
                    Expanded(
                      flex: 2,
                      child: Column(
                        children: [
                          _TalkshowImages(isMobile: isMobile),
                          SizedBox(height: 32),
                          _TrainingImages(isMobile: isMobile),
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

class _TalkshowBox extends StatelessWidget {
  final bool isMobile;
  const _TalkshowBox({required this.isMobile});

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
          Text(
            'CHUỖI TALKSHOW',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 18 : 22,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: isMobile ? 10 : 16),
          _buildTalkshow(
            isMobile,
            title: 'Talkshow 1: “POD Career Starter”',
            time: '18h00 - 21h00 ngày 28/05/2025',
            location: 'Hội trường D201 Trường Đại học Ngoại Thương.',
          ),
          Divider(color: Colors.white24, thickness: 1, height: isMobile ? 18 : 26),
          _buildTalkshow(
            isMobile,
            title: 'Talkshow 2: “The Art of AI in POD”',
            time: '18h00 - 21h00 ngày 04/06/2025',
            location: 'Hội trường H303 Trường Đại học Ngoại Thương.',
          ),
        ],
      ),
    );
  }

  Widget _buildTalkshow(bool isMobile, {required String title, required String time, required String location}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text('★ ', style: TextStyle(color: Color(0xFFF9D949), fontSize: isMobile ? 15 : 18)),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: isMobile ? 15 : 18,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4),
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 13 : 15,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: 'Thời gian: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: time),
            ],
          ),
        ),
        RichText(
          text: TextSpan(
            style: TextStyle(
              color: Colors.white,
              fontSize: isMobile ? 13 : 15,
              height: 1.5,
            ),
            children: [
              TextSpan(
                text: 'Địa điểm: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              TextSpan(text: location),
            ],
          ),
        ),
      ],
    );
  }
}

class _TalkshowImages extends StatelessWidget {
  final bool isMobile;
  const _TalkshowImages({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/pod.png',
            width: double.infinity,
            height: isMobile ? 120 : 150,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: isMobile ? 10 : 18),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/pod2.png',
            width: double.infinity,
            height: isMobile ? 120 : 150,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}

class TrainingActivitiesSection extends StatelessWidget {
  const TrainingActivitiesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 800;
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 8 : 32,
        vertical: isMobile ? 12 : 28,
      ),
      child: isMobile
          ? Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _TrainingBox(isMobile: isMobile),
                SizedBox(height: 16),
                _TrainingImages(isMobile: isMobile),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(flex: 2, child: _TrainingBox(isMobile: isMobile)),
                SizedBox(width: 32),
                Expanded(flex: 2, child: _TrainingImages(isMobile: isMobile)),
              ],
            ),
    );
  }
}

class _TrainingBox extends StatelessWidget {
  final bool isMobile;
  const _TrainingBox({required this.isMobile});

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
          Text(
            'TRAINING',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: isMobile ? 18 : 22,
              letterSpacing: 1.2,
            ),
          ),
          SizedBox(height: isMobile ? 10 : 16),
          Text('Vòng 2', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: isMobile ? 15 : 18)),
          SizedBox(height: 4),
          _buildTrainingItem(isMobile, 'Buổi 1', 'Nghiên cứu thị trường và xây dựng thương hiệu trong P.O.D.'),
          _buildTrainingItem(isMobile, 'Buổi 2', 'Hướng dẫn sử dụng và xây dựng giao diện của hàng Shopify.'),
          Divider(color: Colors.white24, thickness: 1, height: isMobile ? 18 : 26),
          Text('Vòng 3', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: isMobile ? 15 : 18)),
          SizedBox(height: 4),
          _buildTrainingItem(isMobile, 'Buổi 1', 'Sử dụng công cụ AI trong P.O.D.'),
          _buildTrainingItem(isMobile, 'Buổi 2', 'Chiến lược Marketing & quảng cáo.'),
          _buildTrainingItem(isMobile, 'Buổi 3', 'Vận hành & tối ưu hóa đơn hàng.'),
        ],
      ),
    );
  }

  Widget _buildTrainingItem(bool isMobile, String session, String desc) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('★ ', style: TextStyle(color: Color(0xFFF9D949), fontSize: isMobile ? 15 : 18)),
          Expanded(
            child: RichText(
              text: TextSpan(
                style: TextStyle(color: Colors.white, fontSize: isMobile ? 13 : 15, height: 1.5),
                children: [
                  TextSpan(text: '$session: ', style: TextStyle(fontWeight: FontWeight.bold)),
                  TextSpan(text: desc),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TrainingImages extends StatelessWidget {
  final bool isMobile;
  const _TrainingImages({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/training1.png',
            width: double.infinity,
            height: isMobile ? 120 : 150,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(height: isMobile ? 10 : 18),
        ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Image.asset(
            'assets/images/training2.png',
            width: double.infinity,
            height: isMobile ? 120 : 150,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
} 