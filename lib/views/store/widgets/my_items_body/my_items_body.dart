import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/store/widgets/my_items_body/item_tile.dart';

class MyItemsBody extends StatelessWidget {
  const MyItemsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        children: [
          BlocBuilder<LoadUserBloc, LoadUserState>(
            builder: (context, state) => state.map(
              initial: (_) => Container(),
              actionInProgress: (_) => const WorldOnProgressIndicator(
                size: 60,
              ),
              loadSuccess: (state) {
                final _itemList = state.user.items.toImmutableList();
                return SizedBox(
                  height: MediaQuery.of(context).size.height * 0.85,
                  child: RefreshIndicator(
                    onRefresh: () async => context.read<LoadUserBloc>().add(
                          const LoadUserEvent.loadedUser(),
                        ),
                    child: _itemList.isNotEmpty()
                        ? ListView.builder(
                            physics: const BouncingScrollPhysics(),
                            padding: const EdgeInsets.all(5),
                            itemCount: _itemList.size,
                            itemBuilder: (context, index) {
                              final _item = _itemList[index];
                              if (_item.isValid) {
                                return ItemTile(
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
                          )
                        : Center(
                            child: Text(
                              S.of(context).noItemsOwned,
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w900,
                                fontSize: 20,
                              ),
                            ),
                          ),
                  ),
                );
              },
              loadFailure: (state) => ErrorDisplay(
                retryFunction: () => context.read<LoadUserBloc>().add(
                      const LoadUserEvent.loadedUser(),
                    ),
                failure: state.failure,
                specificMessage: some(S.of(context).notFoundErrorBoughtItems),
              ),
            ),
          ),
        ],
      );
}
