import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class PromotionPlansHeader extends StatelessWidget {
  const PromotionPlansHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.2,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image(
              image: const AssetImage("assets/city_aerial_view_road.jpg"),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Positioned.fill(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 0.75,
                  sigmaY: 0.75,
                ),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  const Icon(
                    MdiIcons.accountGroup,
                    size: 50,
                    color: WorldOnColors.white,
                  ),
                  Text(
                    S.of(context).promotionsHeaderTitle,
                    textAlign: TextAlign.center,
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
                ],
              ),
            ),
          ],
        ),
      );
}
