import 'package:flutter/material.dart';
import 'package:note/widget/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return   TextField(
      
      cursorColor: kprimarycolor,
decoration: InputDecoration(
hintText: ' Title',
hintStyle: const TextStyle(color: kprimarycolor),
border: buildborder(),
enabledBorder: buildborder(),
focusedBorder: buildborder(kprimarycolor)

),



    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
    
borderRadius: BorderRadius.circular(8),
borderSide: BorderSide(
  color:color?? Colors.white,
)
);
  }
}