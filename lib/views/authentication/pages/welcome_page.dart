import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SafeArea(
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            automaticallyImplyLeading: false,
            title: Text(
              S.of(context).welcomeTitle,
              style: const TextStyle(
                color: WorldOnColors.primary,
                fontWeight: FontWeight.w900,
                fontSize: 30,
              ),
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: AutoSizeText(
                    S.of(context).welcomeMessage,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                      color: Colors.grey.shade700,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () => context.router.replace(
                    MainPageRoute(
                      isNewUser: true,
                    ),
                  ),
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
