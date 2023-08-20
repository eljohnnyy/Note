import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';


import 'package:note/views/notes_view.dart';
import 'package:note/widget/const.dart';

void main()async  {
  await Hive.initFlutter();
  await Hive.openBox(kopenbox);
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        
        theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
        
        
        home:const NotesView(),
        
      ),
    );
  }
}