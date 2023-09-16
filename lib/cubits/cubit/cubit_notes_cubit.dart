

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:note/models/notes_model.dart';


import '../../widget/const.dart';

part 'cubit_notes_state.dart';

class CubitNotesCubit extends Cubit<CubitNotesState> {
  CubitNotesCubit() : super(CubitNotesInitial());
  List<NoteModel>?notes;
   fetchallnote() {
  
var notebox=Hive.box<NoteModel>(kopenbox);

notes=notebox.values.toList();

emit(CubitNotesSuccess(notes));
   
  
  }
}
