import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// [Options] entity class.
///
/// Options are chosen by the User to customize his experience in the app.
class Options extends Equatable {
  final int id;
  final String languageCode;

  Options({
    @required this.id,
    @required this.languageCode,
  });

  @override
  List<Object> get props => [
        id,
        languageCode,
      ];
}
