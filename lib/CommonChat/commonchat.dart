import 'package:flutter/material.dart';

class CommonChatList extends StatelessWidget {
  late String  _email;
  late String _password;
  final _sizeTextBlack = const TextStyle(fontSize: 20.0, color: Colors.black);
  late List ChatMessages = [];

  @override
  void initState(){
    this.initState();
  }

  CommonChatList(String email, String password) {
    _email = email;
    _password = password;
    //Добавить сюда чтение из источника
    ChatMessages.addAll(['первое сообщение','второе сообщение','третье сообщение']);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("CommonCharForm Screen with two parameters and List"),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: ChatMessages.length,
          itemBuilder: (BuildContext context, int index){
            return Dismissible(
              key: Key(ChatMessages[index]),
              child: Card(
                child: ListTile(
                  title: Text(ChatMessages[index]),
                  trailing: Text(index.toString())
                ),
              )

            );
          }
        )
    );
  }
}