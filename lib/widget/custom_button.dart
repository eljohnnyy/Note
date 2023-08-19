import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
       color: kprimarycolor,
       borderRadius: BorderRadius.circular(8),
      ),
      child:const Center(child: Text('Add',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black,),),
    ));
  }
}