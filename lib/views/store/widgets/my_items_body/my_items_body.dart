import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/core/widgets/error/error_display.dart';
import 'package:worldon/views/core/widgets/misc/world_on_progress_indicator.dart';
import 'package:worldon/views/store/widgets/my_items_body/item_card.dart';

class MyItemsBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoadUserBloc, LoadUserState>(
      builder: (context, state) => state.map(
        initial: (_) => Container(),
        actionInProgress: (_) => const WorldOnProgressIndicator(),
        loadSuccess: (state) {
          final _itemList = state.user.items.toImmutableList();
          return RefreshIndicator(
            onRefresh: () async => context.bloc<LoadUserBloc>().add(
              const LoadUserEvent.loadedUser(),
            ),
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(5),
              itemCount: _itemList.size,
              itemBuilder: (context, index) {
                final _item = _itemList[index];
                if (_item.isValid) {
                  return ItemCard(
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
          );
        },
        loadFailure: (state) => ErrorDisplay(
          retryFunction: () => context.bloc<LoadUserBloc>().add(
                const LoadUserEvent.loadedUser(),
              ),
          failure: state.failure,
          specificMessage: some(S.of(context).notFoundErrorBoughtItems),
        ),
      ),
    );
  }
}
