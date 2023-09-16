import 'package:flutter/cupertino.dart';

import 'color_item.dart';

class ColorsListView extends StatelessWidget {
  const ColorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        
        return const Padding(
          padding:  EdgeInsets.symmetric(horizontal: 8),
          child:  ColorItem(),
        );
      }),
    );
  }
}