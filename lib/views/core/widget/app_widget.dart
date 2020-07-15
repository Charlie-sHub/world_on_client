import 'package:flutter/material.dart';
import 'package:worldon/views/authentication/pages/log_in_page.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "World On",
      home: LogInPage(),
    );
  }
}
