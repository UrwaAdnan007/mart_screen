import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomHeaderProducts extends StatelessWidget {
  const CustomHeaderProducts({super.key, required this.Title});
  final String Title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Title,
            style: GoogleFonts.lexend(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),

          Container(
            width: MediaQuery.of(context).size.width * 0.27,
            height: MediaQuery.of(context).size.height * 0.033,
            decoration: BoxDecoration(
              color: Color(0xffF5F6FA),
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'More Items',
                    style: GoogleFonts.lexend(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black87,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_outlined,
                    color: Colors.black,
                    size: 12,
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
