import 'package:ecommarce_rafat/presentresion/ui/screens/email_verification_screen.dart';
import 'package:ecommarce_rafat/presentresion/ui/utility/assets_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import '../widgets/app_backgraound_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    GoToNextSrreen();
  }

  GoToNextSrreen(){
    Future.delayed(const Duration(seconds: 3)).then((value){
         Get.offAll(const EmailVerificationScreen());
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: appbackgraound(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 24,),
            const Spacer(),
            Center(child: SvgPicture.asset(AssetsImages.logoSVG,width: 80,)),
            const SizedBox(height: 16,),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 96.0),
              child: Center(child: LinearProgressIndicator(
                backgroundColor: Colors.white,
              ),),
            ),
            const Spacer(),
            Center(child: SvgPicture.asset(AssetsImages.logo2SVG,width: 80,)),
            const SizedBox(height: 24,),
            const Center(child: Text("version: 1.0.0",style: TextStyle(color: Colors.white),)),
            const SizedBox(height: 24,),

          ],
        ),
      ),
    );
  }
}

