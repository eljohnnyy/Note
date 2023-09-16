
import 'package:flutter/material.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key, required this.icon, this.onPressed});
  final void Function()? onPressed;
final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 47,
      width: 47,
      decoration: BoxDecoration(
 color: Colors.white.withOpacity(0.05),
 borderRadius: BorderRadius.circular(16),

      ),
     
      child: Center(child: IconButton(
        onPressed: onPressed,
       icon: Icon(icon,size: 28,))),
    );
  }
}