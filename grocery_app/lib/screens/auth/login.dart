import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/common_back_button.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/components/cutomer_button.dart';
import 'package:grocery_app/components/social_button.dart';
import 'package:grocery_app/screens/auth/fogot_password.dart';
import 'package:grocery_app/screens/main/main_screen.dart';
import 'package:grocery_app/utils/constants/app_assets.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  "Login",
                  fontSize: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.w600,
                ),
                const SizedBox(
                  height: 41,
                ),
                const AppLogo(),
                const SizedBox(
                  height: 30,
                ),
                const CustomerTextField(
                  hintText: "Enter your Email",
                  labelText: "Email",
                ),
                const SizedBox(
                  height: 10,
                ),
                const CustomerTextField(
                  hintText: "Enter your Password",
                  labelText: "Password",
                  isObscure: true,
                ),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const FogotPassword()),
                      );
                    },
                    child: const Text(
                      "Fogot your password?",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Login",
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                ),
                const SizedBox(
                  height: 23,
                ),
                const CustomText(
                  "or login with social account",
                  fontSize: 14,
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
