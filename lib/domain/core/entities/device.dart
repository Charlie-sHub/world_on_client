import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

/// [Device] entity class.
///
/// Devices gives the administration a way to consult how the Users are getting to the application, to better focus out efforts in the future.
class Device extends Equatable {
  final int id;
  final String name;
  final String type;
  final String company;

  const Device({
    @required this.id,
    @required this.name,
    @required this.type,
    @required this.company,
  });

  @override
  List<Object> get props => [
        id,
        name,
        type,
        company,
      ];
}
