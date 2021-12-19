import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'store_app_bar_title_bloc.freezed.dart';
part 'store_app_bar_title_event.dart';
part 'store_app_bar_title_state.dart';

@injectable
class StoreAppBarTitleBloc
    extends Bloc<StoreAppBarTitleEvent, StoreAppBarTitleState> {
  StoreAppBarTitleBloc() : super(const StoreAppBarTitleState.initial()) {
    on<_Initialized>(_onInitialized);
    on<_ShowedStore>(_onShowedStore);
    on<_ShowedPromotions>(_onShowedPromotions);
    on<_ShowedMyItems>(_onShowedMyItems);
  }

  void _onShowedMyItems(_, Emitter emit) {
    emit(const StoreAppBarTitleState.myItems());
  }

  void _onShowedPromotions(_, Emitter emit) {
    emit(const StoreAppBarTitleState.promotions());
  }

  void _onShowedStore(_, Emitter emit) {
    emit(const StoreAppBarTitleState.store());
  }

  void _onInitialized(_, Emitter emit) {
    emit(const StoreAppBarTitleState.initial());
  }
}
