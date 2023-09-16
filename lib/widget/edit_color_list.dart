import 'package:flutter/cupertino.dart';

import '../models/notes_model.dart';
import 'color_item.dart';

class EditNotesColorList extends StatefulWidget {
  const EditNotesColorList({super.key, required this.note});
final NoteModel note;
  @override
  State<EditNotesColorList> createState() => _EditNotesColorListState();
}

class _EditNotesColorListState extends State<EditNotesColorList> {

 

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
   late int currentIndex;
   @override
  void initState() {
    currentIndex=colors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
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
          widget.note.color=colors[index].value;
              setState(() {
                
              });
            },
            child: ColorItem(isActive:currentIndex==index,color: colors[index],)),
        );
      }),
    );
  }
}