import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/share/search_to_share/search_to_share_bloc.dart';
import 'package:worldon/application/share/share_experience_internally/share_experience_internally_bloc.dart';
import 'package:worldon/generated/l10n.dart';
import 'package:worldon/views/core/widgets/cards/error_card.dart';
import 'package:worldon/views/search/widget/search_error_display.dart';
import 'package:worldon/views/share/widget/shareable_circular_avatar_card.dart';

class ShareableResultsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) => BlocBuilder<
          ShareExperienceInternallyBloc, ShareExperienceInternallyState>(
        buildWhen: (previous, current) => previous.users != current.users,
        builder: (context, shareInternallyState) =>
            BlocBuilder<SearchToShareBloc, SearchToShareState>(
          // buildWhen: (previous, current) => true,
          builder: (context, searchState) => SizedBox(
            height: MediaQuery.of(context).size.height * 0.3,
            child: searchState.failureOrSuccessOption.fold(
              () => GridView.builder(
                physics: const ClampingScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisExtent: 110,
                ),
                itemCount: searchState.searchedUsers.size,
                itemBuilder: (context, index) {
                  final _user = searchState.searchedUsers[index];
                  if (_user.isValid) {
                    return ShareableCircularAvatarCard(
                      user: _user,
                      isSelected: shareInternallyState.users.contains(_user),
                      key: Key(_user.id.toString()),
                    );
                  } else {
                    return ErrorCard(
                      entityType: S.of(context).user,
                      valueFailureString: _user.failureOption.fold(
                        () => S.of(context).noError,
                        (failure) => failure.toString(),
                      ),
                    );
                  }
                },
              ),
              (_failure) => _failure.maybeMap(
                coreData: (_coreDataFailure) =>
                    _coreDataFailure.coreDataFailure.maybeMap(
                  notFoundError: (_notFoundError) => SearchErrorDisplay(
                    retryFunction: () => context.read<SearchToShareBloc>().add(
                          const SearchToShareEvent.submitted(),
                        ),
                    failure: _failure,
                    specificMessage: some(S.of(context).notFoundErrorSearch),
                  ),
                  orElse: () => null,
                ),
                orElse: () => null,
              ),
            ),
          ),
        ),
      );
}
