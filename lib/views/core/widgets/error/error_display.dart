import 'package:flutter/material.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/views/core/widgets/error/critical_error_display.dart';

import 'not_found_error_display.dart';

class ErrorDisplay extends StatelessWidget {
  final Failure failure;
  final Function() retryFunction;

  const ErrorDisplay({
    Key key,
    @required this.failure,
    @required this.retryFunction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: retryFunction,
      child: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: failure.maybeMap(
              coreData: (failure) => failure.coreDataFailure.maybeMap(
                notFoundError: (_) => NotFoundErrorDisplay(),
                orElse: () => null,
              ),
              orElse: () => CriticalErrorDisplay(failure: failure),
            ),
          ),
        ),
      ),
    );
  }
}
