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
        child: SingleChildScrollView(child: AddNoteForm()),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  GlobalKey<FormState> formKey = GlobalKey();
  String? title, subTitle;
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          CustomTextField(
            hintext: "title",
            onChanged: (data) {
              title = data;
            },
          ),
          SizedBox(height: 16),
          CustomTextField(
            hintext: "content",
            maxlines: 5,
            onChanged: (data) {
              subTitle = data;
            },
          ),
          SizedBox(height: 50),
          CustomTextButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                return formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
          SizedBox(height: 15),
        ],
      ),
    );
  }
}
