import 'package:flutter/material.dart';
import 'package:note_app/widgets/app_bar_custom_widget.dart';
import 'package:note_app/widgets/text_field_custom_widget.dart';

class EditViewBodyWidget extends StatelessWidget {
  const EditViewBodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          AppBarWidget(text: "Edit", icon: Icons.check),
          SizedBox(height: 50),

          CustomTextField(hintext: "title"),
          SizedBox(height: 16),
          CustomTextField(hintext: "content", maxlines: 5),
        ],
      ),
    );
  }
}
