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
      autovalidateMode: context.read<SearchByNameFormBloc>().state.showErrorMessages
          ? AutovalidateMode.always
          : AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
        ),
        child: Material(
          elevation: 15,
          borderRadius: const BorderRadius.all(
            Radius.circular(30),
          ),
          child: TextFormField(
            onChanged: (value) => context.read<SearchByNameFormBloc>().add(
                  SearchByNameFormEvent.searchTermChanged(value.trim()),
                ),
            decoration: InputDecoration(
              hintText: S.of(context).search,
              contentPadding: const EdgeInsets.all(10),
              suffixIcon: IconButton(
                icon: const Icon(
                  Icons.search,
                  size: 35,
                ),
                onPressed: () => _submit(context),
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }

  void _submit(BuildContext context) {
    FocusScope.of(context).unfocus();
    context.read<SearchByNameFormBloc>().add(
          const SearchByNameFormEvent.submitted(),
        );
  }
}
