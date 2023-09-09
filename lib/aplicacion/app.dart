import 'package:ecommarce_rafat/presentresion/ui/widgets/primary_color_pelate.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../presentresion/ui/screens/splash_sceeen.dart';

class MyecommerceProject extends StatelessWidget {
  const MyecommerceProject({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: ThemeData(
        primarySwatch:
            MaterialColor(AppColors.PrimaryColor.value, AppColors.color),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Colors.white24,
          hintStyle: const TextStyle(color: Colors.white24),
          labelStyle: GoogleFonts.poppins(fontSize: 16, color: Colors.white),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Colors.yellow, width: 1)),
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(100)),
              borderSide: BorderSide.none),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(100)),
            borderSide: BorderSide(color: Colors.white, width: 2),
          ),
        ),
      ),
    );
  }
}
