import 'package:flutter/cupertino.dart';

import 'note_item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return const Padding(
        padding:  EdgeInsets.symmetric(vertical: 8),
        child: NoteItem(),
      );
    });
  }
}