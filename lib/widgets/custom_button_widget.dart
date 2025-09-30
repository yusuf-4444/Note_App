import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextButton extends StatelessWidget {
  CustomTextButton({super.key, this.onPressed, this.isLoading = true});

  final void Function()? onPressed;
  bool isLoading;

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
      child: isLoading
          ? SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(color: Colors.black),
            )
          : Text(
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
