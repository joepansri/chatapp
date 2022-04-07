import 'package:flutter/material.dart';

class TalkRoom extends StatefulWidget {
  const TalkRoom({Key? key}) : super(key: key);

  @override
  State<TalkRoom> createState() => _TalkRoomState();
}

class _TalkRoomState extends State<TalkRoom> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('名前'),
      ),
    );
  }
}
