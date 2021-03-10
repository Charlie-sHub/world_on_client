import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Image(
          height: 38,
          width: 38,
          image: AssetImage(Assets.worldOnLogo),
        ),
        centerTitle: true,
        title: Text(
          S.of(context).welcomeTitle,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: AutoSizeText(
            S.of(context).welcomeMessage,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 25),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(30),
        child: IconButton(
          onPressed: () => context.navigator.replace(Routes.mainPage),
          color: WorldOnColors.primary,
          icon: const Icon(
            Icons.arrow_forward_rounded,
            size: 70,
          ),
          tooltip: S.of(context).continueToMainPage,
        ),
      ),
    );
  }
}
