

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/models/notes_model.dart';


import 'package:note/widget/const.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
 
  AddNoteCubit() : super(AddNoteInitial());
   Color color=const Color(0xffB4436C);
  addnote(NoteModel note)async {
    note.color=color.value;
    emit(AddNoteLoading());
   try{var notebox=Hive.box<NoteModel>(kopenbox);
   await  notebox.add(note);
   
   emit(AddNoteSuccess());
   }
   catch(e){
    emit(AddNoteFailure(e.toString()));
   }
  }

}
