import 'package:flutter/material.dart';

Color getColorByDifficulty(int difficulty) {
  switch (difficulty) {
    case 1:
      return const Color(0xFF0000FF);
    case 2:
      return const Color(0xFF1C00E3);
    case 3:
      return const Color(0xFF3900C6);
    case 4:
      return const Color(0xFF5500AA);
    case 5:
      return const Color(0xFF71008E);
    case 6:
      return const Color(0xFF8E0071);
    case 7:
      return const Color(0xFFAA0055);
    case 8:
      return const Color(0xFFC60039);
    case 9:
      return const Color(0xFFE3001C);
    case 10:
      return const Color(0xFFFF0000);
    default:
      return const Color(0xFF151724);
  }
}
