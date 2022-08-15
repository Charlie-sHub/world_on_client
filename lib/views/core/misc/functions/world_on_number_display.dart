import 'package:number_display/number_display.dart';

String createNumberDisplay(int number) {
  final display = createDisplay(
    length: 4,
    units: [
      "K",
      "M",
      "B",
    ],
  );
  return display(number);
}
