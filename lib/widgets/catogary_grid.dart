import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mart_app_screen/utils/colors.dart';

class CategoryGrid extends StatelessWidget {
  const CategoryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.sizeOf(context).height;
    double screenWidth = MediaQuery.sizeOf(context).width;

    final List<Map<String, String>> categories = [
      {'name': 'Fruits', 'image': 'assets/images/fruits.png'},
      {'name': 'Bakery', 'image': 'assets/images/bakery.png'},
      {'name': 'Meat', 'image': 'assets/images/meat.png'},
      {'name': 'Dairy', 'image': 'assets/images/dairy.png'},
      {'name': 'Pantry', 'image': 'assets/images/pantry.png'},
      {'name': 'Snacks', 'image': 'assets/images/snacks.png'},
      {'name': 'Freezer', 'image': 'assets/images/freezer.png'},
      {'name': 'More', 'image': 'assets/images/more.png'},
    ];

    return Column(
      children: [
        GridView.builder(
          padding: EdgeInsets.symmetric(
            horizontal: screenWidth * 0.022,
            vertical: screenHeight * 0.046,
          ),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: screenWidth * 0.014,
            mainAxisSpacing: screenHeight * 0.030,
            childAspectRatio: 0.8,
          ),
          itemCount: categories.length,
          shrinkWrap: true, // Allows the GridView to fit within a Column
          physics:
              const NeverScrollableScrollPhysics(), // Disable scrolling (handled by parent)
          itemBuilder: (context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  categories[index]['image']!,
                  width: screenWidth * 0.5,
                  height: screenWidth * 0.2,
                  fit: BoxFit.contain,
                  errorBuilder: (context, error, stackTrace) {
                    return Icon(Icons.error, color: Colors.red);
                  },
                ),
                const SizedBox(height: 5),
                Text(
                  categories[index]['name']!,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.lexend(
                    color: AppColors.BlackColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            );
          },
        ),

        Container(
          height: screenHeight * 0.1,
          width: screenWidth * 0.9,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: AppColors.primaryColor,
          ),
          child: Stack(
            children: [
              // Gradient background container
              Positioned(
                child: Container(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.2,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 139, 194, 92),
                        AppColors.primaryColor,
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      stops: [0.4, 1],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(70),
                      bottomLeft: Radius.circular(70),
                      topRight: Radius.circular(screenWidth * 0.21),
                      bottomRight: Radius.circular(screenWidth * 0.21),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: screenHeight * 0.015,
                left: screenWidth * 0.025,
                child: SizedBox(
                  width: screenWidth * 0.13,
                  height: screenWidth * 0.13,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Image.asset('assets/images/prize.png'),
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.055,
                left: screenWidth * 0.05,
                right: screenWidth * 0.05,
                child: Center(
                  child: Text(
                    '100 XP to your next treasure',
                    style: GoogleFonts.lexend(
                      color: AppColors.WhiteColor,
                      fontSize: screenHeight * 0.016,
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),

              Positioned(
                bottom: screenHeight * 0.04,
                left: screenWidth * 0.2,
                child: Container(
                  height: screenHeight * 0.011,
                  width: screenWidth * 0.5,
                  decoration: BoxDecoration(
                    color: Color(0xFF45850D),
                    borderRadius: BorderRadius.all(
                      Radius.circular(screenWidth * 0.014),
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: screenHeight * 0.04,
                left: screenWidth * 0.2,
                child: Container(
                  height: screenHeight * 0.011,
                  width: screenWidth * 0.25,
                  decoration: BoxDecoration(
                    color: Color(0xFF274C07),
                    borderRadius: BorderRadius.all(
                      Radius.circular(screenWidth * 0.014),
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: screenHeight * 0.015,
                left: screenWidth * 0.2,
                child: Center(
                  child: Text(
                    'Hi, welcome to Tigerit!',
                    style: GoogleFonts.lexend(
                      color: AppColors.WhiteColor,
                      fontSize: screenHeight * 0.014,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Container(
                  height: screenHeight * 0.08,
                  width: screenWidth * 0.18,
                  decoration: BoxDecoration(
                    color: Color(0xFF45850D),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 115, 204, 38),
                        Color.fromARGB(255, 87, 167, 17),
                      ],
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      stops: [0.1, 1],
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(screenWidth * 0.24),
                      bottomLeft: Radius.circular(screenWidth * 0.24),
                      topRight: Radius.circular(screenWidth * 0.09),
                      bottomRight: Radius.circular(screenWidth * 0.15),
                    ),
                  ),
                  child: Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.white,
                    size: screenHeight * 0.028,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
