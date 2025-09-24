import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item_custom_widget.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return Padding(padding: const EdgeInsets.all(8.0), child: NoteItem());
      },
    );
  }
}
