import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/cubit_notes_cubit.dart';
import 'package:note/models/notes_model.dart';

import 'note_item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CubitNotesCubit, CubitNotesState>(
      builder: (context, state) {
        List<NoteModel>note=BlocProvider.of<CubitNotesCubit>(context).notes??[];
        return Padding(

          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
              keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            itemCount: note.length,
           
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) {
                return  Padding(
                  padding: const EdgeInsets.symmetric(vertical: 4),
                  child: NoteItem(noteModel: note[index],),
                );
              }),
        );
      },
    );
  }
}
