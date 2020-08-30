import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:provider/provider.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
import 'package:worldon/core/assets.dart';
import 'package:worldon/views/core/widget/main_page/debug_database_button.dart';
import 'package:worldon/views/core/widget/main_page/messages_widget.dart';
import 'package:worldon/views/core/widget/main_page/notifications_widget.dart';

class WorldOnAppBar extends StatelessWidget implements PreferredSizeWidget {
  const WorldOnAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const FaIcon(FontAwesomeIcons.signOutAlt),
        onPressed: () => context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.loggedOut()),
      ),
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.all(5),
        child: Row(
          children: const <Widget>[
            Expanded(
              child: Padding(
                padding: EdgeInsets.all(3),
                child: Image(
                  image: AssetImage(Assets.worldOnLogo),
                ),
              ),
            ),
            Text(
              "WORLD ON",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
            ),
          ],
        ),
      ),
      actions: <Widget>[
        if (Provider.of<String>(context) != Environment.prod) const DebugDatabaseButton(),
        const NotificationsButton(),
        const MessagesButton(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
