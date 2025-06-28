import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mart_app_screen/utils/colors.dart';
import 'package:intl/intl.dart';

class CustomProductCard extends StatelessWidget {
  final String title;
  final String price;
  final String imagePath;

  const CustomProductCard({
    super.key,
    required this.title,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      width: screenWidth * 0.35,
      height: screenHeight * 0.22,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(screenWidth * 0.022),
        border: Border.all(
          color: Color.fromARGB(255, 223, 224, 228),
          width: screenWidth * 0.0028,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            child: SizedBox(
              width: screenWidth * 0.328,
              height: screenHeight * 0.13,
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.error, color: Colors.red);
                },
              ),
            ),
          ),
          Positioned(
            top: screenHeight * 0.007,
            right: screenWidth * 0.028,
            child: Icon(
              Icons.favorite_border,
              color: Colors.black,
              size: screenHeight * 0.033,
            ),
          ),
          Positioned(
            bottom: screenHeight * 0.062,
            right: screenWidth * 0.014,
            child: CircleAvatar(
              radius: screenWidth * 0.05,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: screenWidth * 0.039,
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: screenHeight * 0.022,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.022,
                vertical: screenHeight * 0.011,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    textAlign: TextAlign.start,
                    style: GoogleFonts.lexend(
                      fontSize: screenHeight * 0.017,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    NumberFormat.currency(
                      locale: 'en_US',
                      symbol: '\$',
                    ).format(double.parse(price)),
                    style: GoogleFonts.lexend(
                      fontSize: screenHeight * 0.017,
                      fontWeight: FontWeight.w600,
                      color: AppColors.BlackColor,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
