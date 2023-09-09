import 'dart:async';
import 'package:ecommarce_rafat/presentresion/ui/screens/complete_profile.dart';
import 'package:ecommarce_rafat/presentresion/ui/widgets/app_backgraound_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../utility/assets_image.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({super.key});

  @override
  State<OTPVerificationScreen> createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {

  int timercount =120;

  @override
  initState(){
    super.initState();
    StartTimer();
  }

  StartTimer(){
    Timer? timer;
      Timer.periodic(const Duration(seconds: 1), (timer) {
        if (timercount > 0){
          timercount--;
          setState(() {});
        }else{
          timer.cancel();
        }
      });
  }

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
                  "Enter OTP Code",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 28, color: Colors.white),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "A 4 digit OTP code has bin send",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 14, color: Colors.white60),
                ),
                const SizedBox(height: 24,),
                PinCodeTextField(
                  validator: (String? value){
                    if(value?.isEmpty ?? true){
                      return "Enter Your OTP";
                    }
                  },

                  keyboardType: TextInputType.number,
                  length: 4,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  obscureText: false,
                  animationType: AnimationType.fade,
                  pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(10),
                      borderWidth: 1,
                      fieldHeight: 50,
                      fieldWidth: 45,
                      activeColor: Colors.white,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white24,
                      inactiveColor: Colors.white24,



                      selectedFillColor: Colors.white,
                      selectedColor: Colors.white,
                      selectedBorderWidth: 1
                  ),
                  animationDuration: const Duration(milliseconds: 300),
                  backgroundColor: Colors.transparent,
                  cursorColor: Colors.brown,
                  enablePinAutofill: true,
                  enableActiveFill: true,
                  onCompleted: (v) {
                    print("Completed");
                  }, appContext: context,
                ),
                const SizedBox(height: 16,),
                SizedBox(
                  height: 46,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Get.off(const CompleteProfile());
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)
                        ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Next",style: GoogleFonts.poppins(color: Colors.brown,fontWeight: FontWeight.w700),),
                        const Icon((Icons.arrow_forward),color: Colors.brown,)
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16,),
                RichText(text: TextSpan(
                  style: const TextStyle(color: Colors.grey),
                  children: [
                    const TextSpan( text:" This code well expire in "),
                    TextSpan( text:"$timercount",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.orange)),
                    TextSpan( text:"s",style: GoogleFonts.poppins(fontWeight: FontWeight.w700,color: Colors.orange)),
                  ]
                )),
                const SizedBox(height: 16,),
                Visibility(
                    visible: (timercount == 0),
                    replacement: Padding(
                      padding: const EdgeInsets.only(top: 16.0),
                      child: Text("Resent it",style: GoogleFonts.poppins(color: Colors.grey,fontWeight: FontWeight.bold,letterSpacing: 0.5)),
                    ),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        padding: EdgeInsets.zero,
                      ),
                      onPressed: () {
                        timercount = 120;
                        StartTimer();
                      },child: Text("Resent it",style: GoogleFonts.poppins(color: Colors.blue,fontWeight: FontWeight.bold,letterSpacing: 0.5),),))

              ],
            ),
          ),
        ),
      ),
    );
  }
}
