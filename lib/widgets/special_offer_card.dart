import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mart_app_screen/utils/colors.dart';

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      height: screenHeight * 0.2,
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        color: AppColors.SpecialCardColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 18,
            left: 32,
            child: Text(
              'Save with weekly',
              style: GoogleFonts.lexend(
                color: AppColors.WhiteColor,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Positioned(
            top: screenHeight / 17,
            left: 32,
            child: Text(
              'Special',
              style: GoogleFonts.lexend(
                color: AppColors.WhiteColor,
                fontSize: 26,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),

          Positioned(
            right: 0,
            bottom: 0,
            child: Align(
              alignment: Alignment.bottomRight,
              child: ClipRRect(
                borderRadius: BorderRadiusGeometry.only(
                  bottomRight: Radius.circular(10),
                ),
                child: Image.asset(
                  'assets/images/food_banner.png',
                  width: screenWidth * 0.37,
                  height: screenHeight * 0.15,

                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Text('Image not found: $error');
                  },
                ),
              ),
            ),
          ),

          Positioned(
            top: screenHeight / 8.5,
            left: screenWidth / 16,
            child: SizedBox(
              height: 28,
              width: 100,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.SpecialCardColor,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: AppColors.WhiteColor, width: 1),
                    borderRadius: BorderRadius.circular(100),
                  ),
                  padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                ),
                child: Text(
                  'Shop now',
                  style: GoogleFonts.lexend(
                    color: AppColors.WhiteColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
