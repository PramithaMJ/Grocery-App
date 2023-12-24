import 'dart:ffi';

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/common_back_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/components/cutomer_button.dart';
import 'package:grocery_app/components/social_button.dart';
import 'package:grocery_app/screens/auth/signup.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class FogotPassword extends StatefulWidget {
  const FogotPassword({super.key});

  @override
  State<FogotPassword> createState() => _FogotPasswordState();
}

class _FogotPasswordState extends State<FogotPassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: CommonBackButton(),
                ),
                const CustomText(
                  "Forgot Passsword",
                  size: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 41,
                ),
                const AppLogo(),
                const SizedBox(
                  height: 100,
                ),
                const CustomText(
                  "Please enter your email address. You will recieved a link to create a new password via email.",
                  size: 14,
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomerTextField(
                  hintText: "Enter your Email",
                  labelText: "Email",
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Sent Email",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Signup()),
                    );
                  },
                ),
                const SizedBox(
                  height: 23,
                ),
                const CustomText(
                  "or login with social account",
                  size: 14,
                ),
                const SizedBox(
                  height: 12,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialButton(
                      path: AppAssets.google,
                      onTap: () {},
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    SocialButton(
                      path: AppAssets.fb,
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}