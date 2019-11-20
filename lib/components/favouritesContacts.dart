import 'package:chat_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';
import '../models/message_model.dart';

class FavoritesContacts extends StatefulWidget {
  @override
  _FavoritesContactsState createState() => _FavoritesContactsState();
}

class _FavoritesContactsState extends State<FavoritesContacts> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      child: Container(
        child: Column(
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Favourites Contacts",
                    style: TextStyle(
                        color: Colors.blueGrey,
                        fontSize: 28,
                        letterSpacing: 1.0),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.blueGrey,
                    ),
                    iconSize: 28.0,
                  )
                ],
              ),
            ),
            Container(
              height: 120.0,
              child: ListView.builder(
                padding: EdgeInsets.only(left: 10.0),
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ChatScreen(
                                    user: favorites[index],
                                  )));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 35.0,
                            backgroundImage: AssetImage(
                              favorites[index].imageUrl,
                            ),
                          ),
                          SizedBox(
                            height: 4.0,
                          ),
                          Text(
                            favorites[index].firstName,
                            style: TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 16.0,
                                fontWeight: FontWeight.w600),
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
