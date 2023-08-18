import 'package:flutter/material.dart';

import '../widget/notes_view_body.dart';
import '../widget/show_button_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
floatingActionButton: FloatingActionButton(onPressed: (){
showModalBottomSheet(shape: RoundedRectangleBorder(
  borderRadius: BorderRadius.circular(16),
),context: context, builder: (context){
return const  AddNoteShowButton();
});



},child:const Icon(Icons.add,size: 31,),),
      body:const NotesViewBody(),
    );
  }
}
