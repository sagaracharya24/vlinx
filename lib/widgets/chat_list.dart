import 'package:flutter/material.dart';
import 'package:vlinx/info.dart';
import 'package:vlinx/widgets/my_message_card.dart';
import 'package:vlinx/widgets/sender_message_card.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          if (messages[index]['isMe'] == true) {
            /// return My Message

            return MyMessageCard(
              date: messages[index]['time'].toString(),
              message: messages[index]['text'].toString(),
            );
          }
          return SenderMessageCard(
            date: messages[index]['time'].toString(),
            message: messages[index]['text'].toString(),
          );
        });
  }
}
