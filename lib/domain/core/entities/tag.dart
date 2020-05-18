import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// [Tag] entity class.
///
/// Tags work as a way to classify the different Experiences in the application and for Users to set their interests.
class Tag extends Equatable {
  final int id;
  final String name;
  final User creator;
  final DateTime creationDate;
  final DateTime modificationDate;

  Tag({
    @required this.id,
    @required this.name,
    @required this.creator,
    @required this.creationDate,
    @required this.modificationDate,
  });

  @override
  List<Object> get props => [
        id,
        name,
        creator,
        creationDate,
        modificationDate,
      ];
}
