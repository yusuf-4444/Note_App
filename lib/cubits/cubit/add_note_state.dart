part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitial extends AddNoteState {}

final class AddNoteLoading extends AddNoteState {}

final class AddNoteSuccess extends AddNoteState {}

final class AddNoteFaliure extends AddNoteState {
  final String errorMessage;

  AddNoteFaliure({required this.errorMessage});
}
