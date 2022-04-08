import 'package:flutter/material.dart';
import 'package:intl/intl.dart' as intl;
import 'package:udemychat/model/message.dart';

class TalkRoom extends StatefulWidget {
  final String name;
  TalkRoom(this.name);

  @override
  State<TalkRoom> createState() => _TalkRoomState();
}

class _TalkRoomState extends State<TalkRoom> {
  List<Message> messageList = [
    Message(
        message: 'あいうえお', isMe: true, sendTime: DateTime(2022, 4, 8, 01, 58)),
    Message(
        message: 'かきくけこ', isMe: false, sendTime: DateTime(2022, 4, 8, 01, 59)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: ListView.builder(
          itemCount: messageList.length,
          itemBuilder: (context, index) {
            return Row(
              textDirection: messageList[index].isMe!
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              children: [
                Container(
                    color:
                        messageList[index].isMe! ? Colors.green : Colors.white,
                    child: Text(messageList[index].message!)),
                Text(intl.DateFormat('HH:mm:')
                    .format(messageList[index].sendTime!))
              ],
            );
          }),
    );
  }
}
