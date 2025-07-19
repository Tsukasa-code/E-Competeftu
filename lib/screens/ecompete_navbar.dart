import 'package:flutter/material.dart';
import 'home_screen.dart';

class ECompeteNavbar extends StatelessWidget {
  const ECompeteNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    void handleScrollToHomeSection() {
      // Sử dụng Navigator để tìm HomeScreen và gọi scroll
      final navigator = Navigator.of(context);
      if (navigator.canPop()) {
        navigator.pop(); // Đóng drawer
      }
      // Gọi scroll qua context
      _scrollToHome(context);
    }
    void handleScrollToPrizeStructureSection() {
      Navigator.pop(context);
      _scrollToPrizeStructure(context);
    }
    void handleScrollToIntroSection() {
      Navigator.pop(context);
      _scrollToIntro(context);
    }
    void handleScrollToPartnerSection() {
      Navigator.pop(context);
      _scrollToPartner(context);
    }
    void handleScrollToSponsorSection() {
      Navigator.pop(context);
      _scrollToSponsor(context);
    }
    void handleScrollToContactSection() {
      Navigator.pop(context);
      _scrollToContact(context);
    }

    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.black),
              child: Text(
                'E-COMPETE MENU',
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              title: Text('Trang chủ'),
              onTap: handleScrollToHomeSection,
            ),
            ListTile(
              title: Text('Cơ cấu giải thưởng'),
              onTap: handleScrollToPrizeStructureSection,
            ),
            ListTile(
              title: Text('Giới thiệu'),
              onTap: handleScrollToIntroSection,
            ),
            ListTile(title: Text('Thể lệ')),
            ListTile(title: Text('Dấu ấn E-COMPETE')),
            ListTile(
              title: Text('Đối tác đồng hành'),
              onTap: handleScrollToPartnerSection,
            ),
            ListTile(
              title: Text('Nhà tài trợ'),
              onTap: handleScrollToSponsorSection,
            ),
            ListTile(
              title: Text('Liên hệ'),
              onTap: handleScrollToContactSection,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(top: 30.0),
          child: Image.asset(
            'assets/images/logo.png',
            height: 120,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: HomeScreen(),
    );
  }

  // Helper functions để gọi scroll
  void _scrollToHome(BuildContext context) {
    // Tạm thời dùng scroll to top
    // Có thể implement sau
  }
  void _scrollToPrizeStructure(BuildContext context) {
    // Tạm thời dùng scroll to top
    // Có thể implement sau
  }
  void _scrollToIntro(BuildContext context) {
    // Tạm thời dùng scroll to top
    // Có thể implement sau
  }
  void _scrollToPartner(BuildContext context) {
    // Tạm thời dùng scroll to top
    // Có thể implement sau
  }
  void _scrollToSponsor(BuildContext context) {
    // Tạm thời dùng scroll to top
    // Có thể implement sau
  }
  void _scrollToContact(BuildContext context) {
    // Tạm thời dùng scroll to top
    // Có thể implement sau
  }
}
