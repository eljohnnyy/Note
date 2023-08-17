import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:note/widget/search_icon.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Notes',style: TextStyle(fontSize: 28),),
        Spacer(),
        SearchIcon(),
      ],
    );
  }
}
