import 'package:flutter/material.dart';
import 'package:note_app/widgets/icons_button_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(text, style: TextStyle(fontSize: 20)),
        IconButtonWidget(icon: icon),
      ],
    );
  }
}
