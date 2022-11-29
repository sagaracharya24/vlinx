import 'package:flutter/material.dart';
import 'package:vlinx/utils/colors.dart';
import 'package:vlinx/widgets/chat_list.dart';
import 'package:vlinx/widgets/contacts_list.dart';
import 'package:vlinx/widgets/web_chat_appbar.dart';
import 'package:vlinx/widgets/web_profile_bar.dart';
import 'package:vlinx/widgets/web_search_bar.dart';

class WebScreenLayout extends StatelessWidget {
  const WebScreenLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: const [WebProfileBar(), WebSearchBar(), ContactsList()],
            ),
          ),
        ),

        // Web screen
        Container(
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/backgroundImage.png',
                ),
                fit: BoxFit.cover),
          ),
          child: Column(
            children: [
              WebChatAppBar(),
              Expanded(child: ChatList()),
              Container(
                height: MediaQuery.of(context).size.height * 0.07,
                padding: const EdgeInsets.all(10.0),
                decoration: const BoxDecoration(
                    color: chatBarMessage,
                    border: Border(
                      bottom: BorderSide(color: dividerColor),
                    )),
                child: Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.emoji_emotions_outlined,
                            color: Colors.grey)),
                    IconButton(
                        onPressed: () {},
                        icon:
                            const Icon(Icons.attach_file, color: Colors.grey)),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.only(left: 10, right: 15),
                      child: TextField(
                        decoration: InputDecoration(
                          fillColor: searchBarColor,
                          filled: true,
                          hintText: 'Type a message',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: const BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          contentPadding: const EdgeInsets.only(left: 20.0),
                        ),
                      ),
                    )),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.mic, color: Colors.grey)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
