import 'dart:io';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/misc/world_on_colors.dart';
import 'package:worldon/views/core/widget/misc/user_image.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      child: Stack(
        children: <Widget>[
          // TODO: Change to the real image from the experience
          Container(
            width: MediaQuery.of(context).size.width,
            child: experience.imageURLs.first.contains("assets/")
                ? Image(
                    image: AssetImage(experience.imageURLs.first),
                    fit: BoxFit.cover,
                  )
                : Image(
                    image: FileImage(
                      File(experience.imageURLs.first),
                    ),
                    fit: BoxFit.cover,
                  ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5),
                    child: UserImage(user: experience.creator),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const <Widget>[
                    Icon(
                      Icons.place,
                      size: 30,
                    ),
                    // TODO: Implement a function that checks the distance from the experience
                    AutoSizeText(
                      "500m",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        color: WorldOnColors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
