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
    return SafeArea(
      child: Scaffold(
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
              color: WorldOnColors.primary,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: AutoSizeText(
                  S.of(context).welcomeMessage,
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 25),
                ),
              ),
              TextButton(
                onPressed: () => context.router.replace(const MainPageRoute()),
                child: const Icon(
                  Icons.check,
                  size: 90,
                  color: WorldOnColors.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
