import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/purchasable_items_watcher/watch_purchasable_items_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/store/widgets/item_store_body/item_to_buy_tile.dart';

class ItemListBuilder extends StatelessWidget {
  const ItemListBuilder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => SizedBox(
        height: MediaQuery.of(context).size.height * 0.42,
        child: BlocProvider(
          create: (context) => getIt<WatchPurchasableItemsBloc>()
            ..add(
              const WatchPurchasableItemsEvent.watchPurchasableItemsStarted(),
            ),
          child: BlocBuilder<WatchPurchasableItemsBloc,
              WatchPurchasableItemsState>(
            builder: (context, state) => state.map(
              initial: (_) => Container(),
              loadInProgress: (_) => const WorldOnProgressIndicator(
                size: 60,
              ),
              loadSuccess: (state) => RefreshIndicator(
                onRefresh: () async =>
                    context.read<WatchPurchasableItemsBloc>().add(
                          const WatchPurchasableItemsEvent
                              .watchPurchasableItemsStarted(),
                        ),
                child: ListView.separated(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(
                    bottom: kFloatingActionButtonMargin + 50,
                    left: 10,
                    right: 10,
                    top: 10,
                  ),
                  itemCount: state.items.size,
                  separatorBuilder: (context, index) => const Divider(
                    color: WorldOnColors.accent,
                  ),
                  itemBuilder: (context, index) {
                    final _item = state.items[index];
                    if (_item.isValid) {
                      return ItemToBuyTile(
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
                retryFunction: () =>
                    context.read<WatchPurchasableItemsBloc>().add(
                          const WatchPurchasableItemsEvent
                              .watchPurchasableItemsStarted(),
                        ),
                failure: state.failure,
                specificMessage: none(),
              ),
            ),
          ),
        ),
      );
}
