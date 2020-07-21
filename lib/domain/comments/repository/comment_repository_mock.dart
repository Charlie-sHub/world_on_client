import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/repository/comment_repository_interface.dart';

@LazySingleton(
  as: CommentRepositoryInterface,
  env: [Environment.test],
)
class MockCommentRepository extends Mock implements CommentRepositoryInterface {}
