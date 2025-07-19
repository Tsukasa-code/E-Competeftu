import 'package:flutter/material.dart';

class FAQScreen extends StatelessWidget {
  const FAQScreen({super.key});

  final List<Map<String, String>> faqList = const [
    {
      'question': 'E-COMPETE là gì?',
      'answer': 'E-COMPETE là cuộc thi mô phỏng khởi nghiệp dành cho sinh viên FTU.'
    },
    {
      'question': 'Ai có thể tham gia?',
      'answer': 'Tất cả sinh viên FTU và các trường đại học khác trên cả nước.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Câu hỏi thường gặp")),
      body: ListView(
        children: faqList
            .map((item) => ExpansionTile(
                  title: Text(item['question']!),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item['answer']!),
                    )
                  ],
                ))
            .toList(),
      ),
    );
  }
}
