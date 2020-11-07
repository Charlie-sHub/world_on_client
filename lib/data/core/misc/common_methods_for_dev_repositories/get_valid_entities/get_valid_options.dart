import 'package:worldon/domain/core/entities/options/options.dart';
import 'package:worldon/domain/core/validation/objects/unique_id.dart';

Options getValidOptions() {
  return Options(
    id: UniqueId(),
    languageCode: "li",
  );
}
