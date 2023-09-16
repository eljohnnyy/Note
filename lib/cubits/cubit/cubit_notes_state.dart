part of 'cubit_notes_cubit.dart';

@immutable
abstract class CubitNotesState {}

 class CubitNotesInitial extends CubitNotesState {}
  class CubitNotesLoading extends CubitNotesState {}
  class CubitNotesSuccess extends CubitNotesState {
final List<NoteModel>? notes;

  CubitNotesSuccess(this.notes);


  }
   class CubitNotesFailure extends CubitNotesState {
final String errmessage;

  CubitNotesFailure(this.errmessage);

   }
