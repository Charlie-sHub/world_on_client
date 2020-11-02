import 'package:flutter/material.dart';

Color getColorByDifficulty(int difficulty) {
  switch (difficulty) {
    case 1:
      return const Color(0xFF0000FF);
      break;
    case 2:
      return const Color(0xFF1C00E3);
      break;
    case 3:
      return const Color(0xFF3900C6);
      break;
    case 4:
      return const Color(0xFF5500AA);
      break;
    case 5:
      return const Color(0xFF71008E);
      break;
    case 6:
      return const Color(0xFF8E0071);
      break;
    case 7:
      return const Color(0xFFAA0055);
      break;
    case 8:
      return const Color(0xFFC60039);
      break;
    case 9:
      return const Color(0xFFE3001C);
      break;
    case 10:
      return const Color(0xFFFF0000);
      break;
    default:
      return const Color(0xFF151724);
      break;
  }
}
