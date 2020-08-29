import 'package:flutter/material.dart';
import 'package:worldon/domain/authentication/use_case/get_logged_in_user.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';

/// This class only exists because the [GetLoggedInUser] use case doesn't give back possible failures
/// Something to rework in the future for sure
class ProfileCriticalFailure extends StatelessWidget {
  const ProfileCriticalFailure({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Icon(
              Icons.error_outline,
              color: WorldOnColors.red,
              size: 70,
            ),
            SizedBox(height: 10),
            Text(
              "There's been a critical failure",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Text(
              "Tap to try again",
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
