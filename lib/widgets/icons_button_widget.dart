import 'package:flutter/material.dart';

class IconButtonWidget extends StatelessWidget {
  const IconButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {},
      style: IconButton.styleFrom(
        backgroundColor: const Color.fromARGB(255, 53, 47, 47),
      ),
      icon: Icon(Icons.search),
    );
  }
}
