import 'package:bmi_calculator/ui/Screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  runApp(const BMICalculator());
}

class BMICalculator extends StatelessWidget {
  const BMICalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(430, 932),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child){
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      );
    });
  }
}
