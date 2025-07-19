import 'package:flutter/material.dart';
import 'organization_screen.dart';
import 'intro_section.dart';
import 'mission_vision_section.dart';
import 'statistics_section.dart';
import 'timeline_section.dart';
import 'overview_section.dart';
import 'side_activities_section.dart';
import 'contestant_section.dart';
import 'partner_section.dart';
import 'sponsor_section.dart';
import 'prize_structure_section.dart';
import 'contact_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static HomeScreenState? of(BuildContext context) {
    return context.findAncestorStateOfType<HomeScreenState>();
  }

  @override
  State<HomeScreen> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  final scrollController = ScrollController();
  final homeKey = GlobalKey();
  final orgKey = GlobalKey();
  final introKey = GlobalKey();
  final timelineKey = GlobalKey();
  final overviewKey = GlobalKey();
  final sideActivitiesKey = GlobalKey();
  final contestantKey = GlobalKey();
  final partnerKey = GlobalKey();
  final prizeStructureKey = GlobalKey();
  final contactKey = GlobalKey();
  final sponsorKey = GlobalKey();

  void scrollToHomeSection() {
    scrollController.animateTo(
      0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
    );
  }

  void scrollToOrgSection() {
    final ctx = orgKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToIntroSection() {
    final ctx = introKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToTimelineSection() {
    final ctx = timelineKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToOverviewSection() {
    final ctx = overviewKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToSideActivitiesSection() {
    final ctx = sideActivitiesKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToContestantSection() {
    final ctx = contestantKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToPartnerSection() {
    final ctx = partnerKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToPrizeStructureSection() {
    final ctx = prizeStructureKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToContactSection() {
    final ctx = contactKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  void scrollToSponsorSection() {
    final ctx = sponsorKey.currentContext;
    if (ctx != null) {
      Scrollable.ensureVisible(
        ctx,
        duration: const Duration(milliseconds: 600),
        curve: Curves.easeInOut,
      );
    }
  }

  // Sử dụng callback từ parent
  void handlePrizeStructureTap() {
    scrollToPrizeStructureSection();
  }

  Widget buildMenuButton(String text, bool isMobile, {VoidCallback? onTap}) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFFB6B65A).withOpacity(0.4),
          foregroundColor: Colors.white,
          padding: EdgeInsets.symmetric(vertical: isMobile ? 12 : 18),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
            side: const BorderSide(color: Color(0xFFB6B65A), width: 2),
          ),
          elevation: 6,
          shadowColor: Colors.black45,
          textStyle: TextStyle(
            fontSize: isMobile ? 15 : 20,
            fontWeight: FontWeight.bold,
            shadows: const [
              Shadow(
                blurRadius: 6,
                color: Colors.black38,
                offset: Offset(1, 2),
              ),
            ],
          ),
        ),
        onPressed: onTap ?? () {},
        child: Text(text, textAlign: TextAlign.center),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isMobile = size.width < 600;

    return Scaffold(
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset('assets/images/hangda.jpg', fit: BoxFit.cover),
          ),
          // Overlay for readability
          Positioned.fill(
            child: Container(color: Colors.black.withOpacity(0.3)),
          ),
          // Main content
          SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                // Banner on top
                Stack(
                  children: [
                    Container(
                      key: homeKey,
                      width: double.infinity,
                      height: isMobile ? 160 : 220,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/ecompete.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 8 : 32,
                    vertical: isMobile ? 24 : 40,
                  ),
                  child: Column(
                    children: [
                      Text(
                        'MỤC LỤC',
                        style: TextStyle(
                          fontSize: isMobile ? 28 : 36,
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
                      SizedBox(height: isMobile ? 16 : 24),
                      GridView.count(
                        crossAxisCount: 2,
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        mainAxisSpacing: isMobile ? 14 : 20,
                        crossAxisSpacing: isMobile ? 14 : 32,
                        childAspectRatio: 2.8,
                        children: [
                          buildMenuButton(
                            '01. Đơn vị tổ chức',
                            isMobile,
                            onTap: scrollToOrgSection,
                          ),
                          buildMenuButton(
                            '05. Hoạt động bên lề',
                            isMobile,
                            onTap: scrollToSideActivitiesSection,
                          ),
                          buildMenuButton(
                            '02. Giới thiệu cuộc thi',
                            isMobile,
                            onTap: scrollToIntroSection,
                          ),
                          buildMenuButton(
                            '06. Đối tượng dự thi',
                            isMobile,
                            onTap: scrollToContestantSection,
                          ),
                          buildMenuButton(
                            '03. Timeline cuộc thi',
                            isMobile,
                            onTap: scrollToTimelineSection,
                          ),
                          buildMenuButton(
                            '07. Đối tác đồng hành',
                            isMobile,
                            onTap: scrollToPartnerSection,
                          ),
                          buildMenuButton(
                            '04. Tổng quan cuộc thi',
                            isMobile,
                            onTap: scrollToOverviewSection,
                          ),
                          buildMenuButton(
                            '08. Thông tin liên hệ',
                            isMobile,
                            onTap: scrollToContactSection,
                          ),
                        ],
                      ),
                      SizedBox(height: isMobile ? 32 : 60),
                    ],
                  ),
                ),
                // Đơn vị tổ chức
                Container(key: orgKey, child: const OrganizationSection()),
                // Giới thiệu cuộc thi
                Container(key: introKey, child: const IntroSection()),
                // Sứ mệnh & Tầm nhìn
                const MissionVisionSection(),
                // Thống kê những con số
                const StatisticsSection(),
                // Timeline cuộc thi
                Container(key: timelineKey, child: const TimelineSection()),
                // Tổng quan cuộc thi
                Container(key: overviewKey, child: const OverviewSection()),
                // Hoạt động bên lề
                Container(
                  key: sideActivitiesKey,
                  child: const SideActivitiesSection(),
                ),
                // Đối tượng dự thi
                Container(key: contestantKey, child: const ContestantSection()),
                // Đối tác đồng hành
                Container(key: partnerKey, child: const PartnerSection()),
                // Nhà tài trợ
                Container(key: sponsorKey, child: const SponsorSection()),
                // Cơ cấu giải thưởng
                Container(
                  key: prizeStructureKey,
                  child: const PrizeStructureSection(),
                ),
                // Thông tin liên hệ
                Container(
                  key: contactKey,
                  padding: EdgeInsets.symmetric(
                    horizontal: isMobile ? 8 : 32,
                    vertical: isMobile ? 24 : 40,
                  ),
                  child: const ContactSection(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
