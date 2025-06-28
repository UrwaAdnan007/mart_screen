// lib/meal_plan_card.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MealPlanCard extends StatelessWidget {
  const MealPlanCard({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    return Container(
      width: screenWidth * 0.85,
      height: screenHeight * 0.25,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(screenWidth * 0.022),
        border: Border.all(color: Color.fromARGB(255, 223, 224, 228), width: 1),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            flex: 7,
            child: Image.asset(
              'assets/images/mealplan.png',
              fit: BoxFit.fill,
              width: screenWidth * 0.85,
              errorBuilder: (context, error, stackTrace) {
                return Icon(Icons.error, color: Colors.red);
              },
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.02),
                    child: Text(
                      'Kokoro: Chicken katsu & sushi',
                      textAlign: TextAlign.start,
                      style: GoogleFonts.lexend(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        Icons.star_rate_rounded,
                        color: Color(0xFFFFC107),
                        size: 18,
                      ),
                      Text(
                        '5.0',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF767C8C),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: screenWidth * 0.0056,
                          right: screenWidth * 0.022,
                        ),
                        child: Text(
                          '(500+ ratings)',
                          textAlign: TextAlign.start,
                          style: GoogleFonts.lexend(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFFA8AEBF),
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(
                        Icons.watch_later,
                        size: 16,
                        color: Color(0xFF767C8C),
                      ),
                      SizedBox(width: screenWidth * 0.0056),
                      Text(
                        '3.30 miles away',
                        textAlign: TextAlign.start,
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF767C8C),
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
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
