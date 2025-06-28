import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mart_app_screen/utils/colors.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return SafeArea(
      child: Container(
        color: AppColors.primaryColor,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(width: screenWidth * 0.02),
                  Icon(
                    Icons.location_on_outlined,
                    color: Colors.white,
                    size: screenHeight * 0.025,
                  ),
                  SizedBox(width: screenWidth * 0.01),
                  Expanded(
                    child: Row(
                      children: [
                        Flexible(
                          child: Text(
                            '3924 Bubby Drive, Austin',
                            style: GoogleFonts.lexend(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_down_outlined,
                          color: Colors.white,
                          size: screenHeight * 0.025,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: screenHeight * 0.017),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Flexible(
                    child: Container(
                      padding: EdgeInsets.only(left: screenWidth * 0.03),
                      height: screenHeight * 0.05,
                      margin: EdgeInsets.only(right: screenWidth * 0.01),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search Tiger it',
                          hintStyle: GoogleFonts.lexend(
                            color: Color(0xFFC8CCD9),
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIcon: Image.asset(
                            'assets/icons/search.png',
                            width: 30,
                            height: 30,
                          ),
                          filled: true,
                          fillColor: Colors.white,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide.none,
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            vertical: screenHeight * 0.01,
                            horizontal: screenWidth * 0.02,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: screenWidth * 0.02),
                  CircleAvatar(
                    radius: screenHeight * 0.025,
                    backgroundColor: Colors.white,
                    child: Stack(
                      children: [
                        Image.asset(
                          'assets/icons/cart.png',
                          width: 24,
                          height: 24,
                        ),
                        Positioned(
                          right: 0,
                          top: screenHeight * 0.001,
                          child: Container(
                            padding: EdgeInsets.all(screenHeight * 0.003),
                            decoration: BoxDecoration(
                              color: AppColors.primaryColor,
                              shape: BoxShape.circle,
                            ),
                            constraints: BoxConstraints(
                              minWidth: screenWidth * 0.008,
                              minHeight: screenHeight * 0.003,
                            ),
                            child: Text(
                              '10',
                              style: GoogleFonts.lexend(
                                color: Colors.white,
                                fontSize: 8,
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
