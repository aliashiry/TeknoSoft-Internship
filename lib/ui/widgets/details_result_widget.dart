import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/colum_items.dart';

class DetailResultWidget extends StatelessWidget {
  final IconData iconData;
  final String gender;
  final int height;
  final int age;
  final int weight;

  const DetailResultWidget({
    super.key,
    required this.iconData,
    required this.gender,
    required this.height,
    required this.age,
    required this.weight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      margin: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.grey,
          width: 1.w,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Icon(
                iconData,
                size: 45.sp,
              ),
               SizedBox(
                height: 5.h,
              ),
              Text(
                gender,
                style: GoogleFonts.poppins(
                  textStyle:TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ),
            ],
          ),
          ColumnItem(
            model: age,
            text: 'Age',
          ),
          ColumnItem(
            model: height,
            text: 'Height',
          ),
          ColumnItem(
            model: weight,
            text: 'Weight',
          ),
        ],
      ),
    );
  }
}
