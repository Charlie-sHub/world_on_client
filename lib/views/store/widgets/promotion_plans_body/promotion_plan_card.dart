import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/buy_promotion_plan_actor/buy_promotion_plan_actor_bloc.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class PromotionPlanCard extends StatelessWidget {
  const PromotionPlanCard({
    Key? key,
    required this.plan,
  }) : super(key: key);

  final PromotionPlan plan;

  @override
  Widget build(BuildContext context) {
    final _expirationDate = DateTime.now().add(
      Duration(days: plan.amountOfDays),
    );
    return Card(
      margin: const EdgeInsets.all(1),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: Column(
          children: [
            Text(
              plan.name.getOrCrash(),
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: WorldOnColors.background,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        plan.description.getOrCrash(),
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          color: WorldOnColors.background,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "${S.of(context).duration}: ${plan.amountOfDays}",
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: WorldOnColors.accent,
                        ),
                      ),
                      Text(
                        "${S.of(context).validUntilIfBoughtToday}: ${_expirationDate.year}-${_expirationDate.month}-${_expirationDate.day}",
                        style: const TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          color: WorldOnColors.red,
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    ElevatedButton(
                      onPressed: () => context.read<BuyPromotionPlanActorBloc>().add(
                            BuyPromotionPlanActorEvent.boughtPromotionPlan(plan),
                          ),
                      child: Text(
                        S.of(context).buyItem,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.euro_rounded,
                          color: WorldOnColors.primary,
                        ),
                        Text(
                          plan.valueInEuros.toString(),
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: WorldOnColors.primary,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
