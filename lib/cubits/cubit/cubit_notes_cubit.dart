

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';


import '../../widget/const.dart';

part 'cubit_notes_state.dart';

class CubitNotesCubit extends Cubit<CubitNotesState> {
  CubitNotesCubit() : super(CubitNotesInitial());
   fetchallnote()async {
  
   try{ var notebox=Hive.box(kopenbox);
   List<dynamic>note=notebox.values.toList();
emit(CubitNotesSuccess(note));
   }
   catch(e){
    emit(CubitNotesFailure(e.toString()));
   }
  }
}
