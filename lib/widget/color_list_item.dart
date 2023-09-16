import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/cubits/cubit/add_note_cubit.dart';

import 'color_item.dart';

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex=0;
  List<Color>colors=const[
    Color(0xffB4436C),
    Color(0xff4D9078),
    Color(0xffF78154),
    Color(0xffF2C14E),
    Color(0xff1d3557),
    Color(0xffb5838d),
    Color(0xffd62828),
    Color(0xff9b5de5),
    Color(0xff00f5d4),
  ];
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 38*2,
      child: ListView.builder(
        itemCount: colors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index){
        
        return  Padding(
          padding:const  EdgeInsets.symmetric(horizontal: 8),
          child:  GestureDetector(
            onTap: () {
              currentIndex=index;
              BlocProvider.of<AddNoteCubit>(context).color=colors[index];
              setState(() {
                
              });
            },
            child: ColorItem(isActive:currentIndex==index,color: colors[index],)),
        );
      }),
    );
  }
}