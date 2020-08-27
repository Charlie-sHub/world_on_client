import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';
import 'package:worldon/views/core/misc/string_constants.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidate: context.bloc<SearchByNameFormBloc>().state.showErrorMessages,
      child: Container(
        height: 50,
        child: Row(
          children: <Widget>[
            Expanded(
              child: TextFormField(
                onChanged: (value) => context.bloc<SearchByNameFormBloc>().add(
                      SearchByNameFormEvent.searchTermChanged(value.trim()),
                    ),
                decoration: const InputDecoration(
                  labelText: "Search",
                ),
                validator: (_) => context.bloc<SearchByNameFormBloc>().state.searchTerm.value.fold(
                      (failure) => failure.maybeMap(
                        emptyString: (_) => "The search term can't be empty",
                        orElse: () => StringConst.unknownError,
                      ),
                      (_) => null,
                    ),
                onFieldSubmitted: (_) => _submit(context),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.search,
                size: 35,
              ),
              onPressed: () => _submit(context),
            ),
          ],
        ),
      ),
    );
  }

  void _submit(BuildContext context) => context.bloc<SearchByNameFormBloc>().add(
        const SearchByNameFormEvent.submitted(),
      );
}
