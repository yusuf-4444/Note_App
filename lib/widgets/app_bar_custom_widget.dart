import 'package:flutter/material.dart';
import 'package:note_app/widgets/icons_button_widget.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Notes", style: TextStyle(fontSize: 20)),
        IconButtonWidget(),
      ],
    );
  }
}
