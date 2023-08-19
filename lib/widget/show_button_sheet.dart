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
        child: Column(children: [
          SizedBox(height: 32,),
          CustomTextField(hint: 'Title',),
          SizedBox(height:16),
        CustomTextField(hint: 'Content',max: 5,),
          SizedBox(height:32),
        CustomButton(),
         SizedBox(height:16),
        ],),
      ),
    );
  }
}
