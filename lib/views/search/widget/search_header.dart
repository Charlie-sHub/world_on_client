import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/search/search_by_name_form/search_by_name_form_bloc.dart';

class SearchHeader extends StatelessWidget {
  const SearchHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const _borderRadius = BorderRadius.all(
      Radius.circular(30),
    );
    return Form(
      autovalidateMode: context.read<SearchByNameFormBloc>().state.showErrorMessages ? AutovalidateMode.always : AutovalidateMode.disabled,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Material(
          elevation: 15,
          borderRadius: _borderRadius,
          child: TextFormField(
            onChanged: (value) => context.read<SearchByNameFormBloc>().add(
                  SearchByNameFormEvent.searchTermChanged(value.trim()),
                ),
            decoration: const InputDecoration(
              prefixIcon: Icon(
                Icons.search,
                size: 35,
              ),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
            ),
            onFieldSubmitted: (_) => _submit(context),
          ),
        ),
      ),
    );
  }

  void _submit(BuildContext context) => context.read<SearchByNameFormBloc>().add(
        const SearchByNameFormEvent.submitted(),
      );
}
