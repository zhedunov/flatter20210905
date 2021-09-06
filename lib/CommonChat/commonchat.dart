import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CommonChatList extends StatelessWidget {
  late String  _email;
  late String _password;
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);

  CommonChatList(String email, String password) {
    _email = email;
    _password = password;
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("CommonCharForm Screen with two recieved parameters"),
        ),
        body: new Center(
          child: new Text(
            "Третий экран",
            style: _sizeTextBlack,
          ),
        ));
  }
}