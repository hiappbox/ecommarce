import 'package:ecommarce_rafat/presentresion/ui/screens/otp_verification_screen.dart';
import 'package:ecommarce_rafat/presentresion/ui/widgets/app_backgraound_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utility/assets_image.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() =>
      _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appbackgraound(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Center(
                    child: SvgPicture.asset(
                  AssetsImages.logoSVG,
                  width: 80,
                )),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  "Welcome Back",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 28, color: Colors.white),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Pleass Enter Your Email Address",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 14, color: Colors.white60),
                ),
                const SizedBox(height: 24,),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: GoogleFonts.poppins(color: Colors.white),
                  decoration: const InputDecoration(hintText: "email"),
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  height: 46,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.to(const OTPVerificationScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Next",style: GoogleFonts.poppins(color: Colors.brown,fontWeight: FontWeight.w700),),
                        const Icon((Icons.arrow_forward),color: Colors.brown,)
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)
                      )
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
