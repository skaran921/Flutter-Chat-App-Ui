import 'package:chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool isRead;

  Message({this.sender, this.time, this.text, this.isLiked, this.isRead});
}

//* CurrentUser
final User currentUser =
    User(id: 1, firstName: "Karan", lastName: "Soni", imageUrl: "assets/5.png");

// * users

final User mohan = User(
    id: 2, firstName: "Mohan", lastName: "Dhariwal", imageUrl: "assets/2.png");
final User aman =
    User(id: 3, firstName: "Aman", lastName: "Kumar", imageUrl: "assets/5.png");

final User sandy =
    User(id: 4, firstName: "Sandy", lastName: "Kaur", imageUrl: "assets/3.png");
final User mily =
    User(id: 6, firstName: "Mily", lastName: "Singh", imageUrl: "assets/4.png");

final User vishal = User(
    id: 7, firstName: "Vishal", lastName: "Khurana", imageUrl: "assets/01.png");
final User navjot = User(
    id: 8, firstName: "Navjot", lastName: "Singh", imageUrl: "assets/01.png");

final User balvinder = User(
    id: 9, firstName: "Balvinder", lastName: "Singh", imageUrl: "assets/5.png");
// * Favourite
List<User> favorites = [mohan, sandy, vishal, aman, mily, navjot, balvinder];

// * chats for Home Screen

List<Message> chats = [
  Message(
      sender: aman, time: "5:30 PM", text: "Hii", isLiked: false, isRead: true),
  Message(
      sender: vishal,
      time: "5:28 PM",
      text: "Hii",
      isLiked: false,
      isRead: false),
  Message(
      sender: mohan,
      time: "5:18 PM",
      text: "Hii Bro.",
      isLiked: false,
      isRead: false),
  Message(
      sender: sandy,
      time: "5:10 PM",
      text: "Hii Coder",
      isLiked: false,
      isRead: false),
  Message(
      sender: mily,
      time: "5:00 PM",
      text: "hey hii",
      isLiked: false,
      isRead: false),
];

// * Chats on chat screen

List<Message> message = [
  Message(
      sender: aman, time: "5:30 PM", text: "Hii", isLiked: true, isRead: false),
  Message(
      sender: currentUser,
      time: "5:16 PM",
      text: "Hii",
      isLiked: false,
      isRead: true),
  Message(
      sender: vishal,
      time: "5:16 PM",
      text: "Hii",
      isLiked: false,
      isRead: false),
  Message(
      sender: mohan,
      time: "5:14 PM",
      text: "Hii Bro.",
      isLiked: false,
      isRead: false),
  Message(
      sender: sandy,
      time: "5:10 PM",
      text: "Hii Coder",
      isLiked: false,
      isRead: false),
  Message(
      sender: mily,
      time: "5:10 PM",
      text: "hey hii",
      isLiked: false,
      isRead: false),
];
