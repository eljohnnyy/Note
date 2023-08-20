import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:note/widget/customtextfield.dart';

import 'custom_button.dart';

class AddNoteShowButton extends StatelessWidget {
  const AddNoteShowButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child:  SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
 
  final GlobalKey<FormState>formkey=GlobalKey();
  AutovalidateMode autovalidatemode=AutovalidateMode.disabled;
  String? title,subtitle;
 @override
  Widget build(BuildContext context) {
    
    return Form(
      key: formkey,
      autovalidateMode: autovalidatemode,
      child:  Column(children: [
      const  SizedBox(height: 32,),
        CustomTextField(hint: 'Title',onsaved: (p0) {
          title=p0;
        },),
      const   SizedBox(height:16),
      CustomTextField(hint: 'Content',max: 5,onsaved: (p0) {
        subtitle=p0;
      },),
      const  SizedBox(height:32),
       CustomButton(ontab: () {
       if(formkey.currentState!.validate()){
formkey.currentState!.save();
       }
       else{
        autovalidatemode=AutovalidateMode.always;
       }
     },),
     const  SizedBox(height:16),
      ],),
    );
  }
}
