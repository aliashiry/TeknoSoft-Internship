
import 'package:bmi_calculator/data/Models/person_model.dart';
import 'package:bmi_calculator/data/Models/result_model.dart';
import 'package:bmi_calculator/ui/Screens/result_screen.dart';
import 'package:bmi_calculator/ui/Widgets/age_widget.dart';
import 'package:bmi_calculator/ui/Widgets/gender_widget.dart';
import 'package:bmi_calculator/ui/Widgets/height_widget.dart';
import 'package:bmi_calculator/ui/Widgets/weight_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PersonModel personModel = PersonModel(height: 164, weight: 52, age: 22, male: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor:const Color(0xff2466CF),
        title: Padding(
          padding: EdgeInsets.symmetric( vertical: 8.h, horizontal: 8.h),
          child: Center(
            child: Text(
              'BMI Calculator',
              style: GoogleFonts.poppins(
                textStyle: TextStyle(
                  fontSize: 25.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            GenderWidget(
              isSelectedMale: personModel.male,
              isSelectedFemale: personModel.male ? false : true,
              onTapMale: () {
                setState(() {
                  personModel.male = true;
                });
              },
              onTapFemale: () {
                setState(() {
                  personModel.male = false;
                });
              },
            ),
            const Spacer(),
            HeightWidget(
              height: personModel.height,
              onChanged: (height) {
                setState(() {
                  personModel.height = height;
                });
              },
            ),
            const Spacer(),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 16.0.h,
              ),
              child: Row(
                children: [
                  Expanded(
                    child: AgeWidget(
                      age: personModel.age,
                      onPressedAdd: () {
                        setState(() {
                          personModel.age++;
                        });
                      },
                      onPressedMin: () {
                        if (personModel.age != 2) {
                          setState(() {
                            personModel.age--;
                          });
                        }
                      },
                    ),
                  ),
                  Expanded(
                    child: WeightWidget(
                      weight: personModel.weight,
                      onChanged: (weight) {
                        setState(() {
                          personModel.weight = weight;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
              child: MaterialButton(
                height: 60.h,
                minWidth: double.infinity,
                textColor: Colors.white,
                color: const Color(0xff2466CF),
                shape: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                onPressed: () {
                  double result = (personModel.weight) /
                      ((personModel.height / 100) * (personModel.height / 100));
                  ResultModel resultModel = ResultModel(result: result);
                  resultModel.assignStatus();
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (_) => ResultScreen(
                              model: personModel, resultModel: resultModel)));
                },
                child: Text(
                  'CALCULATE BMI',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
