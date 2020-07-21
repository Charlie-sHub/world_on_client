import 'package:injectable/injectable.dart';
import 'package:mockito/mockito.dart';
import 'package:worldon/domain/comments/use_case/delete_comment.dart';
import 'package:worldon/domain/comments/use_case/edit_comment.dart';
import 'package:worldon/domain/comments/use_case/get_experience_comments.dart';
import 'package:worldon/domain/comments/use_case/get_user_comments.dart';
import 'package:worldon/domain/comments/use_case/post_comment.dart';

@LazySingleton(as: DeleteComment, env: [Environment.test])
class MockDeleteComment extends Mock implements DeleteComment {}

@LazySingleton(as: EditComment, env: [Environment.test])
class MockEditComment extends Mock implements EditComment {}

@LazySingleton(as: GetExperienceComments, env: [Environment.test])
class MockGetExperienceComments extends Mock implements GetExperienceComments {}

@LazySingleton(as: GetUserComments, env: [Environment.test])
class MockGetUserComments extends Mock implements GetUserComments {}

@LazySingleton(as: PostComment, env: [Environment.test])
class MockPostComment extends Mock implements PostComment {}
