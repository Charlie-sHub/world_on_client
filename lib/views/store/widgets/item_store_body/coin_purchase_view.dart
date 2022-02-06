import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/buy_coins/buy_coins_bloc.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/store/widgets/item_store_body/buy_ten_coins_button.dart';

class CoinPurchaseView extends StatelessWidget {
  const CoinPurchaseView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: BlocProvider(
          create: (context) => getIt<BuyCoinsBloc>(),
          child: BlocListener<BuyCoinsBloc, BuyCoinsState>(
            listener: _buyCoinsListener,
            child: BuyTenCoinsButton(),
          ),
        ),
      );

  void _buyCoinsListener(BuildContext context, BuyCoinsState state) =>
      state.maybeMap(
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
              cancelled: (_) => S.of(context).cancelledByUser,
              unAvailableStore: (_) => S.of(context).unAvailableStore,
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        orElse: () => null,
      );
}
