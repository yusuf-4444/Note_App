import 'package:flutter/material.dart';
import 'package:note_app/widgets/icons_button_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    super.key,
    required this.text,
    required this.icon,
    this.onPressed,
  });

  final String text;
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 20)),
        IconButtonWidget(onPressed: onPressed, icon: icon),
      ],
    );
  }
}
