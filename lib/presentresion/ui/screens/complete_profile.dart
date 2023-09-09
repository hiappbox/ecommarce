import 'package:ecommarce_rafat/presentresion/ui/screens/otp_verification_screen.dart';
import 'package:ecommarce_rafat/presentresion/ui/widgets/app_backgraound_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utility/assets_image.dart';

class CompleteProfile extends StatefulWidget {
  const CompleteProfile({super.key});

  @override
  State<CompleteProfile> createState() => _CompleteProfileState();
}

class _CompleteProfileState extends State<CompleteProfile> {
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
                  height: 100,
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
                  "Complete profile",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 28, color: Colors.white),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  "Get's Staded with us detele",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(fontSize: 14, color: Colors.white60),
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: GoogleFonts.poppins(color: Colors.white),
                  decoration: const InputDecoration(hintText: "fast name"),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: GoogleFonts.poppins(color: Colors.white),
                  decoration: const InputDecoration(hintText: "last name"),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: GoogleFonts.poppins(color: Colors.white),
                  decoration: const InputDecoration(hintText: "mobile"),
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: GoogleFonts.poppins(color: Colors.white),
                  decoration: const InputDecoration(hintText: "city"),
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  maxLines: 6,
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Colors.white,
                  style: GoogleFonts.poppins(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: "shipping address",
                    filled: true,
                    fillColor: Colors.white24,
                    hintStyle: TextStyle(color: Colors.white24),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide(color: Colors.yellow, width: 1)),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        borderSide: BorderSide.none),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(color: Colors.white, width: 2),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 46,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const OTPVerificationScreen()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Next",
                          style: GoogleFonts.poppins(
                              color: Colors.brown, fontWeight: FontWeight.w700),
                        ),
                        const Icon(
                          (Icons.arrow_forward),
                          color: Colors.brown,
                        )
                      ],
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50))),
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
