import 'package:athena/models/message_model.dart';
import 'package:flutter/material.dart';

import '../models/user_model.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key, required this.user}) : super(key: key);
  final User user;

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  _buildMessage(Message message, bool isMe) {
    final Container msg =Container(
      margin: isMe? EdgeInsets.only(top: 8.0, bottom: 8.0,left: 80.0) :EdgeInsets.only(top: 8.0, bottom: 8.0,) ,
      padding: EdgeInsets.symmetric(horizontal: 25.0,vertical: 15.0),
      width: MediaQuery.of(context).size.width*0.67,
      decoration: BoxDecoration(
        color: isMe ? Theme.of(context).colorScheme.secondary: Color(0xFFEFFFFD),
        borderRadius: isMe ? BorderRadius.only(
          topLeft: Radius.circular(15.0),
          bottomLeft: Radius.circular(15.0),
        ):  BorderRadius.only(
          topRight: Radius.circular(15.0),
          bottomRight: Radius.circular(15.0),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(message.time,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(height: 7.0,),
          Text(message.text,
            style: TextStyle(
              color: Colors.blueGrey,
              fontSize: 15.0,
              fontWeight: FontWeight.w600,
            ),),
        ],
      ),
    );

    if(isMe){
      return msg;
    }

    return Row(
      children: [
        msg,
        IconButton(
          icon: message.isLiked ? Icon(Icons.favorite,) :Icon(Icons.favorite_border,) , //thumb_up_outline
          iconSize: 30.0,
          color: message.isLiked ? Colors.redAccent :Colors.blueGrey ,
          onPressed: () { },
        ) ,
      ],
    );
  }
  _buildMessageComposer(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8.0,),
      height: 70.0,
      color: Colors.white,
      child: Row(
        children: [
          IconButton(
            icon: Icon(Icons.photo),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: (){},
          ),
          Expanded(child: TextField(
            textCapitalization: TextCapitalization.sentences,
            onChanged: (value){},
            decoration: InputDecoration.collapsed(
              hintText: 'Send a message...',
            ),
          )),
          IconButton(
            icon: Icon(Icons.send),
            iconSize: 25.0,
            color: Theme.of(context).primaryColor,
            onPressed: (){},
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text(widget.user.name,
          textAlign: TextAlign.center,
          style:
          TextStyle(
            fontSize: 23.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,

        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.more_horiz,),
            onPressed: () {  },
            iconSize: 30.0,
            color: Colors.white,
          ),
        ],
      ),
      body: GestureDetector(
        onTap: ()=> FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color:Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                  child: ListView.builder(
                    reverse: false,
                    padding: EdgeInsets.only(top: 15.0),
                    itemCount: messages1.length,
                      itemBuilder: (BuildContext context, int index){
                      final Message message = messages1[index];
                      bool isMe = message.sender.id == currentUser.id;
                    return _buildMessage(message,isMe);
                  }
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
