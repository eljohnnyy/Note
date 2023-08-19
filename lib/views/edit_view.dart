import 'package:flutter/material.dart';
import 'package:note/widget/app_bar.dart';
import 'package:note/widget/customtextfield.dart';

class EditNote extends StatelessWidget {
  const EditNote({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
       
body: SingleChildScrollView(
  child:   Padding(
    padding: EdgeInsets.symmetric(horizontal: 24),
    child: Column(
    
      children: [
    
      
   SizedBox(height: 10,),
      CustomAppBar(title: 'Edit Note',icon: Icons.check,),
     SizedBox(height: 30,),
       CustomTextField(hint: 'Title',),
    
     SizedBox(height: 16,),
    
    CustomTextField(hint: 'Content',max: 5,),
    
      ],
    
    ),
  ),
),
    );
  }
}