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
        message: 'あいうえお', isMe: true, sendTime: DateTime(2022, 4, 8, 1, 58)),
    Message(
        message: 'かきくけこあああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
    Message(
        message: 'あいうえお', isMe: true, sendTime: DateTime(2022, 4, 8, 1, 58)),
    Message(
        message: 'かきくけこあああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
    Message(
        message: 'あいうえお', isMe: true, sendTime: DateTime(2022, 4, 8, 1, 58)),
    Message(
        message: 'かきくけこあああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
    Message(
        message: 'あいうえお', isMe: true, sendTime: DateTime(2022, 4, 8, 1, 58)),
    Message(
        message: 'かきくけこあああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
    Message(
        message: 'あいうえお', isMe: true, sendTime: DateTime(2022, 4, 8, 1, 58)),
    Message(
        message: 'かきくけこあああああああああああああああああああああああああああああああああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
    Message(
        message: 'かきくけこあああああああああああああああああああああああああああああああああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
    Message(
        message: 'かきくけこあああああああああああああああああああああああああああああああああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
    Message(
        message: 'かきくけこあああああああああああああああああああああああああああああああああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
    Message(
        message: 'かきくけこあああああああああああああああああああああああああああああああああああああああああああああああああああ',
        isMe: false,
        sendTime: DateTime(2022, 4, 8, 1, 59)),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: Text(widget.name),
      ),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 60.0),
            child: ListView.builder(
                physics: RangeMaintainingScrollPhysics(),
                shrinkWrap: true,
                reverse: true,
                itemCount: messageList.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(
                        top: 10.0,
                        right: 10,
                        left: 10,
                        bottom: index == 0 ? 10 : 0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      textDirection: messageList[index].isMe!
                          ? TextDirection.rtl
                          : TextDirection.ltr,
                      children: [
                        Container(
                            constraints: BoxConstraints(
                                maxWidth:
                                    MediaQuery.of(context).size.width * 0.6),
                            padding: EdgeInsets.symmetric(
                                horizontal: 10.0, vertical: 6.0),
                            decoration: BoxDecoration(
                                color: messageList[index].isMe!
                                    ? Colors.green
                                    : Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Text(messageList[index].message!)),
                        Text(
                          intl.DateFormat('HH:mm')
                              .format(messageList[index].sendTime!),
                          style: TextStyle(fontSize: 12),
                        )
                      ],
                    ),
                  );
                }),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 60,
              color: Colors.white,
              child: Row(
                children: [
                  Expanded(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(border: OutlineInputBorder()),
                    ),
                  )),
                  IconButton(
                      icon: Icon(Icons.send),
                      onPressed: () {
                        print('送信');
                      })
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
