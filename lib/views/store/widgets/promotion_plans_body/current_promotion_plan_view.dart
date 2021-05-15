import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan_code.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/common_functions/world_on_number_display.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class CurrentPromotionPlanView extends StatelessWidget {
  const CurrentPromotionPlanView({
    Key? key,
    required this.plan,
  }) : super(key: key);
  final PromotionPlan plan;

  @override
  Widget build(BuildContext context) {
    final _expirationDate = plan.boughtDate.add(
      Duration(days: plan.amountOfDays),
    );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: AutoSizeText(
              plan.name.getOrCrash(),
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
          const SizedBox(height: 10),
          if (plan.code != PromotionPlanCode.none)
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AutoSizeText.rich(
                  TextSpan(
                    text: "${S.of(context).purchaseDate}: ",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "${plan.boughtDate.year}-${plan.boughtDate.month}-${plan.boughtDate.day}",
                        style: const TextStyle(
                          fontSize: 14,
                          color: WorldOnColors.accent,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                AutoSizeText.rich(
                  TextSpan(
                    text: "${S.of(context).validUntil}: ",
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                    children: [
                      TextSpan(
                        text: "${_expirationDate.year}-${_expirationDate.month}-${_expirationDate.day}",
                        style: const TextStyle(
                          fontSize: 14,
                          color: WorldOnColors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          const SizedBox(height: 10),
          if (plan.code != PromotionPlanCode.none)
            AutoSizeText.rich(
              TextSpan(
                text: "${S.of(context).yourPromotionsHaveBeenSeen} ",
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
                children: [
                  TextSpan(
                    text: createWorldOnDisplay(plan.timesSeen),
                    style: const TextStyle(
                      fontSize: 15,
                      color: WorldOnColors.primary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: " ${S.of(context).times}",
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
