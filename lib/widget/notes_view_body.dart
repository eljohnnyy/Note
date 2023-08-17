import 'package:flutter/cupertino.dart';
import 'package:note/widget/app_bar.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child:  Column(children: [
        SizedBox(height: 11,),
        AppBar(),
    
    
      ],),
    );
  }
}
