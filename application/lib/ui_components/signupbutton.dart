import 'package:flutter/material.dart';

class SignupButton extends StatelessWidget {

  final Function()? onTap;
  const SignupButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
    child: Container(
      padding: EdgeInsets.all(25),
      margin: EdgeInsets.symmetric(horizontal: 25),
      decoration: BoxDecoration(
        color: Colors.red,
        borderRadius: BorderRadius.circular(8)
        ),
      child: Center(
        child: Text("Sign Up",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,
          ),
        ),),
    ),
  );
  }
}