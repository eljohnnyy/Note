import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/cubit_notes_cubit.dart';
import 'package:note/widget/app_bar.dart';
import 'package:note/widget/color_list_item.dart';
import 'package:note/widget/customtextfield.dart';

import '../cubits/cubit/add_note_cubit.dart';
import '../models/notes_model.dart';
import '../widget/color_item.dart';
import '../widget/edit_color_list.dart';

class EditNote extends StatefulWidget {
  const EditNote({super.key, required this.note});
final NoteModel note;

  @override
  State<EditNote> createState() => _EditNoteState();
}

class _EditNoteState extends State<EditNote> {
  String? title,content;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       
body: SingleChildScrollView(
  child:   Padding(
    padding:const EdgeInsets.symmetric(horizontal: 24),
    child: Column(
    
      children: [
    
      
  const SizedBox(height: 10,),
      CustomAppBar(
        onPressed: () {
          widget.note.title=title??widget.note.title;
          widget.note.subtitle=content??widget.note.subtitle;
          widget.note.save();
          BlocProvider.of<CubitNotesCubit>(context).fetchallnote();
          Navigator.pop(context);
        },
        title: 'Edit Note',icon: Icons.check,),
    const SizedBox(height: 30,),
       CustomTextField(
        onChanged: (p0) {
          title=p0;
        },
        hint: widget.note.title,),
    
    const SizedBox(height: 16,),
    
 CustomTextField(
    onChanged: (p0) {
      content=p0;
    },
    hint: widget.note.subtitle,max: 5,),
      const SizedBox(height: 16,),
       EditNotesColorList(
        note: widget.note,
      ),
      ],
    
    ),
  ),
),
    );
  }
}
