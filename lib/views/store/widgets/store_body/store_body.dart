import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/buy_coins/buy_coins_bloc.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/application/store/purchasable_items_watcher/watch_purchasable_items_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/store/widgets/store_body/buy_ten_coins_button.dart';
import 'package:worldon/views/store/widgets/store_body/item_to_buy_card.dart';

class StoreBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
            horizontal: 10,
          ),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.6,
            color: Colors.white,
            child: BlocProvider(
              create: (context) => getIt<WatchPurchasableItemsBloc>()
                ..add(
                  const WatchPurchasableItemsEvent.watchPurchasableItemsStarted(),
                ),
              child: BlocBuilder<WatchPurchasableItemsBloc, WatchPurchasableItemsState>(
                builder: (context, state) => state.map(
                  initial: (_) => Container(),
                  loadInProgress: (_) => const WorldOnProgressIndicator(),
                  loadSuccess: (state) => RefreshIndicator(
                    onRefresh: () async => context.read<WatchPurchasableItemsBloc>().add(
                          const WatchPurchasableItemsEvent.watchPurchasableItemsStarted(),
                        ),
                    child: ListView.builder(
                      physics: const BouncingScrollPhysics(),
                      padding: const EdgeInsets.all(5),
                      itemCount: state.items.size,
                      itemBuilder: (context, index) {
                        final _item = state.items[index];
                        if (_item.isValid) {
                          return ItemToBuyCard(
                            item: _item,
                            key: Key(_item.id.toString()),
                          );
                        } else {
                          return ErrorCard(
                            entityType: S.of(context).item,
                            valueFailureString: _item.failureOption.fold(
                              () => S.of(context).noError,
                              (failure) => failure.toString(),
                            ),
                          );
                        }
                      },
                    ),
                  ),
                  loadFailure: (state) => ErrorDisplay(
                    retryFunction: () => context.read<WatchPurchasableItemsBloc>().add(
                          const WatchPurchasableItemsEvent.watchPurchasableItemsStarted(),
                        ),
                    failure: state.failure,
                    specificMessage: none(),
                  ),
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        S.of(context).youHave,
                        style: const TextStyle(
                          color: WorldOnColors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlocBuilder<LoadUserBloc, LoadUserState>(
                            builder: (context, state) => AutoSizeText(
                              state.maybeMap(
                                loadSuccess: (state) => state.user.coins.toString(),
                                orElse: () => 0.toString(),
                              ),
                              style: const TextStyle(
                                color: WorldOnColors.primary,
                                fontWeight: FontWeight.bold,
                                fontSize: 35,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Image.asset(
                            "assets/world_on_coin.png",
                            scale: 5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Center(
                  child: BlocProvider(
                    create: (context) => getIt<BuyCoinsBloc>(),
                    child: BlocListener<BuyCoinsBloc, BuyCoinsState>(
                      listener: _buyCoinsListener,
                      child: BuyTenCoinsButton(),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  void _buyCoinsListener(BuildContext context, BuyCoinsState state) => state.maybeMap(
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
              orElse: () => S.of(context).unknownError,
            ),
            orElse: () => S.of(context).unknownError,
          ),
        ).show(context),
        orElse: () => null,
      );
}
// TODO: reload LoadUser when buying things
// User that bloc to get the user's coins and items
