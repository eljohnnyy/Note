import 'package:flutter/material.dart';
import 'package:note/widget/const.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key,required this.hint,this.max=1});
final String hint;
final int max;
  @override
  Widget build(BuildContext context) {
    return   TextField(
      maxLines: max,
      cursorColor: kprimarycolor,
decoration: InputDecoration(
hintText: hint,

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