import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultWidget extends StatelessWidget {
  final double result;
  final String status;

  const ResultWidget({
    super.key,
    required this.result,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            'Result',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 25.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Center(
          child: Text(
            'Your BMI is',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
         SizedBox(
          height: 5.h,
        ),
        Center(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff2466CF),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Text(
                    result.toStringAsFixed(1),
                    style: GoogleFonts.poppins(
                      textStyle:  TextStyle(
                        fontSize: 25.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    'kg/m2 ',
                    style: GoogleFonts.poppins(
                      textStyle: TextStyle(
                        fontSize: 25.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
         SizedBox(
          height: 10.h,
        ),
        Center(
          child: Text(
            '($status)',
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
