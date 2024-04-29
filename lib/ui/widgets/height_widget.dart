import 'package:bmi_calculator/ui/components/height_items.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/number_picker.dart';

class HeightWidget extends StatelessWidget {
  final int height;
  final Function(int) onChanged;

  const HeightWidget({
    super.key,
    required this.height,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 6.0.w),
      child: Column(
        children: [
          Text(
            'Height (cm)',
            style: GoogleFonts.poppins(
              textStyle:TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
           SizedBox(
            height: 5.h,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: 8.h,
              horizontal: 8.w,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: Colors.white,
                border: Border.all(
                  color: Colors.blue,
                ),
              ),
              child: Column(
                children: [
                  NumberPickerComponent(
                    height: height,
                    onChanged: onChanged,
                    minValue: 100,
                    maxValue: 230,
                  ),
                  const HeightItem(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
