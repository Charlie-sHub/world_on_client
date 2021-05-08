import 'package:algolia/algolia.dart';

extension AlgoliaX on Algolia {
  static const tagIndex = "prod_tag";
  static const experienceIndex = "prod_experience";
  static const userIndex = "prod_user";

  AlgoliaQuery queryUserIndex() => instance.index(userIndex);

  AlgoliaQuery queryTagIndex() => instance.index(tagIndex);

  AlgoliaQuery queryExperienceIndex() => instance.index(experienceIndex);
}
