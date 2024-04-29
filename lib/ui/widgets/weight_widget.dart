import 'package:bmi_calculator/ui/components/number_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WeightWidget extends StatelessWidget {
  final int weight;
  final Function(int) onChanged;

  const WeightWidget({
    super.key,
    required this.weight,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Weight(kg)',
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
          margin:  EdgeInsets.symmetric(horizontal: 8.w),
          decoration: BoxDecoration(
            border: Border.all(
              width: 2,
              color: Colors.grey,
            ),
            borderRadius: BorderRadius.circular(10.r),
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
               Positioned(
                bottom: 40.h,
                child: RotatedBox(
                  quarterTurns: 45,
                  child: Icon(
                    Icons.play_arrow_rounded,
                    color: Color(0xff2466CF),
                    size: 25.sp,
                  ),
                ),
              ),
              NumberPickerComponent(
                height: weight,
                onChanged: onChanged,
                itemCount: 3,
                minValue: 40,
                maxValue: 200,
              ),
            ],
          ),
        )
      ],
    );
  }
}
