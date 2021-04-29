import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan_code.dart';
import 'package:worldon/generated/l10n.dart';
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
        children: [
          AutoSizeText(
            plan.name.getOrCrash(),
            style: const TextStyle(
              fontSize: 17,
            ),
          ),
          const SizedBox(height: 5),
          AutoSizeText(
            plan.description.getOrCrash(),
            style: const TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 5),
          if (plan.code != PromotionPlanCode.none)
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "${S.of(context).purchaseDate}: ${plan.boughtDate.year}-${plan.boughtDate.month}-${plan.boughtDate.day}",
                  style: const TextStyle(
                    fontSize: 10,
                    color: WorldOnColors.accent,
                  ),
                ),
                Text(
                  "${S.of(context).validUntil}: ${_expirationDate.year}-${_expirationDate.month}-${_expirationDate.day}",
                  style: const TextStyle(
                    fontSize: 10,
                    color: WorldOnColors.red,
                  ),
                ),
              ],
            ),
          const SizedBox(height: 5),
          // TODO: Show metrics, such as time it's been seen
          if (plan.code != PromotionPlanCode.none)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: AutoSizeText(
                "${S.of(context).yourPromotionsHaveBeenSeen} ${plan.timesSeen} ${S.of(context).times}",
                style: const TextStyle(
                  fontSize: 12,
                  color: WorldOnColors.primary,
                ),
                textAlign: TextAlign.center,
              ),
            ),
        ],
      ),
    );
  }
}
