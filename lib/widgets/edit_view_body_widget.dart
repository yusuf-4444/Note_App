import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/widgets/app_bar_custom_widget.dart';
import 'package:note_app/widgets/text_field_custom_widget.dart';

class EditViewBodyWidget extends StatefulWidget {
  const EditViewBodyWidget({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditViewBodyWidget> createState() => _EditViewBodyWidgetState();
}

class _EditViewBodyWidgetState extends State<EditViewBodyWidget> {
  String? title;
  String? subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          AppBarWidget(
            onPressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).getAllNotes();
              Navigator.pop(context);
            },
            text: "Edit",
            icon: Icons.check,
          ),
          SizedBox(height: 50),

          CustomTextField(
            onChanged: (value) {
              title = value;
            },
            hintext: widget.note.title,
          ),
          SizedBox(height: 16),
          CustomTextField(
            onChanged: (value) {
              subTitle = value;
            },
            hintext: widget.note.subTitle,
            maxlines: 5,
          ),
        ],
      ),
    );
  }
}
