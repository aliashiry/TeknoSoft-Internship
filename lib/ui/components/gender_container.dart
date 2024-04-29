import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class GenderContainer extends StatelessWidget {
  final IconData iconData;
  final String text;
  final bool isSelected;
  final Function()? onTap;

  const GenderContainer({
    super.key,
    required this.iconData,
    required this.text,
    required this.isSelected,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 2 / 2,
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? const Color(0xff2466CF).withOpacity(.2)
                : const Color(0xff8B8B8B).withOpacity(.4),
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isSelected
                  ? const Color(0xff2466CF)
                  : const Color(0xff8B8B8B),
              width: isSelected ? 2 : 0,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              isSelected
                  ?  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.check_circle,
                          size: 20.sp,
                          color: const Color(0xff2466CF),
                        ),
                      ),
                    )
                  : const Text(""),
              Icon(
                iconData,
                size: 100.sp,
                color: isSelected
                    ? const Color(0xff2466CF)
                    : const Color(0xff8B8B8B),
              ),
              Text(
                text,
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 25.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
