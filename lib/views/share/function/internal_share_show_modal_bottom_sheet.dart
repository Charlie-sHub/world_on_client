import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/share/widget/internal_share_sheet.dart';

void internalShareShowModalBottomSheet(BuildContext context, Experience experience) => showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(25),
        ),
      ),
      builder: (context) => InternalShareSheet(experience: experience),
    );
