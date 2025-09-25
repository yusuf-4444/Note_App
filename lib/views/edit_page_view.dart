import 'package:flutter/material.dart';
import 'package:note_app/widgets/edit_view_body_widget.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: EditViewBodyWidget());
  }
}
