import 'package:flutter/material.dart';
import 'prize_structure_section.dart';

class PrizeStructureDemo extends StatelessWidget {
  const PrizeStructureDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1a1a1a),
      appBar: AppBar(
        title: Text('Demo Cơ Cấu Giải Thưởng'),
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Section cơ cấu giải thưởng
            const PrizeStructureSection(),
            
            // Thông tin về thiết kế
            Padding(
              padding: EdgeInsets.all(20),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Color(0xFFB6B65A), width: 2),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Thông tin thiết kế:',
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xFF4CAF50),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 12),
                    Text(
                      '• Hiển thị cả 4 loại giải thưởng trong cùng một màn hình\n'
                      '• 01 QUÁN QUÂN (93.395.000 VNĐ) - Màu vàng đặc biệt\n'
                      '• 01 Á QUÂN (51.995.000 VNĐ)\n'
                      '• 01 QUÝ QUÂN (47.870.000 VNĐ)\n'
                      '• TOP 05 (41.245.000 VNĐ)\n'
                      '• Tổng giá trị: 234.505.000 VNĐ\n'
                      '• Responsive design cho mobile và desktop\n'
                      '• Sử dụng hình ảnh khung từ assets/images/khungcocau.png',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.white70,
                        height: 1.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
} 