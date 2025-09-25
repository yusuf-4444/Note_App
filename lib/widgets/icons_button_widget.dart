import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key, required this.icon});

  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 53, 47, 47),
      ),
      icon: Icon(icon),
    );
  }
}
