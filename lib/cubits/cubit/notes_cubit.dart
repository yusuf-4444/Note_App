import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  getAllNotes() {
    emit(NotesLoading());

    try {
      var notesBox = Hive.box<NoteModel>(kNotesBox);
      List<NoteModel> note = notesBox.values.toList();

      emit(NotesSuccess(notes: note));
    } on Exception catch (e) {
      emit(NotesFaliure(errMessage: e.toString()));
    }
  }
}
