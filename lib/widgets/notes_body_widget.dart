import 'package:flutter/material.dart';
import 'package:note_app/widgets/app_bar_custom_widget.dart';
import 'package:note_app/widgets/notes_list_view_builder_widget.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          SizedBox(height: 5),
          AppBarWidget(text: "Notes", icon: Icons.search),
          SizedBox(height: 10),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
