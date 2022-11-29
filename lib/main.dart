import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:vlinx/firebase_options.dart';
import 'package:vlinx/responsive/responsive_layout.dart';
import 'package:vlinx/screens/mobile_screen_layout.dart';
import 'package:vlinx/screens/web_screen_layout.dart';
import 'package:vlinx/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vlinx',
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: backgroundColor),
      home: const ResponsiveLayout(
        mobileScreenLayout: MobileScreenLayout(),
        webScreenLayout: WebScreenLayout(),
      ),
    );
  }
}
