import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/buy_item/buy_item_bloc.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/domain/core/entities/item/item.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/store/widgets/store_body/buy_item_button.dart';
import 'package:worldon/views/store/widgets/store_body/owned_button.dart';

class BuyButtonBuilder extends StatelessWidget {
  final Item item;

  const BuyButtonBuilder({
    Key key,
    @required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<BuyItemBloc>()
        ..add(
          BuyItemEvent.initialized(item),
        ),
      child: BlocConsumer<BuyItemBloc, BuyItemState>(
        listener: _buyItemListener,
        builder: (context, state) => state.map(
          initial: (_) => Container(),
          actionInProgress: (_) => const CircularProgressIndicator(),
          owns: (_) => OwnedButton(),
          doesNotOwn: (_) => BuyItemButton(item: item),
          purchaseSuccess: (_) => OwnedButton(),
          purchaseFailure: (_) => BuyItemButton(item: item),
        ),
      ),
    );
  }

  void _buyItemListener(BuildContext context, BuyItemState state) => state.maybeMap(
        purchaseSuccess: (_) => context.read<LoadUserBloc>().add(
              const LoadUserEvent.loadedUser(),
            ),
        purchaseFailure: (state) => FlushbarHelper.createError(
          duration: const Duration(seconds: 2),
          message: state.failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              serverError: (failure) => failure.errorString,
              orElse: () => S.of(context).unknownError,
            ),
            storeData: (failure) => failure.storeDataFailure.maybeMap(
              notEnoughCoins: (_) => S.of(context).notEnoughCoins,
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        orElse: () => null,
      );
}
