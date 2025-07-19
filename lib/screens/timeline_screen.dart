import 'package:flutter/material.dart';

class TimelineScreen extends StatelessWidget {
  const TimelineScreen({super.key});

  final List<Map<String, String>> timeline = const [
    {'round': 'Vòng 1', 'date': '25 - 27/6'},
    {'round': 'Vòng 2', 'date': '2 - 11/7'},
    {'round': 'Vòng 3', 'date': '16/7 - 13/8'},
    {'round': 'Chung kết', 'date': '16/8'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Timeline")),
      body: ListView.builder(
        itemCount: timeline.length,
        itemBuilder: (context, index) {
          final item = timeline[index];
          return ListTile(
            leading: const Icon(Icons.calendar_today),
            title: Text(item['round']!),
            subtitle: Text(item['date']!),
          );
        },
      ),
    );
  }
}
