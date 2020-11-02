import 'package:flutter_test/flutter_test.dart';
import 'package:worldon/data/core/misc/common_methods_for_dev_repositories/get_valid_entities/get_valid_user.dart';
import 'package:worldon/data/core/models/user/user_dto.dart';

import '../../../test_descriptions.dart';

void main() {
  test(
    TestDescription.shouldEqualEntity,
    () async {
      // Arrange
      final user = getValidUser();
      // Act
      final userDto = UserDto.fromDomain(user);
      final result = userDto.toDomain();
      // Assert
      expect(result, user);
    },
  );
}
