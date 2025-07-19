import 'package:flutter/material.dart';
import 'screens/ecompete_navbar.dart';

void main() {
  runApp(const EcomApp());
}

class EcomApp extends StatelessWidget {
  const EcomApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-COMPETE',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Montserrat', // Có thể thêm font đẹp sau
      ),
      home: const ECompeteNavbar(),
    );
  }
}
