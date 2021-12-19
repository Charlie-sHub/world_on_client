import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:worldon/application/share/search_to_share/search_to_share_bloc.dart';
import 'package:worldon/generated/l10n.dart';

class InternalShareForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Form(
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
              onChanged: (value) => context.read<SearchToShareBloc>().add(
                    SearchToShareEvent.searchTermChanged(value.trim()),
                  ),
              decoration: InputDecoration(
                hintText: S.of(context).search,
                contentPadding: const EdgeInsets.all(10),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
              ),
            ),
          ),
        ),
      );
}
