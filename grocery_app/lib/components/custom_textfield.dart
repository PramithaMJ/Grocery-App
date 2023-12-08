import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';
import 'package:grocery_app/utils/constants/app_colors.dart';

class CustomerTextField extends StatelessWidget {
  const CustomerTextField({
    super.key,
    required this.hintText,
    required this.labelText,
    this.isObscure = false,
  });

  final String hintText;
  final String labelText;
  final bool isObscure;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
          color: AppColors.ash.withOpacity(.4),
          offset: const Offset(0, 2),
          blurRadius: 10,
        )
      ]),
      child: TextField(
        obscureText: isObscure,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(color: AppColors.ash),
          label: CustomText(
            labelText,
            color: AppColors.ash,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(4),
            borderSide: const BorderSide(color: AppColors.primaryColor),
          ),
        ),
      ),
    );
  }
}
