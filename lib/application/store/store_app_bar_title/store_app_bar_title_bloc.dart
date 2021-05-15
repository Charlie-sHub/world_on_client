import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'store_app_bar_title_bloc.freezed.dart';

part 'store_app_bar_title_event.dart';

part 'store_app_bar_title_state.dart';

@injectable
class StoreAppBarTitleBloc extends Bloc<StoreAppBarTitleEvent, StoreAppBarTitleState> {
  StoreAppBarTitleBloc() : super(const StoreAppBarTitleState.initial());

  @override
  Stream<StoreAppBarTitleState> mapEventToState(StoreAppBarTitleEvent event) async* {
    yield* event.map(
      initialized: _onInitialized,
      showedStore: _onShowedStore,
      showedPromotions: _onShowedPromotions,
      showedMyItems: _onShowedMyItems,
    );
  }

  Stream<StoreAppBarTitleState> _onShowedMyItems(_) async* {
    yield const StoreAppBarTitleState.myItems();
  }

  Stream<StoreAppBarTitleState> _onShowedPromotions(_) async* {
    yield const StoreAppBarTitleState.promotions();
  }

  Stream<StoreAppBarTitleState> _onShowedStore(_) async* {
    yield const StoreAppBarTitleState.store();
  }

  Stream<StoreAppBarTitleState> _onInitialized(_) async* {
    yield const StoreAppBarTitleState.initial();
  }
}
