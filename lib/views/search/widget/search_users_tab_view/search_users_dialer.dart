import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:worldon/application/search/search_users_by_name_watcher/search_users_by_name_watcher_bloc.dart';
import 'package:worldon/domain/core/validation/objects/search_term.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

class SearchUsersDialer extends StatelessWidget {
  const SearchUsersDialer({
    Key? key,
    required this.searchTerm,
  }) : super(key: key);

  final SearchTerm searchTerm;

  @override
  Widget build(BuildContext context) {
    return SpeedDial(
      curve: Curves.easeInCirc,
      overlayColor: WorldOnColors.background,
      overlayOpacity: 0.1,
      animatedIcon: AnimatedIcons.ellipsis_search,
      animatedIconTheme: const IconThemeData(size: 40),
      children: [
        SpeedDialChild(
          onTap: () => context.read<SearchUsersByNameWatcherBloc>().add(
                SearchUsersByNameWatcherEvent.watchUsersFoundByNameStarted(searchTerm),
              ),
          label: S.of(context).name,
          labelStyle: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
          child: const Icon(
            Icons.assignment_ind,
            color: WorldOnColors.red,
          ),
        ),
      ],
    );
  }
}
