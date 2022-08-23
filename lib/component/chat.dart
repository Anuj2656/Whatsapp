
import 'package:flutter/material.dart';
class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


Widget chatTile(String imageUr1, String username, String msg,String data) {
  return Row(
    children: [
      CircleAvatar(backgroundImage: NetworkImage(imageUr1),
      )
    ],
  );
}
