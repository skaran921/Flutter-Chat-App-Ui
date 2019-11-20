import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class RecentChats extends StatefulWidget {
  @override
  _RecentChatsState createState() => _RecentChatsState();
}

class _RecentChatsState extends State<RecentChats> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(50.0),
                topRight: Radius.circular(50.0))),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20.0),
                    topRight: Radius.circular(20.0)),
                color:
                    chats[index].isRead ? Color(0xFFFAFAFA) : Color(0x44FFCCCB),
              ),
              child: ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ChatScreen(
                                user: chats[index].sender,
                              )));
                },
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(chats[index].sender.imageUrl),
                ),
                title: Text(chats[index].sender.firstName +
                    " " +
                    chats[index].sender.lastName),
                subtitle: Row(
                  children: <Widget>[
                    Text(
                      chats[index].text,
                      style: TextStyle(color: Colors.blueGrey),
                    ),
                    chats[index].isRead
                        ? Container()
                        : Container(
                            padding: EdgeInsets.all(4.0),
                            margin: EdgeInsets.only(left: 4.0, top: 2),
                            decoration: BoxDecoration(
                                color: Theme.of(context).primaryColor,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10.0))),
                            child: Text(
                              "New",
                              style: TextStyle(color: Colors.white),
                            ),
                          )
                  ],
                ),
                trailing: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      chats[index].time,
                      style: TextStyle(color: Colors.blueGrey, fontSize: 15.0),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
