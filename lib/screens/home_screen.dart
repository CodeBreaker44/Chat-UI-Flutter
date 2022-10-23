import 'package:athena/widgets/faviorate_contacts.dart';
import 'package:flutter/material.dart';

import '../models/message_model.dart';
import '../widgets/category_selector.dart';
import '../widgets/recent_chats.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {  },
          iconSize: 30.0,
          color: Colors.white,
        ),
        title: const Text(
          'Chats',
          textAlign: TextAlign.center,
          style:
          TextStyle(
              fontSize: 28.0,
          fontWeight: FontWeight.bold,

          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {  },
            iconSize: 30.0,
            color: Colors.white,
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(color: Theme.of(context).colorScheme.secondary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0)
                ),
              ),
              child: Column(
                children: [
                  FavoriteContacts(),
                  RecentChats(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
