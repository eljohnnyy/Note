import 'package:flutter/cupertino.dart';
import 'package:note/widget/app_bar.dart';


import 'notes_listview.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child:  Column(children: [
        SizedBox(height: 10,),
        AppBar(),
       Expanded(child: ListItem()),
    
    
      ],),
    );
  }
}