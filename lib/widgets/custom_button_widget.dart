import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({super.key, this.onPressed});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        backgroundColor: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(8),
        ),
        minimumSize: Size(double.infinity, 50),
      ),
      child: Text(
        "Add",
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
