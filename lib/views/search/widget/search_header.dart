import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: context.read<SearchByNameFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: TextFormField(
              onChanged: (value) => context.read<SearchByNameFormBloc>().add(
                    SearchByNameFormEvent.searchTermChanged(value.trim()),
                  ),
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                labelText: S.of(context).search,
              ),
              validator: (_) => context.read<SearchByNameFormBloc>().state.searchTerm.value.fold(
                    (failure) => failure.maybeMap(
                      emptyString: (_) => S.of(context).searchTermEmptyString,
                      orElse: () => S.of(context).unknownError,
                    ),
                    (_) => null,
                  ),
              onFieldSubmitted: (_) => _submit(context),
            ),
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
              size: 35,
            ),
            onPressed: () => _submit(context),
          ),
        ],
      ),
    );
  }

  void _submit(BuildContext context) => context.read<SearchByNameFormBloc>().add(
        const SearchByNameFormEvent.submitted(),
      );
}
