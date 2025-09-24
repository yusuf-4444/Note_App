import 'package:flutter/material.dart';
import 'package:note_app/widgets/app_bar_custom_widget.dart';
import 'package:note_app/widgets/note_item_custom_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            SizedBox(height: 5),
            AppBarWidget(),
            SizedBox(height: 10),
            NoteItem(),
          ],
        ),
      ),
    );
  }
}
