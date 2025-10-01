import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  Color color = Color(0x000000ff);

  addNote(NoteModel note) async {
    note.color = color.toARGB32();
    emit(AddNoteLoading());

    try {
      var noteBox = Hive.box<NoteModel>(kNotesBox);
      await noteBox.add(note);

      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaliure(errorMessage: e.toString()));
    }
  }
}
