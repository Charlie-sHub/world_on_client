import 'package:flutter/material.dart';

class Map extends StatelessWidget {
  const Map({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      child: Icon(
        Icons.map,
        size: 150,
      ),
    );
  }
}
