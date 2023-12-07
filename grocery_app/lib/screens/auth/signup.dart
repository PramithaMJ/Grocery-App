import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/components/app_logo.dart';
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up Page",
                style: TextStyle(
                  fontSize: 25,
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 41,
              ),
              AppLogo(),
              SizedBox(
                height: 30,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: AppColors.ash.withOpacity(.4),
                    offset: Offset(0, 2),
                    blurRadius: 10,
                  )
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Email or Username here",
                    hintStyle: TextStyle(color: AppColors.ash),
                    label: Text(
                      "Email",
                      style: TextStyle(
                        color: AppColors.ash,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: AppColors.ash.withOpacity(.4),
                    offset: Offset(0, 2),
                    blurRadius: 10,
                  )
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Email or Username here",
                    hintStyle: TextStyle(color: AppColors.ash),
                    label: Text(
                      "Email",
                      style: TextStyle(
                        color: AppColors.ash,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                decoration: BoxDecoration(color: Colors.white, boxShadow: [
                  BoxShadow(
                    color: AppColors.ash.withOpacity(.4),
                    offset: Offset(0, 2),
                    blurRadius: 10,
                  )
                ]),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Enter your Email or Username here",
                    hintStyle: TextStyle(color: AppColors.ash),
                    label: Text(
                      "Email",
                      style: TextStyle(
                        color: AppColors.ash,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(4),
                      borderSide: BorderSide(color: AppColors.primaryColor),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
