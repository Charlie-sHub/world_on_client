import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/store/load_user/load_user_bloc.dart';
import 'package:worldon/application/store/store_navigation_actor/store_navigation_actor_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/store/widgets/my_items_body/my_items_body.dart';
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
            appBar: AppBar(
              title: Text(
                S.of(context).storePageTitle,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              centerTitle: true,
            ),
            body: IndexedStack(
              index: context.read<StoreNavigationActorBloc>().state.map(
                    storeView: (_) => 0,
                    myItemsView: (_) => 1,
                  ),
              children: [
                StoreBody(),
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
