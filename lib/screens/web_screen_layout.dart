import 'package:flutter/material.dart';
import 'package:vlinx/widgets/contacts_list.dart';
import 'package:vlinx/widgets/web_profile_bar.dart';

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
              children: [
                const WebProfileBar(),

                /// web search bar
                ContactsList()
              ],
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
        ),
      ],
    ));
  }
}
