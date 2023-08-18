import 'package:flutter/cupertino.dart';

import 'note_item.dart';

class ListItem extends StatelessWidget {
  const ListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(padding: EdgeInsets.zero,itemBuilder: (context,index){
     
        return const Padding(
          padding:  EdgeInsets.symmetric(vertical: 4),
          child: NoteItem(),
        );
      }),
    );
  }
}