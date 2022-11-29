import 'package:flutter/material.dart';

class ErrorScreen extends StatelessWidget {
  final String errorText;
  const ErrorScreen({Key? key, required this.errorText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        errorText,
        style: const TextStyle(color: Colors.red),
      ),
    );
  }
}
