import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:worldon/domain/core/entities/user.dart';

/// [Comment] entity class
///
/// Comments are messages left by Users in a Experience.
class Comment extends Equatable {
  final int id;
  final User user;
  final String content;
  final DateTime creationDate;
  final DateTime modificationDate;

  Comment({
    @required this.id,
    @required this.user,
    @required this.content,
    @required this.creationDate,
    @required this.modificationDate,
  });

  @override
  List<Object> get props => [
        id,
        user,
        content,
        creationDate,
        modificationDate,
      ];
}
