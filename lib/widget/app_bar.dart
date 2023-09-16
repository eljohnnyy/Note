import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/widget/search_icon.dart';

class CustomAppBar extends StatelessWidget {
 const CustomAppBar({super.key, required this.icon,required this.title, this.onPressed});
final String title;
final void Function()? onPressed;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(title,style: const TextStyle(fontSize: 28),),
       const Spacer(),
        SearchIcon(icon: icon,onPressed: onPressed,),
      ],
    );
  }
}
