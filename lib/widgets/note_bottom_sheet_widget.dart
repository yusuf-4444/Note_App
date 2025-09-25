import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_button_widget.dart';
import 'package:note_app/widgets/text_field_custom_widget.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 24, right: 12, left: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomTextField(hintext: "title"),
              SizedBox(height: 10),
              CustomTextField(hintext: "content", maxlines: 5),
              SizedBox(height: 50),
              CustomTextButton(),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
    );
  }
}
