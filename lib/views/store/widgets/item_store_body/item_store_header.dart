import 'dart:ui';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_plasma.dart';

class ItemStoreHeader extends StatelessWidget {
  const ItemStoreHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width,
        child: BlocBuilder<LoadUserBloc, LoadUserState>(
          builder: (context, state) => state.map(
            initial: (_) => Container(),
            actionInProgress: (_) => WorldOnPlasma(),
            loadSuccess: (loadSuccess) => Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(
                  "assets/experience_placeholder_image.jpg",
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover,
                ),
                Positioned.fill(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 0.75,
                      sigmaY: 0.75,
                    ),
                    child: const ColoredBox(
                      color: Colors.transparent,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  child: SizedBox(
                    height: 30,
                    width: MediaQuery.of(context).size.width * 0.9,
                    child: Center(
                      child: AutoSizeText(
                        loadSuccess.user.name.getOrCrash(),
                        minFontSize: 10,
                        maxFontSize: 20,
                        maxLines: 2,
                        style: const TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                          color: WorldOnColors.white,
                          shadows: [
                            Shadow(
                              offset: Offset(
                                2,
                                2,
                              ),
                              blurRadius: 10,
                              color: WorldOnColors.accent,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 70,
                  child: Text(
                    S.of(context).itemStoreHeaderTitle,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: WorldOnColors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(
                            2,
                            2,
                          ),
                          blurRadius: 10,
                          color: WorldOnColors.accent,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 100,
                  child: AutoSizeText(
                    S.of(context).itemStoreHeaderSubTitle,
                    minFontSize: 10,
                    maxFontSize: 20,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w300,
                      color: WorldOnColors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(
                            2,
                            2,
                          ),
                          blurRadius: 10,
                          color: WorldOnColors.accent,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 10,
                  child: Row(
                    children: [
                      Text(
                        loadSuccess.user.coins.toString(),
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: WorldOnColors.primary,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Image.asset(
                        "assets/world_on_coin.png",
                        scale: 7,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            loadFailure: (loadFailure) => ErrorDisplay(
              failure: loadFailure.failure,
              retryFunction: () => context.read<LoadUserBloc>().add(
                    const LoadUserEvent.loadedUser(),
                  ),
              specificMessage: none(),
            ),
          ),
        ),
      );
}
