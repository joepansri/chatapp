import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import 'package:udemychat/model/user.dart';
import 'package:udemychat/pages/talk_room.dart';

class TopPage extends StatefulWidget {
  const TopPage({Key? key}) : super(key: key);

  @override
  State<TopPage> createState() => _TopPageState();
}

class _TopPageState extends State<TopPage> {
  List<User> userList = [
    User(
        name: 'Joe',
        uid: 'joe',
        imagePath:
            'https://s3-ap-northeast-1.amazonaws.com/image.cozre.jp/magazine/post/717946.jpg',
        lastMassage: 'こんにちは'),
    User(
        name: 'Pan',
        uid: 'pan',
        imagePath:
            'https://s3-ap-northeast-1.amazonaws.com/image.cozre.jp/magazine/post/717946.jpg',
        lastMassage: 'panにちは'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('チャットアプリ'),
      ),
      body: ListView.builder(
          itemCount: userList.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => TalkRoom()));
              },
              child: Container(
                height: 70,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: CircleAvatar(
                        backgroundImage:
                            NetworkImage(userList[index].imagePath),
                        radius: 30,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userList[index].name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          userList[index].lastMassage,
                          style: TextStyle(color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
