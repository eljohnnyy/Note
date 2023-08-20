import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note/cubits/cubit/add_note_cubit.dart';
import 'package:note/models/notes_model.dart';
import 'package:note/observer/simple_bloc_observer.dart';


import 'package:note/views/notes_view.dart';
import 'package:note/widget/const.dart';

void main()async  {
  await Hive.initFlutter();
  Bloc.observer=SimpleBlocObserver();
  await Hive.openBox(kopenbox);
  Hive.registerAdapter(NoteModelAdapter());
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MultiBlocProvider(
        
        providers: [
          BlocProvider(
            create: (context) => AddNoteCubit(),
          ),
          
        ],
       
      
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          
          theme: ThemeData(brightness: Brightness.dark,fontFamily: 'Poppins'),
          
          
          home:const NotesView(),
          
        ),
      ),
    );
  }
}