import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class RulebookScreen extends StatelessWidget {
  const RulebookScreen({super.key});

  final String rulebookUrl = 'https://www.ecomftu.com/ecompete/rulebook.pdf';

  void _openRulebook() async {
    final uri = Uri.parse(rulebookUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    } else {
      throw 'Không thể mở link $rulebookUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Rulebook")),
      body: Center(
        child: ElevatedButton(
          onPressed: _openRulebook,
          child: const Text("Xem Rulebook"),
        ),
      ),
    );
  }
}
