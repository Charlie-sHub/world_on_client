import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';

class StorePage extends StatelessWidget {
  // TODO: Get user like the profile does
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          S.of(context).store,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      // TODO: Create store UI
      body: const Center(
        child: Text("PLACEHOLDER"),
      ),
    );
  }
}
