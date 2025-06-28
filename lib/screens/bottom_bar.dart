import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mart_app_screen/utils/colors.dart';

class BottomBar extends StatelessWidget {
  final int currentIndex;
  const BottomBar({super.key, this.currentIndex = 0});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: AppColors.WhiteColor,
      currentIndex: currentIndex,
      selectedItemColor: Color(0xFF62BE12),
      unselectedItemColor: Color(0xFFA8AEBF),
      selectedLabelStyle: GoogleFonts.lexend(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: GoogleFonts.lexend(
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/home.png', width: 24, height: 24),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/browse.png', width: 24, height: 24),
          label: 'Browse',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/orders.png', width: 24, height: 24),
          label: 'Orders',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/inbox.png', width: 24, height: 24),
          label: 'Inbox',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/icons/accounts.png', width: 24, height: 24),
          label: 'Account',
        ),
      ],
    );
  }
}
