import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ColumnItem extends StatelessWidget {
  const ColumnItem({
    super.key,
    required this.model,
    required this.text,
  });

  final int model;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         SizedBox(
          height: 5.h,
        ),
        Text(
          '$model',
          style: GoogleFonts.poppins(
            textStyle: TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
         SizedBox(
          height: 10.h,
        ),
        Text(
          text,
          style: GoogleFonts.poppins(
            textStyle:  TextStyle(
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              color: Colors.grey,
            ),
          ),
        ),
      ],
    );
  }
}
