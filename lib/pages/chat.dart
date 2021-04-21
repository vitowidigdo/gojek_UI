import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  @override
  _ChatState createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          ChatList(
            nameColor: Colors.blue,
            nameText: 'General Manager',
            textChat: 'Gimana data kemaren udah ready belom',
          ),
          Divider(
            height: 40,
            thickness: 3,
            indent: 20,
            endIndent: 20,
            // color: Bgcolor,
          ),
          ChatList(
            nameColor: Colors.green,
            nameText: 'Matur Nuwun',
            textChat: 'Eh Gimana kemaren jadi fnejnfjej',
          ),
          Divider(
            height: 40,
            thickness: 3,
            indent: 20,
            endIndent: 20,
            // color: Bgcolor,
          ),
          ChatList(
            nameColor: Colors.purple,
            nameText: 'Matur Nuwun',
            textChat: 'Eh Gimana kemaren jadi fnejnfjej',
          ),
          Divider(
            height: 40,
            thickness: 3,
            indent: 20,
            endIndent: 20,
            // color: Bgcolor,
          ),
        ],
      ),
    );
  }
}

class ChatList extends StatelessWidget {
  const ChatList({
    Key key, this.textChat, this.nameText, this.nameColor,
  }) : super(key: key);
  final String textChat, nameText;
  final Color nameColor;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: nameColor,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Center(
            child: Text(
              'MM',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          )
        ),
        Column(
          children: [
            Text(nameText),
            Text(textChat.length > 23 ? '${textChat.substring(0, 19)}...' : textChat),
          ],
        ),
        Column(
          children: [
            Text('Nama Profile'),
            Text('Isi dari Chat'),
          ],
        ),
      ],
    );
  }
}