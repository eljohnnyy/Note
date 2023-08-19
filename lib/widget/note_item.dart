import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note/views/edit_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
Navigator.push(context, MaterialPageRoute(builder: (context){
 return const EditNote();
}));

      },
      child: Container(
        padding:const EdgeInsets.only(top: 24,bottom: 24,left: 16),
        decoration: BoxDecoration(
          color:Colors.blue,
          borderRadius: BorderRadius.circular(16)
        ),
        child:  Column(
          crossAxisAlignment: CrossAxisAlignment.end,
    children: [
    ListTile(
      
      title:const Text('Flutter Tips',style: TextStyle(color: Colors.black,fontSize: 26),),
      subtitle: Padding(
      padding: const EdgeInsets.only(top: 16,bottom: 16),
      child: Text('Build your career with Youssef Ashraf',style: TextStyle(color: Colors.black.withOpacity(0.5),fontSize: 18),),
      ),
      trailing: IconButton(onPressed: (){}, icon:const Icon(FontAwesomeIcons.trash,color: Colors.black,size: 26,)),
    ),
     Padding(
       padding: const EdgeInsets.only(right: 24),
       child: Text('May 21 , 2023',style: TextStyle(color: Colors.black.withOpacity(0.4),fontSize: 16),),
     )
    
    ],
    
        ),
      ),
    );
  }
}