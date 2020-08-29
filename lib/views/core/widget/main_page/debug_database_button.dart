import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/data/core/moor/moor_database.dart';
import 'package:worldon/injection.dart';
import 'package:worldon/views/core/routes/router.gr.dart';

class DebugDatabaseButton extends StatelessWidget {
  const DebugDatabaseButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const FaIcon(
        FontAwesomeIcons.database,
        size: 25,
      ),
      onPressed: () => context.navigator.push(
        Routes.moorDbViewer,
        arguments: MoorDbViewerArguments(
          db: getIt<Database>(),
        ),
      ),
    );
  }
}
