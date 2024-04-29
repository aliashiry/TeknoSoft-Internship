import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:numberpicker/numberpicker.dart';

class NumberPickerComponent extends StatelessWidget {
  final int height;
  final int minValue;
  final int maxValue;
  final Function(int) onChanged;
  final int itemCount;

  const NumberPickerComponent({
    super.key,
    required this.height,
    required this.onChanged,
    required this.minValue,
    required this.maxValue,
    this.itemCount = 7,
  });

  @override
  Widget build(BuildContext context) {
    return NumberPicker(
      itemCount: itemCount,
      minValue: minValue,
      maxValue: maxValue,
      itemWidth: 45.w,
      itemHeight: 80.h,
      value: height,
      axis: Axis.horizontal,
      selectedTextStyle: GoogleFonts.poppins(
        textStyle: TextStyle(
          fontSize: 22.sp,
          fontWeight: FontWeight.bold,
        ),
      ),
      onChanged: onChanged,
    );
  }
}
