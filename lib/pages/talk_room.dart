import 'package:flutter/material.dart';

class TalkRoom extends StatefulWidget {
  final String name;
  TalkRoom(this.name);

  @override
  State<TalkRoom> createState() => _TalkRoomState();
}

class _TalkRoomState extends State<TalkRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.name),
      ),
    );
  }
}
