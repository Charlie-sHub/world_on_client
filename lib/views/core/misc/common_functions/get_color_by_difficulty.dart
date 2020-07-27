import 'package:flutter/material.dart';

Color getColorByDifficulty(int difficulty) {
  if (difficulty < 4) {
    return Colors.blue;
  } else if (difficulty >= 4 && difficulty < 7) {
    return Colors.purple;
  } else {
    return Colors.red;
  }
}
