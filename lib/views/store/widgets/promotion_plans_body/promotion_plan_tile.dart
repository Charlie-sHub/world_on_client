import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:worldon/application/store/buy_promotion_plan_actor/buy_promotion_plan_actor_bloc.dart';
import 'package:worldon/domain/core/entities/promotion_plan/promotion_plan.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class PromotionPlanTile extends StatelessWidget {
  const PromotionPlanTile({
    Key? key,
    required this.plan,
  }) : super(key: key);

  final PromotionPlan plan;

  @override
  Widget build(BuildContext context) {
    final expirationDate = DateTime.now().add(
      Duration(days: plan.amountOfDays),
    );
    final expirationDateString =
        "${S.of(context).validUntilIfBoughtToday}: ${expirationDate.year}-${expirationDate.month}-${expirationDate.day}";
    return Slidable(
      endActionPane: ActionPane(
        motion: const DrawerMotion(),
        children: [
          SlidableAction(
            onPressed: (_) => context.read<BuyPromotionPlanActorBloc>().add(
                  BuyPromotionPlanActorEvent.boughtPromotionPlan(plan),
                ),
            backgroundColor: WorldOnColors.primary,
            foregroundColor: WorldOnColors.white,
            label: S.of(context).buyItem,
            icon: Icons.payments_rounded,
          ),
        ],
      ),
      child: ListTile(
        isThreeLine: true,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plan.name.getOrCrash(),
              style: const TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 5),
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        plan.description.getOrCrash(),
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 5),
          ],
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              "${S.of(context).duration}: ${plan.amountOfDays}",
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: WorldOnColors.accent,
              ),
            ),
            Text(
              expirationDateString,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: WorldOnColors.accent,
              ),
            ),
          ],
        ),
        trailing: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.euro_rounded,
                color: WorldOnColors.primary,
                size: 20,
              ),
              Text(
                plan.valueInEuros.toString(),
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
