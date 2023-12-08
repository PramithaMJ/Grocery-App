import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
import 'package:grocery_app/components/custom_textfield.dart';
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
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Sign Up Page",
                  style: TextStyle(
                    fontSize: 25,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
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
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    "Already have an account?",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Container(
                  width: 250,
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(10)),
                  child: const Text(
                    "Sign up",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
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
