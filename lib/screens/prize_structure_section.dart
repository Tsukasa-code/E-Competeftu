import 'package:flutter/material.dart';

class PrizeStructureSection extends StatelessWidget {
  const PrizeStructureSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 900;

    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: isMobile ? 16 : 32,
        vertical: isMobile ? 40 : 60,
      ),
      child: Column(
        children: [
          // Header với tiêu đề
          _buildHeader(isMobile),
          SizedBox(height: isMobile ? 30 : 50),

          // Nội dung chính
          isMobile ? _buildMobileLayout() : _buildDesktopLayout(),
        ],
      ),
    );
  }

  Widget _buildHeader(bool isMobile) {
    return Column(
      children: [
        // Tiêu đề chính
        Text(
          'CƠ CẤU GIẢI THƯỞNG',
          style: TextStyle(
            fontSize: isMobile ? 28 : 36,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            letterSpacing: 2,
            shadows: [
              Shadow(
                blurRadius: 10,
                color: Colors.black54,
                offset: Offset(2, 2),
              ),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _buildMobileLayout() {
    return Column(
      children: [
        // Champion section
        Center(
          child: _buildPrizeCard(
            title: '01 QUÁN QUÂN',
            totalValue: '93.395.000 VNĐ',
            prizes: [
              '+ 15.000.000 VNĐ tiền mặt',
              '+ Hỗ trợ ngân sách 300\$ xuyên suốt quá trình Vòng 2 - Thực chiến',
              '+ 05 suất học bổng 100% cho một khóa học cơ bản tại Colorme trị giá 1.700.000 VNĐ',
              '+ 05 suất học bổng 100% trị giá 2.500.000 VNĐ (ST Lighthouse)',
              '+ 05 voucher 100% sử dụng dịch vụ hỗ trợ hồ sơ du học và chuẩn hóa 1-1 (Spark Prep)',
              '+ 5 tài khoản tự học IELTS kỳ hạn 6 tháng trị giá 1.479.000 VNĐ/tài khoản',
              'và các phần thưởng khác đang cập nhật thêm...',
            ],
            isChampion: true,
          ),
        ),
        SizedBox(height: 25),

        // Runner-up section
        Center(
          child: _buildPrizeCard(
            title: '01 Á QUÂN',
            totalValue: '51.995.000 VNĐ',
            prizes: [
              '+ 10.000.000 VNĐ tiền mặt',
              '+ Hỗ trợ ngân sách 300\$ xuyên suốt quá trình Vòng 2 - Thực chiến',
              '+ 05 suất học bổng 50% cho một khóa học cơ bản tại Colorme trị giá 850.000 VNĐ',
              '+ 05 suất học bổng 70% trị giá 1.750.000 VNĐ (ST Lighthouse)',
              '+ 05 voucher 50% sử dụng dịch vụ hỗ trợ hồ sơ du học và chuẩn hóa 1-1 (Spark Prep)',
              '+ 05 tài khoản tự học IELTS kỳ hạn 3 tháng trị giá 799.000 VNĐ/tài khoản',
              'và các phần thưởng khác đang cập nhật thêm...',
            ],
            isChampion: false,
          ),
        ),
        SizedBox(height: 25),

        // Grand Champion section
        Center(
          child: _buildPrizeCard(
            title: '01 QUÝ QUÂN',
            totalValue: '47.870.000 VNĐ',
            prizes: [
              '+ 8.000.000 VNĐ tiền mặt',
              '+ Hỗ trợ ngân sách 300\$ xuyên suốt quá trình Vòng 2 - Thực chiến',
              '+ 05 suất học bổng 25% cho một khóa học cơ bản tại Colorme trị giá 425.000 VNĐ',
              '+ 05 suất học bổng 70% trị giá 1.750.000 VNĐ (ST Lighthouse)',
              '+ 05 voucher 50% sử dụng dịch vụ hỗ trợ hồ sơ du học và chuẩn hóa 1-1 (Spark Prep)',
              '+ 5 tài khoản tự học IELTS kỳ hạn 3 tháng trị giá 779.000 VNĐ/tài khoản',
              'và các phần thưởng khác đang cập nhật thêm...',
            ],
            isChampion: false,
          ),
        ),
        SizedBox(height: 25),

        // Top 05 section
        Center(
          child: _buildPrizeCard(
            title: 'TOP 05',
            totalValue: '41.245.000 VNĐ',
            prizes: [
              '+ 5.000.000 VNĐ tiền mặt',
              '+ Hỗ trợ ngân sách 300\$ xuyên suốt quá trình Vòng 2 - Thực chiến',
              '+ 5 voucher Colorme trị giá 200.000 VNĐ',
              '+ 05 suất học bổng 70% trị giá 1.750.000 VNĐ (ST Lighthouse)',
              '+ 05 voucher 50% sử dụng dịch vụ hỗ trợ hồ sơ du học và chuẩn hóa 1-1 (Spark Prep)',
              '+ 05 tài khoản tự học IELTS kỳ hạn 1 tháng trị giá 299.000 VNĐ/tài khoản',
              'và các phần thưởng khác đang cập nhật thêm...',
            ],
            isChampion: false,
          ),
        ),
      ],
    );
  }

  Widget _buildDesktopLayout() {
    return Column(
      children: [
        // Row 1: Champion và Runner-up
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPrizeCard(
              title: '01 QUÁN QUÂN',
              totalValue: '93.395.000 VNĐ',
              prizes: [
                '+ 15.000.000 VNĐ tiền mặt',
                '+ Hỗ trợ ngân sách 300\$ xuyên suốt quá trình Vòng 2 - Thực chiến',
                '+ 05 suất học bổng 100% cho một khóa học cơ bản tại Colorme trị giá 1.700.000 VNĐ',
                '+ 05 suất học bổng 100% trị giá 2.500.000 VNĐ (ST Lighthouse)',
                '+ 05 voucher 100% sử dụng dịch vụ hỗ trợ hồ sơ du học và chuẩn hóa 1-1 (Spark Prep)',
                '+ 5 tài khoản tự học IELTS kỳ hạn 6 tháng trị giá 1.479.000 VNĐ/tài khoản',
                'và các phần thưởng khác đang cập nhật thêm...',
              ],
              isChampion: true,
            ),
            SizedBox(width: 30),
            _buildPrizeCard(
              title: '01 Á QUÂN',
              totalValue: '51.995.000 VNĐ',
              prizes: [
                '+ 10.000.000 VNĐ tiền mặt',
                '+ Hỗ trợ ngân sách 300\$ xuyên suốt quá trình Vòng 2 - Thực chiến',
                '+ 05 suất học bổng 50% cho một khóa học cơ bản tại Colorme trị giá 850.000 VNĐ',
                '+ 05 suất học bổng 70% trị giá 1.750.000 VNĐ (ST Lighthouse)',
                '+ 05 voucher 50% sử dụng dịch vụ hỗ trợ hồ sơ du học và chuẩn hóa 1-1 (Spark Prep)',
                '+ 05 tài khoản tự học IELTS kỳ hạn 3 tháng trị giá 799.000 VNĐ/tài khoản',
                'và các phần thưởng khác đang cập nhật thêm...',
              ],
              isChampion: false,
            ),
          ],
        ),
        SizedBox(height: 30),

        // Row 2: Grand Champion và Top 05
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildPrizeCard(
              title: '01 QUÝ QUÂN',
              totalValue: '47.870.000 VNĐ',
              prizes: [
                '+ 8.000.000 VNĐ tiền mặt',
                '+ Hỗ trợ ngân sách 300\$ xuyên suốt quá trình Vòng 2 - Thực chiến',
                '+ 05 suất học bổng 25% cho một khóa học cơ bản tại Colorme trị giá 425.000 VNĐ',
                '+ 05 suất học bổng 70% trị giá 1.750.000 VNĐ (ST Lighthouse)',
                '+ 05 voucher 50% sử dụng dịch vụ hỗ trợ hồ sơ du học và chuẩn hóa 1-1 (Spark Prep)',
                '+ 5 tài khoản tự học IELTS kỳ hạn 3 tháng trị giá 779.000 VNĐ/tài khoản',
                'và các phần thưởng khác đang cập nhật thêm...',
              ],
              isChampion: false,
            ),
            SizedBox(width: 30),
            _buildPrizeCard(
              title: 'TOP 05',
              totalValue: '41.245.000 VNĐ',
              prizes: [
                '+ 5.000.000 VNĐ tiền mặt',
                '+ Hỗ trợ ngân sách 300\$ xuyên suốt quá trình Vòng 2 - Thực chiến',
                '+ 5 voucher Colorme trị giá 200.000 VNĐ',
                '+ 05 suất học bổng 70% trị giá 1.750.000 VNĐ (ST Lighthouse)',
                '+ 05 voucher 50% sử dụng dịch vụ hỗ trợ hồ sơ du học và chuẩn hóa 1-1 (Spark Prep)',
                '+ 05 tài khoản tự học IELTS kỳ hạn 1 tháng trị giá 299.000 VNĐ/tài khoản',
                'và các phần thưởng khác đang cập nhật thêm...',
              ],
              isChampion: false,
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPrizeCard({
    required String title,
    required String totalValue,
    required List<String> prizes,
    required bool isChampion,
  }) {
    return Builder(
      builder: (context) {
        final isMobile = MediaQuery.of(context).size.width < 900;
        final cardSize = isMobile ? 280.0 : 320.0;

        return Container(
          width: cardSize,
          height: cardSize,
          child: Stack(
            children: [
              // Background image - sử dụng hình vuông
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/khungcocau.png',
                  width: cardSize,
                  height: cardSize,
                  fit: BoxFit.cover,
                ),
              ),

              // Content overlay
              Container(
                width: cardSize,
                height: cardSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.5),
                      Colors.white.withOpacity(0.5),
                    ],
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(isMobile ? 40 : 28),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Title
                      Text(
                        title,
                        style: TextStyle(
                          fontSize: isMobile ? 13 : 18,
                          fontWeight: FontWeight.bold,
                          color: isChampion
                              ? Color(0xFFFFD700)
                              : Color(0xFF4CAF50),
                          letterSpacing: 1.2,
                          shadows: [
                            Shadow(
                              blurRadius: 6,
                              color: Colors.black54,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 8),

                      // Total value
                      Text(
                        'TỔNG GIÁ TRỊ GIẢI THƯỞNG:',
                        style: TextStyle(
                          fontSize: isMobile ? 6 : 11,
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        totalValue,
                        style: TextStyle(
                          fontSize: isMobile ? 11 : 16,
                          fontWeight: FontWeight.bold,
                          color: isChampion
                              ? Color(0xFFFFD700)
                              : Color(0xFF4CAF50),
                          letterSpacing: 0.5,
                          shadows: [
                            Shadow(
                              blurRadius: 4,
                              color: Colors.black54,
                              offset: Offset(1, 1),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 12),

                      // Prize details
                      Expanded(
                        child: ListView.builder(
                          primary: false,
                          itemCount: prizes.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 6),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (prizes[index].startsWith('+'))
                                    Container(
                                      width: 3,
                                      height: 3,
                                      margin: EdgeInsets.only(top: 5, right: 6),
                                      decoration: BoxDecoration(
                                        color: isChampion
                                            ? Color(0xFFFFD700)
                                            : Color(0xFF4CAF50),
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  Expanded(
                                    child: Text(
                                      prizes[index],
                                      style: TextStyle(
                                        fontSize: isMobile ? 6.5 : 9,
                                        color: Colors.black,
                                        height: 1.2,
                                        fontWeight:
                                            prizes[index].startsWith('và')
                                            ? FontWeight.w400
                                            : FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
