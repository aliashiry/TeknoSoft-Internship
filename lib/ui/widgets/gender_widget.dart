import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/gender_container.dart';

class GenderWidget extends StatelessWidget {
  final Function()? onTapMale;
  final Function()? onTapFemale;
  final bool isSelectedMale;
  final bool isSelectedFemale;

  const GenderWidget({
    super.key,
    this.onTapMale,
    this.onTapFemale,
    required this.isSelectedMale,
    required this.isSelectedFemale,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Gender',
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
          padding:  EdgeInsets.symmetric(vertical: 8.h, horizontal:8.w),
          child: Row(
            children: [
              Expanded(
                child: GenderContainer(
                  onTap: onTapMale,
                  iconData: Icons.boy,
                  text: 'Male',
                  isSelected: isSelectedMale,
                ),
              ),
               SizedBox(
                width: 20.w,
              ),
              Expanded(
                child: GenderContainer(
                  onTap: onTapFemale,
                  iconData: Icons.woman,
                  text: 'Female',
                  isSelected: isSelectedFemale,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
