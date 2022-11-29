import 'package:flutter/material.dart';
import 'package:vlinx/common/widgets/error_screen.dart';
import 'package:vlinx/features/auth/screens/login_screen.dart';
import 'package:vlinx/features/auth/screens/otp_screen.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(builder: (context) => const LoginScreen());
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
          builder: (context) => OTPScreen(verificationId: verificationId));
    default:
      return MaterialPageRoute(
          builder: (context) =>
              const ErrorScreen(errorText: 'This Page Does not Exists'));
  }
}
