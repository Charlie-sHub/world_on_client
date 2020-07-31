import 'package:flutter/material.dart';

// TODO: Implement this view
class ProfileEditingForm extends StatelessWidget {
  const ProfileEditingForm({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Editing Profile",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
          textAlign: TextAlign.center,
        ),
      ),
      body: const Center(
        child: Text(
          "Profile Editing Form",
        ),
      ),
    );
  }
}
