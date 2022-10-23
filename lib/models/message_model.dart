import 'package:athena/models/user_model.dart';
import 'package:flutter/material.dart';

class Message {
  final User sender ;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
}
);

}

final User currentUser = User (id : 0, name :'Zaid Taha ', imageUrl: 'assets/images/1.png');

final User secondUser = User (id : 1, name :'Motaz ', imageUrl: 'assets/images/Motaz.jpg',);

final User thirdUser = User (name: 'Noor ', imageUrl: 'assets/images/Noor.jpg', id: 3);

final User forthUser = User(id: 4, name: 'Zaid ', imageUrl: 'assets/images/helu.jpg');

final User fifthUser = User(id: 5, name: 'Raslan ', imageUrl: 'assets/images/5.jpg');

final User sixthUser = User(id: 6, name: 'Yousef ', imageUrl: 'assets/images/4.JPG');

final User seventhUser = User(id: 7, name: 'Mai ', imageUrl: 'assets/images/7.jpg');

List<User> favorites  = [secondUser,thirdUser,forthUser,sixthUser,seventhUser];


List <Message> chats = [
  Message(
      sender: secondUser,
      time: '5:30 PM',
      text: 'Hey, how \'s it going ?',
      isLiked: false,
      unread: false
  ),

  Message(
      sender: forthUser,
      time: '8:00 PM',
      text: 'How ya doin ?',
      isLiked: false,
      unread: true),

  Message(
      sender: sixthUser
      , time: '11:11 PM',
      text: 'معلم بدنا نطلع',
      isLiked: false,
      unread: true),
  Message(
    sender: fifthUser,
    time: '5:00 PM',
    text: 'Good bye.',
    isLiked: false,
    unread: false,
  ),
  Message(sender: thirdUser,
      time: '7:00 PM',
      text: 'I will call you back',
      isLiked: true,
      unread: true),

  Message(
      sender: seventhUser,
      time: '29/5/2019',
      text: 'Bye.',
      isLiked: false,
      unread: true),
];

List <Message> messages1 = [
  Message(
      sender: secondUser,
      time: '5:30 PM',
      text: 'Hey, how \'s it going ?',
      isLiked: false,
      unread: true
  ),

  Message(
      sender: currentUser,
      time: '6:00 PM',
      text: 'Good, you ?',
      isLiked: false,
      unread: false),

  Message(
      sender: secondUser
      , time: '6:11 PM',
      text: 'معلم بدنا نطلع',
      isLiked: true,
      unread: false),
  Message(
    sender: currentUser,
    time: '6:20 PM',
    text: 'ابشر, بس وين ؟',
    isLiked: true,
    unread: false,
  ),
  Message(
      sender: secondUser,
      time: '6:20 PM',
      text: 'عل مطل',
      isLiked: false,
      unread: false),

  Message(
      sender: currentUser,
      time: '6:25 PM',
      text: 'تمام ✌',
      isLiked: false,
      unread: false),
];
