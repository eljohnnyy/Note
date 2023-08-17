import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
 color: Colors.white.withOpacity(0.05),
 borderRadius: BorderRadius.circular(16),

      ),
     
      child:const Center(child: Icon(Icons.search,size: 28,)),
    );
  }
}