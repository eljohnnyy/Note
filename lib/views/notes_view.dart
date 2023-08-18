import 'package:flutter/material.dart';

import '../widget/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
floatingActionButton: FloatingActionButton(onPressed: (){},child:const Icon(Icons.add,size: 31,),),
      body:const NotesViewBody(),
    );
  }
}
