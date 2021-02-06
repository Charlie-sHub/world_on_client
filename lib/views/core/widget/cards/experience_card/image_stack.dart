import 'package:flutter/material.dart';
import 'package:worldon/domain/core/entities/experience/experience.dart';
import 'package:worldon/views/core/widget/misc/user_image.dart';

class ImageStack extends StatelessWidget {
  const ImageStack({
    Key key,
    @required this.experience,
  }) : super(key: key);

  final Experience experience;

  @override
  Widget build(BuildContext context) {
    // Had a container of 250px height
    return Stack(
      children: <Widget>[
        // Had a container of the width
        Center(
          child: Image.network(experience.imageURLs.first),
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
            /*
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Icon(
                    Icons.place,
                    size: 30,
                  ),
                  // TODO: Implement bloc that checks the distance from the experience
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
             */
          ],
        ),
      ],
    );
  }
}
