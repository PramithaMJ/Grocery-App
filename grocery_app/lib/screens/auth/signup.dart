import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/components/custom_textfield.dart';
import 'package:grocery_app/components/cutomer_button.dart';
import 'package:grocery_app/screens/auth/login.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
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
                const CustomText(
                  "SignUp",
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
                  hintText: "Enter your UserName",
                  labelText: "Username",
                ),
                const SizedBox(
                  height: 10,
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
                        MaterialPageRoute(builder: (context) => Login()),
                      );
                    },
                    child: const Text(
                      "Already have an account?",
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                CustomButton(
                  text: "Sign up",
                  onTap: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
