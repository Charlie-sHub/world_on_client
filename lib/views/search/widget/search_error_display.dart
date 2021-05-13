import 'package:auto_size_text/auto_size_text.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:worldon/core/error/failure.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widgets/error/critical_error_display.dart';

class SearchErrorDisplay extends StatelessWidget {
  final Failure failure;
  final Function() retryFunction;
  final Option<String> specificMessage;

  const SearchErrorDisplay({
    Key? key,
    required this.failure,
    required this.retryFunction,
    // It probably shouldn't be required, but i like it better as a required option as ironic as it may sound
    required this.specificMessage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: retryFunction,
      child: Center(
        child: failure.maybeMap(
          coreData: (failure) => failure.coreDataFailure.maybeMap(
            notFoundError: (_) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Icon(
                  Icons.sentiment_dissatisfied,
                  color: WorldOnColors.red,
                  size: 50,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AutoSizeText(
                      S.of(context).notFoundError,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    AutoSizeText(
                      S.of(context).tapToReload,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ],
            ),
            orElse: () {},
          ),
          orElse: () => CriticalErrorDisplay(failure: failure),
        ),
      ),
    );
  }
}
