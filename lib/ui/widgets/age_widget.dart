import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeWidget extends StatelessWidget {
  final int age;
  final Function()? onPressedAdd;
  final Function()? onPressedMin;

  const AgeWidget({
    super.key,
    required this.age,
    this.onPressedAdd,
    this.onPressedMin,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Age',
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
        Container(
          height: 60.h,
          margin: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2.w,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: onPressedMin,
                icon: const Icon(Icons.remove),
              ),
              Text(
                '$age',
                style: GoogleFonts.poppins(
                  textStyle:TextStyle(
                    fontSize: 30.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: onPressedAdd,
                icon: const Icon(Icons.add),
              ),
            ],
          ),
        )
      ],
    );
  }
}
