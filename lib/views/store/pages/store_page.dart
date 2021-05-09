import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/application/store/store_navigation_actor/store_navigation_actor_bloc.dart';
import 'package:worldon/views/store/widgets/my_items_body/my_items_body.dart';
import 'package:worldon/views/store/widgets/promotion_plans_body/promotion_plans_body.dart';
import 'package:worldon/views/store/widgets/store_app_bar.dart';
import 'package:worldon/views/store/widgets/store_body/store_body.dart';
import 'package:worldon/views/store/widgets/store_bottom_navigation_bar.dart';

import '../../../injection.dart';

class StorePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<StoreNavigationActorBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<LoadUserBloc>()
            ..add(
              const LoadUserEvent.loadedUser(),
            ),
        ),
      ],
      child: BlocBuilder<StoreNavigationActorBloc, StoreNavigationActorState>(
        builder: (context, state) => SafeArea(
          child: Scaffold(
            appBar: StoreAppBar(),
            body: IndexedStack(
              index: context.read<StoreNavigationActorBloc>().state.map(
                    storeView: (_) => 0,
                    promotionPlansView: (_) => 1,
                    myItemsView: (_) => 2,
                  ),
              children: [
                StoreBody(),
                PromotionPlansBody(),
                MyItemsBody(),
              ],
            ),
            bottomNavigationBar: StoreBottomNavigationBar(),
          ),
        ),
      ),
    );
  }
}
