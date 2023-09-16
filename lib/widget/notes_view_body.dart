
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/cubit_notes_cubit.dart';
import 'package:note/widget/app_bar.dart';


import 'notes_listview.dart';

class NotesViewBody extends StatefulWidget {
  const NotesViewBody({super.key});

  @override
  State<NotesViewBody> createState() => _NotesViewBodyState();
}

class _NotesViewBodyState extends State<NotesViewBody> {
  @override
  void initState() {
    BlocProvider.of<CubitNotesCubit>(context).fetchallnote;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child:  Column(children: [
        SizedBox(height: 10,),
        CustomAppBar(title: 'Notes',icon: Icons.search,),
       Expanded(child: ListItem()),
    
    
      ],),
    );
  }
}
