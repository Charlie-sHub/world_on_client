enum StorageFolder {
  users,
  experiences,
}

extension ParseToString on StorageFolder {
  String value() => toString().split('.').last;
}
