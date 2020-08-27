import 'package:flutter/material.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/views/core/widget/error/critical_error_display.dart';

import 'not_found_error_display.dart';

class ErrorDisplay extends StatelessWidget {
  final Failure failure;

  const ErrorDisplay({
    Key key,
    @required this.failure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: failure.maybeMap(
            coreData: (failure) => failure.coreDataFailure.maybeMap(
              notFoundError: (_) => NotFoundErrorDisplay(),
              orElse: () => null,
            ),
            // TODO: Make the ErrorDisplay take the function that it should re-try on tap
            // And wrap the CriticalErrorDisplay with an InkWell with said function
            // That way other error displays won't be able to re-try if they shouldn't such as NotFoundErrorDisplay
            orElse: () => CriticalErrorDisplay(failure: failure),
          ),
        ),
      ),
    );
  }
}
