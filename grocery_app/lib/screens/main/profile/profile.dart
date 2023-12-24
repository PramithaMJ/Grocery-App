import 'package:flutter/material.dart';
import 'package:grocery_app/components/custom_text.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CustomText(
        "Profile",
        fontSize: 34,
      ),
    );
  }
}
