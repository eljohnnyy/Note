import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/cubit_notes_cubit.dart';
import 'package:note/widget/app_bar.dart';
import 'package:note/widget/color_list_item.dart';
import 'package:note/widget/customtextfield.dart';

import '../cubits/cubit/add_note_cubit.dart';
import '../models/notes_model.dart';
import '../widget/color_item.dart';

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
class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({super.key, required this.note});
final NoteModel note;
  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {

 

  List<Color>colors=const[
    Color(0xffB4436C),
    Color(0xff4D9078),
    Color(0xffF78154),
    Color(0xffF2C14E),
    Color(0xff1d3557),
    Color(0xffb5838d),
    Color(0xffd62828),
    Color(0xff9b5de5),
    Color(0xff00f5d4),
  ];
   late int currentIndex;
   @override
  void initState() {
    currentIndex=colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        
        return  Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 8),
          child:  GestureDetector(
            onTap: () {
              currentIndex=index;
          widget.note.color=colors[index].value;
              setState(() {
                
              });
            },
            child: ColorItem(isActive:currentIndex==index,color: colors[index],)),
        );
      }),
    );
  }
}