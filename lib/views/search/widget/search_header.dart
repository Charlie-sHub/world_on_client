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
    const double _cornerRadius = 30;
    return Form(
      autovalidateMode: context.read<SearchByNameFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: SizedBox(
          height: 45,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Material(
                  elevation: 15,
                  borderRadius: const BorderRadius.all(
                    Radius.circular(_cornerRadius),
                  ),
                  child: TextFormField(
                    onChanged: (value) => context.read<SearchByNameFormBloc>().add(
                          SearchByNameFormEvent.searchTermChanged(value.trim()),
                        ),
                    decoration: InputDecoration(
                      prefixIcon: const Icon(Icons.search),
                      labelText: S.of(context).search,
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(_cornerRadius),
                        ),
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(_cornerRadius),
                        ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                        ),
                      ),
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
        ),
      ),
    );
  }

  void _submit(BuildContext context) => context.read<SearchByNameFormBloc>().add(
        const SearchByNameFormEvent.submitted(),
      );
}
