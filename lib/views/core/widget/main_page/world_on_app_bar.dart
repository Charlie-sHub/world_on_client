import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:worldon/application/authentication/authentication/authentication_bloc.dart';
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
        icon: FaIcon(FontAwesomeIcons.signOutAlt),
        onPressed: () => context.bloc<AuthenticationBloc>().add(const AuthenticationEvent.loggedOut()),
      ),
      centerTitle: true,
      title: Row(
        children: const <Widget>[
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Image(
                image: AssetImage('assets/world_on_logo.jpg'),
              ),
            ),
          ),
          Text(
            "WORLD ON",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
        ],
      ),
      actions: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          // TODO: Wrap in bloc that checks if there are unseen notifications
          child: NotificationsButton(),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 5),
          // TODO: Wrap in bloc that checks if there are new messages
          child: MessagesButton(),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
