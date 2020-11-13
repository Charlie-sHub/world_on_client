// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class MoorAchievement extends DataClass implements Insertable<MoorAchievement> {
  final String id;
  final String name;
  final String description;
  final String imageURL;
  final String type;
  final int requisite;
  final int experiencePoints;
  final DateTime creationDate;
  final DateTime modificationDate;
  final String creatorId;

  MoorAchievement({@required this.id,
    @required this.name,
    @required this.description,
    @required this.imageURL,
    @required this.type,
    @required this.requisite,
    @required this.experiencePoints,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.creatorId});

  factory MoorAchievement.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MoorAchievement(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      imageURL: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}image_u_r_l']),
      type: stringType.mapFromDatabaseResponse(data['${effectivePrefix}type']),
      requisite:
      intType.mapFromDatabaseResponse(data['${effectivePrefix}requisite']),
      experiencePoints: intType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_points']),
      creationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
      modificationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}modification_date']),
      creatorId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}creator_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || imageURL != null) {
      map['image_u_r_l'] = Variable<String>(imageURL);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || requisite != null) {
      map['requisite'] = Variable<int>(requisite);
    }
    if (!nullToAbsent || experiencePoints != null) {
      map['experience_points'] = Variable<int>(experiencePoints);
    }
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    if (!nullToAbsent || modificationDate != null) {
      map['modification_date'] = Variable<DateTime>(modificationDate);
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<String>(creatorId);
    }
    return map;
  }

  MoorAchievementsCompanion toCompanion(bool nullToAbsent) {
    return MoorAchievementsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent ? const Value.absent() : Value(description),
      imageURL: imageURL == null && nullToAbsent ? const Value.absent() : Value(imageURL),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      requisite: requisite == null && nullToAbsent ? const Value.absent() : Value(requisite),
      experiencePoints: experiencePoints == null && nullToAbsent ? const Value.absent() : Value(experiencePoints),
      creationDate: creationDate == null && nullToAbsent ? const Value.absent() : Value(creationDate),
      modificationDate: modificationDate == null && nullToAbsent ? const Value.absent() : Value(modificationDate),
      creatorId: creatorId == null && nullToAbsent ? const Value.absent() : Value(creatorId),
    );
  }

  factory MoorAchievement.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorAchievement(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      imageURL: serializer.fromJson<String>(json['imageURL']),
      type: serializer.fromJson<String>(json['type']),
      requisite: serializer.fromJson<int>(json['requisite']),
      experiencePoints: serializer.fromJson<int>(json['experiencePoints']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
      modificationDate: serializer.fromJson<DateTime>(json['modificationDate']),
      creatorId: serializer.fromJson<String>(json['creatorId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'imageURL': serializer.toJson<String>(imageURL),
      'type': serializer.toJson<String>(type),
      'requisite': serializer.toJson<int>(requisite),
      'experiencePoints': serializer.toJson<int>(experiencePoints),
      'creationDate': serializer.toJson<DateTime>(creationDate),
      'modificationDate': serializer.toJson<DateTime>(modificationDate),
      'creatorId': serializer.toJson<String>(creatorId),
    };
  }

  MoorAchievement copyWith({String id,
    String name,
    String description,
    String imageURL,
    String type,
    int requisite,
    int experiencePoints,
    DateTime creationDate,
    DateTime modificationDate,
    String creatorId}) =>
    MoorAchievement(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
      type: type ?? this.type,
      requisite: requisite ?? this.requisite,
      experiencePoints: experiencePoints ?? this.experiencePoints,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      creatorId: creatorId ?? this.creatorId,
    );

  @override
  String toString() {
    return (StringBuffer('MoorAchievement(')
      ..write('id: $id, ')..write('name: $name, ')..write('description: $description, ')..write('imageURL: $imageURL, ')..write('type: $type, ')..write('requisite: $requisite, ')..write(
        'experiencePoints: $experiencePoints, ')..write('creationDate: $creationDate, ')..write('modificationDate: $modificationDate, ')..write('creatorId: $creatorId')..write(')'))
      .toString();
  }

  @override
  int get hashCode =>
    $mrjf($mrjc(
      id.hashCode,
      $mrjc(
        name.hashCode,
        $mrjc(
          description.hashCode,
          $mrjc(
            imageURL.hashCode,
            $mrjc(
              type.hashCode,
              $mrjc(
                requisite.hashCode,
                $mrjc(
                  experiencePoints.hashCode,
                  $mrjc(
                    creationDate.hashCode,
                    $mrjc(modificationDate.hashCode,
                      creatorId.hashCode))))))))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorAchievement &&
        other.id == this.id &&
        other.name == this.name &&
        other.description == this.description &&
        other.imageURL == this.imageURL &&
        other.type == this.type &&
        other.requisite == this.requisite &&
        other.experiencePoints == this.experiencePoints &&
        other.creationDate == this.creationDate &&
        other.modificationDate == this.modificationDate &&
        other.creatorId == this.creatorId);
}

class MoorAchievementsCompanion extends UpdateCompanion<MoorAchievement> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> description;
  final Value<String> imageURL;
  final Value<String> type;
  final Value<int> requisite;
  final Value<int> experiencePoints;
  final Value<DateTime> creationDate;
  final Value<DateTime> modificationDate;
  final Value<String> creatorId;
  const MoorAchievementsCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.imageURL = const Value.absent(),
    this.type = const Value.absent(),
    this.requisite = const Value.absent(),
    this.experiencePoints = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.modificationDate = const Value.absent(),
    this.creatorId = const Value.absent(),
  });
  MoorAchievementsCompanion.insert({
    @required String id,
    @required String name,
    @required String description,
    @required String imageURL,
    @required String type,
    @required int requisite,
    @required int experiencePoints,
    @required DateTime creationDate,
    @required DateTime modificationDate,
    @required String creatorId,
  })
    : id = Value(id),
      name = Value(name),
      description = Value(description),
      imageURL = Value(imageURL),
      type = Value(type),
      requisite = Value(requisite),
      experiencePoints = Value(experiencePoints),
      creationDate = Value(creationDate),
      modificationDate = Value(modificationDate),
      creatorId = Value(creatorId);
  static Insertable<MoorAchievement> custom({
    Expression<String> id,
    Expression<String> name,
    Expression<String> description,
    Expression<String> imageURL,
    Expression<String> type,
    Expression<int> requisite,
    Expression<int> experiencePoints,
    Expression<DateTime> creationDate,
    Expression<DateTime> modificationDate,
    Expression<String> creatorId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (imageURL != null) 'image_u_r_l': imageURL,
      if (type != null) 'type': type,
      if (requisite != null) 'requisite': requisite,
      if (experiencePoints != null) 'experience_points': experiencePoints,
      if (creationDate != null) 'creation_date': creationDate,
      if (modificationDate != null) 'modification_date': modificationDate,
      if (creatorId != null) 'creator_id': creatorId,
    });
  }

  MoorAchievementsCompanion copyWith({Value<String> id,
    Value<String> name,
    Value<String> description,
    Value<String> imageURL,
    Value<String> type,
    Value<int> requisite,
    Value<int> experiencePoints,
    Value<DateTime> creationDate,
    Value<DateTime> modificationDate,
    Value<String> creatorId}) {
    return MoorAchievementsCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
      type: type ?? this.type,
      requisite: requisite ?? this.requisite,
      experiencePoints: experiencePoints ?? this.experiencePoints,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      creatorId: creatorId ?? this.creatorId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (imageURL.present) {
      map['image_u_r_l'] = Variable<String>(imageURL.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (requisite.present) {
      map['requisite'] = Variable<int>(requisite.value);
    }
    if (experiencePoints.present) {
      map['experience_points'] = Variable<int>(experiencePoints.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    if (modificationDate.present) {
      map['modification_date'] = Variable<DateTime>(modificationDate.value);
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<String>(creatorId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorAchievementsCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('imageURL: $imageURL, ')
          ..write('type: $type, ')
          ..write('requisite: $requisite, ')
          ..write('experiencePoints: $experiencePoints, ')
          ..write('creationDate: $creationDate, ')
          ..write('modificationDate: $modificationDate, ')
          ..write('creatorId: $creatorId')
          ..write(')'))
        .toString();
  }
}

class $MoorAchievementsTable extends MoorAchievements
  with TableInfo<$MoorAchievementsTable, MoorAchievement> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorAchievementsTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
      minTextLength: 1, $customConstraints: 'UNIQUE');
  }
  
  final VerificationMeta _descriptionMeta =
  const VerificationMeta('description');
  GeneratedTextColumn _description;
  
  @override
  GeneratedTextColumn get description =>
    _description ??= _constructDescription();
  
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
      minTextLength: 1);
  }
  
  final VerificationMeta _imageURLMeta = const VerificationMeta('imageURL');
  GeneratedTextColumn _imageURL;
  @override
  GeneratedTextColumn get imageURL => _imageURL ??= _constructImageURL();
  GeneratedTextColumn _constructImageURL() {
    return GeneratedTextColumn(
      'image_u_r_l',
      $tableName,
      false,
    );
  }

  final VerificationMeta _typeMeta = const VerificationMeta('type');
  GeneratedTextColumn _type;
  @override
  GeneratedTextColumn get type => _type ??= _constructType();
  GeneratedTextColumn _constructType() {
    return GeneratedTextColumn(
      'type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _requisiteMeta = const VerificationMeta('requisite');
  GeneratedIntColumn _requisite;
  @override
  GeneratedIntColumn get requisite => _requisite ??= _constructRequisite();
  
  GeneratedIntColumn _constructRequisite() {
    return GeneratedIntColumn(
      'requisite',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _experiencePointsMeta =
  const VerificationMeta('experiencePoints');
  GeneratedIntColumn _experiencePoints;
  
  @override
  GeneratedIntColumn get experiencePoints =>
    _experiencePoints ??= _constructExperiencePoints();
  
  GeneratedIntColumn _constructExperiencePoints() {
    return GeneratedIntColumn(
      'experience_points',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _creationDateMeta =
  const VerificationMeta('creationDate');
  GeneratedDateTimeColumn _creationDate;
  
  @override
  GeneratedDateTimeColumn get creationDate =>
    _creationDate ??= _constructCreationDate();
  
  GeneratedDateTimeColumn _constructCreationDate() {
    return GeneratedDateTimeColumn(
      'creation_date',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _modificationDateMeta =
  const VerificationMeta('modificationDate');
  GeneratedDateTimeColumn _modificationDate;
  
  @override
  GeneratedDateTimeColumn get modificationDate =>
    _modificationDate ??= _constructModificationDate();
  
  GeneratedDateTimeColumn _constructModificationDate() {
    return GeneratedDateTimeColumn(
      'modification_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _creatorIdMeta = const VerificationMeta('creatorId');
  GeneratedTextColumn _creatorId;
  @override
  GeneratedTextColumn get creatorId => _creatorId ??= _constructCreatorId();
  GeneratedTextColumn _constructCreatorId() {
    return GeneratedTextColumn('creator_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns =>
    [
      id,
      name,
      description,
      imageURL,
      type,
      requisite,
      experiencePoints,
      creationDate,
      modificationDate,
      creatorId
    ];
  
  @override
  $MoorAchievementsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_achievements';
  @override
  final String actualTableName = 'moor_achievements';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorAchievement> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image_u_r_l')) {
      context.handle(_imageURLMeta,
        imageURL.isAcceptableOrUnknown(data['image_u_r_l'], _imageURLMeta));
    } else if (isInserting) {
      context.missing(_imageURLMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
        _typeMeta, type.isAcceptableOrUnknown(data['type'], _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('requisite')) {
      context.handle(_requisiteMeta,
        requisite.isAcceptableOrUnknown(data['requisite'], _requisiteMeta));
    } else if (isInserting) {
      context.missing(_requisiteMeta);
    }
    if (data.containsKey('experience_points')) {
      context.handle(
        _experiencePointsMeta,
        experiencePoints.isAcceptableOrUnknown(
          data['experience_points'], _experiencePointsMeta));
    } else if (isInserting) {
      context.missing(_experiencePointsMeta);
    }
    if (data.containsKey('creation_date')) {
      context.handle(
        _creationDateMeta,
        creationDate.isAcceptableOrUnknown(
          data['creation_date'], _creationDateMeta));
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    if (data.containsKey('modification_date')) {
      context.handle(
        _modificationDateMeta,
        modificationDate.isAcceptableOrUnknown(
          data['modification_date'], _modificationDateMeta));
    } else if (isInserting) {
      context.missing(_modificationDateMeta);
    }
    if (data.containsKey('creator_id')) {
      context.handle(_creatorIdMeta,
        creatorId.isAcceptableOrUnknown(data['creator_id'], _creatorIdMeta));
    } else if (isInserting) {
      context.missing(_creatorIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorAchievement map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorAchievement.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorAchievementsTable createAlias(String alias) {
    return $MoorAchievementsTable(_db, alias);
  }
}

class MoorComment extends DataClass implements Insertable<MoorComment> {
  final String id;
  final String content;
  final DateTime creationDate;
  final DateTime modificationDate;
  final String posterId;
  final String experienceId;
  
  MoorComment({@required this.id,
    @required this.content,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.posterId,
    @required this.experienceId});
  
  factory MoorComment.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MoorComment(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      content:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}content']),
      creationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
      modificationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}modification_date']),
      posterId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}poster_id']),
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || content != null) {
      map['content'] = Variable<String>(content);
    }
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    if (!nullToAbsent || modificationDate != null) {
      map['modification_date'] = Variable<DateTime>(modificationDate);
    }
    if (!nullToAbsent || posterId != null) {
      map['poster_id'] = Variable<String>(posterId);
    }
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    return map;
  }

  MoorCommentsCompanion toCompanion(bool nullToAbsent) {
    return MoorCommentsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      content: content == null && nullToAbsent
        ? const Value.absent()
        : Value(content),
      creationDate: creationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(creationDate),
      modificationDate: modificationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(modificationDate),
      posterId: posterId == null && nullToAbsent
        ? const Value.absent()
        : Value(posterId),
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
    );
  }
  
  factory MoorComment.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorComment(
      id: serializer.fromJson<String>(json['id']),
      content: serializer.fromJson<String>(json['content']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
      modificationDate: serializer.fromJson<DateTime>(json['modificationDate']),
      posterId: serializer.fromJson<String>(json['posterId']),
      experienceId: serializer.fromJson<String>(json['experienceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'content': serializer.toJson<String>(content),
      'creationDate': serializer.toJson<DateTime>(creationDate),
      'modificationDate': serializer.toJson<DateTime>(modificationDate),
      'posterId': serializer.toJson<String>(posterId),
      'experienceId': serializer.toJson<String>(experienceId),
    };
  }
  
  MoorComment copyWith({String id,
    String content,
    DateTime creationDate,
    DateTime modificationDate,
    String posterId,
    String experienceId}) =>
    MoorComment(
      id: id ?? this.id,
      content: content ?? this.content,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      posterId: posterId ?? this.posterId,
      experienceId: experienceId ?? this.experienceId,
    );
  
  @override
  String toString() {
    return (StringBuffer('MoorComment(')
      ..write('id: $id, ')..write('content: $content, ')..write('creationDate: $creationDate, ')..write('modificationDate: $modificationDate, ')..write('posterId: $posterId, ')..write(
        'experienceId: $experienceId')..write(')'))
      .toString();
  }
  
  @override
  int get hashCode =>
    $mrjf($mrjc(
      id.hashCode,
      $mrjc(
        content.hashCode,
        $mrjc(
          creationDate.hashCode,
          $mrjc(modificationDate.hashCode,
            $mrjc(posterId.hashCode, experienceId.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorComment &&
        other.id == this.id &&
        other.content == this.content &&
        other.creationDate == this.creationDate &&
        other.modificationDate == this.modificationDate &&
        other.posterId == this.posterId &&
        other.experienceId == this.experienceId);
}

class MoorCommentsCompanion extends UpdateCompanion<MoorComment> {
  final Value<String> id;
  final Value<String> content;
  final Value<DateTime> creationDate;
  final Value<DateTime> modificationDate;
  final Value<String> posterId;
  final Value<String> experienceId;
  const MoorCommentsCompanion({
    this.id = const Value.absent(),
    this.content = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.modificationDate = const Value.absent(),
    this.posterId = const Value.absent(),
    this.experienceId = const Value.absent(),
  });

  MoorCommentsCompanion.insert({
    @required String id,
    @required String content,
    @required DateTime creationDate,
    @required DateTime modificationDate,
    @required String posterId,
    @required String experienceId,
  })
    : id = Value(id),
      content = Value(content),
      creationDate = Value(creationDate),
      modificationDate = Value(modificationDate),
      posterId = Value(posterId),
      experienceId = Value(experienceId);
  static Insertable<MoorComment> custom({
    Expression<String> id,
    Expression<String> content,
    Expression<DateTime> creationDate,
    Expression<DateTime> modificationDate,
    Expression<String> posterId,
    Expression<String> experienceId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (content != null) 'content': content,
      if (creationDate != null) 'creation_date': creationDate,
      if (modificationDate != null) 'modification_date': modificationDate,
      if (posterId != null) 'poster_id': posterId,
      if (experienceId != null) 'experience_id': experienceId,
    });
  }

  MoorCommentsCompanion copyWith({Value<String> id,
    Value<String> content,
    Value<DateTime> creationDate,
    Value<DateTime> modificationDate,
    Value<String> posterId,
    Value<String> experienceId}) {
    return MoorCommentsCompanion(
      id: id ?? this.id,
      content: content ?? this.content,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      posterId: posterId ?? this.posterId,
      experienceId: experienceId ?? this.experienceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    if (modificationDate.present) {
      map['modification_date'] = Variable<DateTime>(modificationDate.value);
    }
    if (posterId.present) {
      map['poster_id'] = Variable<String>(posterId.value);
    }
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorCommentsCompanion(')
          ..write('id: $id, ')
          ..write('content: $content, ')
          ..write('creationDate: $creationDate, ')
          ..write('modificationDate: $modificationDate, ')
          ..write('posterId: $posterId, ')
          ..write('experienceId: $experienceId')
          ..write(')'))
        .toString();
  }
}

class $MoorCommentsTable extends MoorComments
  with TableInfo<$MoorCommentsTable, MoorComment> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorCommentsTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _contentMeta = const VerificationMeta('content');
  GeneratedTextColumn _content;
  
  @override
  GeneratedTextColumn get content => _content ??= _constructContent();
  
  GeneratedTextColumn _constructContent() {
    return GeneratedTextColumn('content', $tableName, false, minTextLength: 1);
  }
  
  final VerificationMeta _creationDateMeta =
  const VerificationMeta('creationDate');
  GeneratedDateTimeColumn _creationDate;
  
  @override
  GeneratedDateTimeColumn get creationDate =>
    _creationDate ??= _constructCreationDate();
  
  GeneratedDateTimeColumn _constructCreationDate() {
    return GeneratedDateTimeColumn(
      'creation_date',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _modificationDateMeta =
  const VerificationMeta('modificationDate');
  GeneratedDateTimeColumn _modificationDate;
  
  @override
  GeneratedDateTimeColumn get modificationDate =>
    _modificationDate ??= _constructModificationDate();
  
  GeneratedDateTimeColumn _constructModificationDate() {
    return GeneratedDateTimeColumn(
      'modification_date',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _posterIdMeta = const VerificationMeta('posterId');
  GeneratedTextColumn _posterId;
  
  @override
  GeneratedTextColumn get posterId => _posterId ??= _constructPosterId();
  
  GeneratedTextColumn _constructPosterId() {
    return GeneratedTextColumn('poster_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns =>
    [id, content, creationDate, modificationDate, posterId, experienceId];
  @override
  $MoorCommentsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_comments';
  @override
  final String actualTableName = 'moor_comments';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorComment> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
        content.isAcceptableOrUnknown(data['content'], _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('creation_date')) {
      context.handle(
        _creationDateMeta,
        creationDate.isAcceptableOrUnknown(
          data['creation_date'], _creationDateMeta));
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    if (data.containsKey('modification_date')) {
      context.handle(
        _modificationDateMeta,
        modificationDate.isAcceptableOrUnknown(
          data['modification_date'], _modificationDateMeta));
    } else if (isInserting) {
      context.missing(_modificationDateMeta);
    }
    if (data.containsKey('poster_id')) {
      context.handle(_posterIdMeta,
        posterId.isAcceptableOrUnknown(data['poster_id'], _posterIdMeta));
    } else if (isInserting) {
      context.missing(_posterIdMeta);
    }
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorComment map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorComment.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorCommentsTable createAlias(String alias) {
    return $MoorCommentsTable(_db, alias);
  }
}

class MoorExperience extends DataClass implements Insertable<MoorExperience> {
  final String id;
  final String title;
  final String description;
  final double latitude;
  final double longitude;
  final int difficulty;
  final DateTime creationDate;
  final DateTime modificationDate;
  final String creatorId;
  
  MoorExperience({@required this.id,
    @required this.title,
    @required this.description,
    @required this.latitude,
    @required this.longitude,
    @required this.difficulty,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.creatorId});
  
  factory MoorExperience.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    final intType = db.typeSystem.forDartType<int>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MoorExperience(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      latitude: doubleType
        .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: doubleType
        .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      difficulty:
      intType.mapFromDatabaseResponse(data['${effectivePrefix}difficulty']),
      creationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
      modificationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}modification_date']),
      creatorId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}creator_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || title != null) {
      map['title'] = Variable<String>(title);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    if (!nullToAbsent || difficulty != null) {
      map['difficulty'] = Variable<int>(difficulty);
    }
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    if (!nullToAbsent || modificationDate != null) {
      map['modification_date'] = Variable<DateTime>(modificationDate);
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<String>(creatorId);
    }
    return map;
  }

  MoorExperiencesCompanion toCompanion(bool nullToAbsent) {
    return MoorExperiencesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
      title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
        ? const Value.absent()
        : Value(description),
      latitude: latitude == null && nullToAbsent
        ? const Value.absent()
        : Value(latitude),
      longitude: longitude == null && nullToAbsent
        ? const Value.absent()
        : Value(longitude),
      difficulty: difficulty == null && nullToAbsent
        ? const Value.absent()
        : Value(difficulty),
      creationDate: creationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(creationDate),
      modificationDate: modificationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(modificationDate),
      creatorId: creatorId == null && nullToAbsent
        ? const Value.absent()
        : Value(creatorId),
    );
  }
  
  factory MoorExperience.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorExperience(
      id: serializer.fromJson<String>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      difficulty: serializer.fromJson<int>(json['difficulty']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
      modificationDate: serializer.fromJson<DateTime>(json['modificationDate']),
      creatorId: serializer.fromJson<String>(json['creatorId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'difficulty': serializer.toJson<int>(difficulty),
      'creationDate': serializer.toJson<DateTime>(creationDate),
      'modificationDate': serializer.toJson<DateTime>(modificationDate),
      'creatorId': serializer.toJson<String>(creatorId),
    };
  }
  
  MoorExperience copyWith({String id,
    String title,
    String description,
    double latitude,
    double longitude,
    int difficulty,
    DateTime creationDate,
    DateTime modificationDate,
    String creatorId}) =>
    MoorExperience(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      difficulty: difficulty ?? this.difficulty,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      creatorId: creatorId ?? this.creatorId,
    );
  
  @override
  String toString() {
    return (StringBuffer('MoorExperience(')
      ..write('id: $id, ')..write('title: $title, ')..write('description: $description, ')..write('latitude: $latitude, ')..write('longitude: $longitude, ')..write('difficulty: $difficulty, ')..write(
        'creationDate: $creationDate, ')..write('modificationDate: $modificationDate, ')..write('creatorId: $creatorId')..write(')'))
      .toString();
  }
  
  @override
  int get hashCode =>
    $mrjf($mrjc(
      id.hashCode,
      $mrjc(
        title.hashCode,
        $mrjc(
          description.hashCode,
          $mrjc(
            latitude.hashCode,
            $mrjc(
              longitude.hashCode,
              $mrjc(
                difficulty.hashCode,
                $mrjc(
                  creationDate.hashCode,
                  $mrjc(modificationDate.hashCode,
                    creatorId.hashCode)))))))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorExperience &&
        other.id == this.id &&
        other.title == this.title &&
        other.description == this.description &&
        other.latitude == this.latitude &&
        other.longitude == this.longitude &&
        other.difficulty == this.difficulty &&
        other.creationDate == this.creationDate &&
        other.modificationDate == this.modificationDate &&
        other.creatorId == this.creatorId);
}

class MoorExperiencesCompanion extends UpdateCompanion<MoorExperience> {
  final Value<String> id;
  final Value<String> title;
  final Value<String> description;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<int> difficulty;
  final Value<DateTime> creationDate;
  final Value<DateTime> modificationDate;
  final Value<String> creatorId;
  const MoorExperiencesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.difficulty = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.modificationDate = const Value.absent(),
    this.creatorId = const Value.absent(),
  });

  MoorExperiencesCompanion.insert({
    @required String id,
    @required String title,
    @required String description,
    @required double latitude,
    @required double longitude,
    @required int difficulty,
    @required DateTime creationDate,
    @required DateTime modificationDate,
    @required String creatorId,
  })
    : id = Value(id),
      title = Value(title),
      description = Value(description),
      latitude = Value(latitude),
      longitude = Value(longitude),
      difficulty = Value(difficulty),
      creationDate = Value(creationDate),
      modificationDate = Value(modificationDate),
      creatorId = Value(creatorId);
  static Insertable<MoorExperience> custom({
    Expression<String> id,
    Expression<String> title,
    Expression<String> description,
    Expression<double> latitude,
    Expression<double> longitude,
    Expression<int> difficulty,
    Expression<DateTime> creationDate,
    Expression<DateTime> modificationDate,
    Expression<String> creatorId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (difficulty != null) 'difficulty': difficulty,
      if (creationDate != null) 'creation_date': creationDate,
      if (modificationDate != null) 'modification_date': modificationDate,
      if (creatorId != null) 'creator_id': creatorId,
    });
  }

  MoorExperiencesCompanion copyWith({Value<String> id,
    Value<String> title,
    Value<String> description,
    Value<double> latitude,
    Value<double> longitude,
    Value<int> difficulty,
    Value<DateTime> creationDate,
    Value<DateTime> modificationDate,
    Value<String> creatorId}) {
    return MoorExperiencesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      difficulty: difficulty ?? this.difficulty,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      creatorId: creatorId ?? this.creatorId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (difficulty.present) {
      map['difficulty'] = Variable<int>(difficulty.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    if (modificationDate.present) {
      map['modification_date'] = Variable<DateTime>(modificationDate.value);
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<String>(creatorId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorExperiencesCompanion(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('difficulty: $difficulty, ')
          ..write('creationDate: $creationDate, ')
          ..write('modificationDate: $modificationDate, ')
          ..write('creatorId: $creatorId')
          ..write(')'))
        .toString();
  }
}

class $MoorExperiencesTable extends MoorExperiences
  with TableInfo<$MoorExperiencesTable, MoorExperience> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorExperiencesTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn('title', $tableName, false, minTextLength: 1);
  }
  
  final VerificationMeta _descriptionMeta =
  const VerificationMeta('description');
  GeneratedTextColumn _description;
  
  @override
  GeneratedTextColumn get description =>
    _description ??= _constructDescription();
  
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
      minTextLength: 1);
  }
  
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  GeneratedRealColumn _latitude;
  @override
  GeneratedRealColumn get latitude => _latitude ??= _constructLatitude();
  GeneratedRealColumn _constructLatitude() {
    return GeneratedRealColumn(
      'latitude',
      $tableName,
      false,
    );
  }

  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  GeneratedRealColumn _longitude;
  @override
  GeneratedRealColumn get longitude => _longitude ??= _constructLongitude();
  GeneratedRealColumn _constructLongitude() {
    return GeneratedRealColumn(
      'longitude',
      $tableName,
      false,
    );
  }

  final VerificationMeta _difficultyMeta = const VerificationMeta('difficulty');
  GeneratedIntColumn _difficulty;
  @override
  GeneratedIntColumn get difficulty => _difficulty ??= _constructDifficulty();
  
  GeneratedIntColumn _constructDifficulty() {
    return GeneratedIntColumn(
      'difficulty',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _creationDateMeta =
  const VerificationMeta('creationDate');
  GeneratedDateTimeColumn _creationDate;
  
  @override
  GeneratedDateTimeColumn get creationDate =>
    _creationDate ??= _constructCreationDate();
  
  GeneratedDateTimeColumn _constructCreationDate() {
    return GeneratedDateTimeColumn(
      'creation_date',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _modificationDateMeta =
  const VerificationMeta('modificationDate');
  GeneratedDateTimeColumn _modificationDate;
  
  @override
  GeneratedDateTimeColumn get modificationDate =>
    _modificationDate ??= _constructModificationDate();
  
  GeneratedDateTimeColumn _constructModificationDate() {
    return GeneratedDateTimeColumn(
      'modification_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _creatorIdMeta = const VerificationMeta('creatorId');
  GeneratedTextColumn _creatorId;
  @override
  GeneratedTextColumn get creatorId => _creatorId ??= _constructCreatorId();
  GeneratedTextColumn _constructCreatorId() {
    return GeneratedTextColumn('creator_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns =>
    [
      id,
      title,
      description,
      latitude,
      longitude,
      difficulty,
      creationDate,
      modificationDate,
      creatorId
    ];
  
  @override
  $MoorExperiencesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_experiences';
  @override
  final String actualTableName = 'moor_experiences';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorExperience> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
        _titleMeta, title.isAcceptableOrUnknown(data['title'], _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude'], _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude'], _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('difficulty')) {
      context.handle(
        _difficultyMeta,
        difficulty.isAcceptableOrUnknown(
          data['difficulty'], _difficultyMeta));
    } else if (isInserting) {
      context.missing(_difficultyMeta);
    }
    if (data.containsKey('creation_date')) {
      context.handle(
        _creationDateMeta,
        creationDate.isAcceptableOrUnknown(
          data['creation_date'], _creationDateMeta));
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    if (data.containsKey('modification_date')) {
      context.handle(
        _modificationDateMeta,
        modificationDate.isAcceptableOrUnknown(
          data['modification_date'], _modificationDateMeta));
    } else if (isInserting) {
      context.missing(_modificationDateMeta);
    }
    if (data.containsKey('creator_id')) {
      context.handle(_creatorIdMeta,
        creatorId.isAcceptableOrUnknown(data['creator_id'], _creatorIdMeta));
    } else if (isInserting) {
      context.missing(_creatorIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorExperience map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorExperience.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorExperiencesTable createAlias(String alias) {
    return $MoorExperiencesTable(_db, alias);
  }
}

class MoorLocation extends DataClass implements Insertable<MoorLocation> {
  final String id;
  final String city;
  final String country;
  final String postalCode;
  
  MoorLocation({@required this.id,
    @required this.city,
    @required this.country,
    @required this.postalCode});
  
  factory MoorLocation.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return MoorLocation(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      city: stringType.mapFromDatabaseResponse(data['${effectivePrefix}city']),
      country:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}country']),
      postalCode: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}postal_code']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || city != null) {
      map['city'] = Variable<String>(city);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || postalCode != null) {
      map['postal_code'] = Variable<String>(postalCode);
    }
    return map;
  }

  MoorLocationsCompanion toCompanion(bool nullToAbsent) {
    return MoorLocationsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      city: city == null && nullToAbsent ? const Value.absent() : Value(city),
      country: country == null && nullToAbsent
        ? const Value.absent()
        : Value(country),
      postalCode: postalCode == null && nullToAbsent
        ? const Value.absent()
        : Value(postalCode),
    );
  }
  
  factory MoorLocation.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorLocation(
      id: serializer.fromJson<String>(json['id']),
      city: serializer.fromJson<String>(json['city']),
      country: serializer.fromJson<String>(json['country']),
      postalCode: serializer.fromJson<String>(json['postalCode']),
    );
  }
  
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'city': serializer.toJson<String>(city),
      'country': serializer.toJson<String>(country),
      'postalCode': serializer.toJson<String>(postalCode),
    };
  }
  
  MoorLocation copyWith({String id, String city, String country, String postalCode}) =>
    MoorLocation(
      id: id ?? this.id,
      city: city ?? this.city,
      country: country ?? this.country,
      postalCode: postalCode ?? this.postalCode,
    );
  
  @override
  String toString() {
    return (StringBuffer('MoorLocation(')
      ..write('id: $id, ')..write('city: $city, ')..write('country: $country, ')..write('postalCode: $postalCode')..write(')'))
      .toString();
  }
  
  @override
  int get hashCode =>
    $mrjf($mrjc(id.hashCode,
      $mrjc(city.hashCode, $mrjc(country.hashCode, postalCode.hashCode))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorLocation &&
        other.id == this.id &&
        other.city == this.city &&
        other.country == this.country &&
        other.postalCode == this.postalCode);
}

class MoorLocationsCompanion extends UpdateCompanion<MoorLocation> {
  final Value<String> id;
  final Value<String> city;
  final Value<String> country;
  final Value<String> postalCode;
  const MoorLocationsCompanion({
    this.id = const Value.absent(),
    this.city = const Value.absent(),
    this.country = const Value.absent(),
    this.postalCode = const Value.absent(),
  });

  MoorLocationsCompanion.insert({
    @required String id,
    @required String city,
    @required String country,
    @required String postalCode,
  })
    : id = Value(id),
      city = Value(city),
      country = Value(country),
      postalCode = Value(postalCode);
  static Insertable<MoorLocation> custom({
    Expression<String> id,
    Expression<String> city,
    Expression<String> country,
    Expression<String> postalCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (city != null) 'city': city,
      if (country != null) 'country': country,
      if (postalCode != null) 'postal_code': postalCode,
    });
  }

  MoorLocationsCompanion copyWith({Value<String> id,
    Value<String> city,
    Value<String> country,
    Value<String> postalCode}) {
    return MoorLocationsCompanion(
      id: id ?? this.id,
      city: city ?? this.city,
      country: country ?? this.country,
      postalCode: postalCode ?? this.postalCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (city.present) {
      map['city'] = Variable<String>(city.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (postalCode.present) {
      map['postal_code'] = Variable<String>(postalCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorLocationsCompanion(')
      ..write('id: $id, ')..write('city: $city, ')..write('country: $country, ')..write('postalCode: $postalCode')..write(')'))
      .toString();
  }
}

class $MoorLocationsTable extends MoorLocations
  with TableInfo<$MoorLocationsTable, MoorLocation> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorLocationsTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _cityMeta = const VerificationMeta('city');
  GeneratedTextColumn _city;
  @override
  GeneratedTextColumn get city => _city ??= _constructCity();
  GeneratedTextColumn _constructCity() {
    return GeneratedTextColumn(
      'city',
      $tableName,
      false,
    );
  }

  final VerificationMeta _countryMeta = const VerificationMeta('country');
  GeneratedTextColumn _country;
  @override
  GeneratedTextColumn get country => _country ??= _constructCountry();
  GeneratedTextColumn _constructCountry() {
    return GeneratedTextColumn(
      'country',
      $tableName,
      false,
    );
  }

  final VerificationMeta _postalCodeMeta = const VerificationMeta('postalCode');
  GeneratedTextColumn _postalCode;
  @override
  GeneratedTextColumn get postalCode => _postalCode ??= _constructPostalCode();
  GeneratedTextColumn _constructPostalCode() {
    return GeneratedTextColumn(
      'postal_code',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, city, country, postalCode];
  @override
  $MoorLocationsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_locations';
  @override
  final String actualTableName = 'moor_locations';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorLocation> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('city')) {
      context.handle(
        _cityMeta, city.isAcceptableOrUnknown(data['city'], _cityMeta));
    } else if (isInserting) {
      context.missing(_cityMeta);
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
        country.isAcceptableOrUnknown(data['country'], _countryMeta));
    } else if (isInserting) {
      context.missing(_countryMeta);
    }
    if (data.containsKey('postal_code')) {
      context.handle(
        _postalCodeMeta,
        postalCode.isAcceptableOrUnknown(
          data['postal_code'], _postalCodeMeta));
    } else if (isInserting) {
      context.missing(_postalCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorLocation map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorLocation.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorLocationsTable createAlias(String alias) {
    return $MoorLocationsTable(_db, alias);
  }
}

class MoorNotification extends DataClass
  implements Insertable<MoorNotification> {
  final String id;
  final String description;
  final bool seen;
  final DateTime creationDate;
  final NotificationType notificationType;
  final String senderId;
  final String receiverId;
  
  MoorNotification({@required this.id,
    @required this.description,
    @required this.seen,
    @required this.creationDate,
    @required this.notificationType,
    @required this.senderId,
    @required this.receiverId});
  
  factory MoorNotification.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final boolType = db.typeSystem.forDartType<bool>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    return MoorNotification(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      description: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      seen: boolType.mapFromDatabaseResponse(data['${effectivePrefix}seen']),
      creationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
      notificationType: $MoorNotificationsTable.$converter0.mapToDart(
        intType.mapFromDatabaseResponse(
          data['${effectivePrefix}notification_type'])),
      senderId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}sender_id']),
      receiverId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}receiver_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || seen != null) {
      map['seen'] = Variable<bool>(seen);
    }
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    if (!nullToAbsent || notificationType != null) {
      final converter = $MoorNotificationsTable.$converter0;
      map['notification_type'] =
        Variable<int>(converter.mapToSql(notificationType));
    }
    if (!nullToAbsent || senderId != null) {
      map['sender_id'] = Variable<String>(senderId);
    }
    if (!nullToAbsent || receiverId != null) {
      map['receiver_id'] = Variable<String>(receiverId);
    }
    return map;
  }

  MoorNotificationsCompanion toCompanion(bool nullToAbsent) {
    return MoorNotificationsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      description: description == null && nullToAbsent
        ? const Value.absent()
        : Value(description),
      seen: seen == null && nullToAbsent ? const Value.absent() : Value(seen),
      creationDate: creationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(creationDate),
      notificationType: notificationType == null && nullToAbsent
        ? const Value.absent()
        : Value(notificationType),
      senderId: senderId == null && nullToAbsent
        ? const Value.absent()
        : Value(senderId),
      receiverId: receiverId == null && nullToAbsent
        ? const Value.absent()
        : Value(receiverId),
    );
  }
  
  factory MoorNotification.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorNotification(
      id: serializer.fromJson<String>(json['id']),
      description: serializer.fromJson<String>(json['description']),
      seen: serializer.fromJson<bool>(json['seen']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
      notificationType:
      serializer.fromJson<NotificationType>(json['notificationType']),
      senderId: serializer.fromJson<String>(json['senderId']),
      receiverId: serializer.fromJson<String>(json['receiverId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'description': serializer.toJson<String>(description),
      'seen': serializer.toJson<bool>(seen),
      'creationDate': serializer.toJson<DateTime>(creationDate),
      'notificationType': serializer.toJson<NotificationType>(notificationType),
      'senderId': serializer.toJson<String>(senderId),
      'receiverId': serializer.toJson<String>(receiverId),
    };
  }
  
  MoorNotification copyWith({String id,
    String description,
    bool seen,
    DateTime creationDate,
    NotificationType notificationType,
    String senderId,
    String receiverId}) =>
    MoorNotification(
      id: id ?? this.id,
      description: description ?? this.description,
      seen: seen ?? this.seen,
      creationDate: creationDate ?? this.creationDate,
      notificationType: notificationType ?? this.notificationType,
      senderId: senderId ?? this.senderId,
      receiverId: receiverId ?? this.receiverId,
    );
  
  @override
  String toString() {
    return (StringBuffer('MoorNotification(')
      ..write('id: $id, ')..write('description: $description, ')..write('seen: $seen, ')..write('creationDate: $creationDate, ')..write('notificationType: $notificationType, ')..write(
        'senderId: $senderId, ')..write('receiverId: $receiverId')..write(')'))
      .toString();
  }
  
  @override
  int get hashCode =>
    $mrjf($mrjc(
      id.hashCode,
      $mrjc(
        description.hashCode,
        $mrjc(
          seen.hashCode,
          $mrjc(
            creationDate.hashCode,
            $mrjc(notificationType.hashCode,
              $mrjc(senderId.hashCode, receiverId.hashCode)))))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorNotification &&
        other.id == this.id &&
        other.description == this.description &&
        other.seen == this.seen &&
        other.creationDate == this.creationDate &&
        other.notificationType == this.notificationType &&
        other.senderId == this.senderId &&
        other.receiverId == this.receiverId);
}

class MoorNotificationsCompanion extends UpdateCompanion<MoorNotification> {
  final Value<String> id;
  final Value<String> description;
  final Value<bool> seen;
  final Value<DateTime> creationDate;
  final Value<NotificationType> notificationType;
  final Value<String> senderId;
  final Value<String> receiverId;
  const MoorNotificationsCompanion({
    this.id = const Value.absent(),
    this.description = const Value.absent(),
    this.seen = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.notificationType = const Value.absent(),
    this.senderId = const Value.absent(),
    this.receiverId = const Value.absent(),
  });

  MoorNotificationsCompanion.insert({
    @required String id,
    @required String description,
    @required bool seen,
    @required DateTime creationDate,
    @required NotificationType notificationType,
    @required String senderId,
    @required String receiverId,
  })
    : id = Value(id),
      description = Value(description),
      seen = Value(seen),
      creationDate = Value(creationDate),
      notificationType = Value(notificationType),
      senderId = Value(senderId),
      receiverId = Value(receiverId);
  static Insertable<MoorNotification> custom({
    Expression<String> id,
    Expression<String> description,
    Expression<bool> seen,
    Expression<DateTime> creationDate,
    Expression<int> notificationType,
    Expression<String> senderId,
    Expression<String> receiverId,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (description != null) 'description': description,
      if (seen != null) 'seen': seen,
      if (creationDate != null) 'creation_date': creationDate,
      if (notificationType != null) 'notification_type': notificationType,
      if (senderId != null) 'sender_id': senderId,
      if (receiverId != null) 'receiver_id': receiverId,
    });
  }

  MoorNotificationsCompanion copyWith({Value<String> id,
    Value<String> description,
    Value<bool> seen,
    Value<DateTime> creationDate,
    Value<NotificationType> notificationType,
    Value<String> senderId,
    Value<String> receiverId}) {
    return MoorNotificationsCompanion(
      id: id ?? this.id,
      description: description ?? this.description,
      seen: seen ?? this.seen,
      creationDate: creationDate ?? this.creationDate,
      notificationType: notificationType ?? this.notificationType,
      senderId: senderId ?? this.senderId,
      receiverId: receiverId ?? this.receiverId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (seen.present) {
      map['seen'] = Variable<bool>(seen.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    if (notificationType.present) {
      final converter = $MoorNotificationsTable.$converter0;
      map['notification_type'] =
        Variable<int>(converter.mapToSql(notificationType.value));
    }
    if (senderId.present) {
      map['sender_id'] = Variable<String>(senderId.value);
    }
    if (receiverId.present) {
      map['receiver_id'] = Variable<String>(receiverId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorNotificationsCompanion(')
      ..write('id: $id, ')..write('description: $description, ')..write('seen: $seen, ')..write('creationDate: $creationDate, ')..write('notificationType: $notificationType, ')..write(
        'senderId: $senderId, ')..write('receiverId: $receiverId')..write(')'))
        .toString();
  }
}

class $MoorNotificationsTable extends MoorNotifications
  with TableInfo<$MoorNotificationsTable, MoorNotification> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorNotificationsTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _descriptionMeta =
  const VerificationMeta('description');
  GeneratedTextColumn _description;
  
  @override
  GeneratedTextColumn get description =>
    _description ??= _constructDescription();
  
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
      minTextLength: 1);
  }
  
  final VerificationMeta _seenMeta = const VerificationMeta('seen');
  GeneratedBoolColumn _seen;
  @override
  GeneratedBoolColumn get seen => _seen ??= _constructSeen();
  
  GeneratedBoolColumn _constructSeen() {
    return GeneratedBoolColumn(
      'seen',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _creationDateMeta =
  const VerificationMeta('creationDate');
  GeneratedDateTimeColumn _creationDate;
  
  @override
  GeneratedDateTimeColumn get creationDate =>
    _creationDate ??= _constructCreationDate();
  
  GeneratedDateTimeColumn _constructCreationDate() {
    return GeneratedDateTimeColumn(
      'creation_date',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _notificationTypeMeta =
  const VerificationMeta('notificationType');
  GeneratedIntColumn _notificationType;
  
  @override
  GeneratedIntColumn get notificationType =>
    _notificationType ??= _constructNotificationType();
  
  GeneratedIntColumn _constructNotificationType() {
    return GeneratedIntColumn(
      'notification_type',
      $tableName,
      false,
    );
  }

  final VerificationMeta _senderIdMeta = const VerificationMeta('senderId');
  GeneratedTextColumn _senderId;
  @override
  GeneratedTextColumn get senderId => _senderId ??= _constructSenderId();
  GeneratedTextColumn _constructSenderId() {
    return GeneratedTextColumn('sender_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }

  final VerificationMeta _receiverIdMeta = const VerificationMeta('receiverId');
  GeneratedTextColumn _receiverId;
  @override
  GeneratedTextColumn get receiverId => _receiverId ??= _constructReceiverId();
  GeneratedTextColumn _constructReceiverId() {
    return GeneratedTextColumn('receiver_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns =>
    [
      id,
      description,
      seen,
      creationDate,
      notificationType,
      senderId,
      receiverId
    ];
  
  @override
  $MoorNotificationsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_notifications';
  @override
  final String actualTableName = 'moor_notifications';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorNotification> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('seen')) {
      context.handle(
        _seenMeta, seen.isAcceptableOrUnknown(data['seen'], _seenMeta));
    } else if (isInserting) {
      context.missing(_seenMeta);
    }
    if (data.containsKey('creation_date')) {
      context.handle(
        _creationDateMeta,
        creationDate.isAcceptableOrUnknown(
          data['creation_date'], _creationDateMeta));
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    context.handle(_notificationTypeMeta, const VerificationResult.success());
    if (data.containsKey('sender_id')) {
      context.handle(_senderIdMeta,
        senderId.isAcceptableOrUnknown(data['sender_id'], _senderIdMeta));
    } else if (isInserting) {
      context.missing(_senderIdMeta);
    }
    if (data.containsKey('receiver_id')) {
      context.handle(
        _receiverIdMeta,
        receiverId.isAcceptableOrUnknown(
          data['receiver_id'], _receiverIdMeta));
    } else if (isInserting) {
      context.missing(_receiverIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorNotification map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorNotification.fromData(data, _db, prefix: effectivePrefix);
  }
  
  @override
  $MoorNotificationsTable createAlias(String alias) {
    return $MoorNotificationsTable(_db, alias);
  }
  
  static TypeConverter<NotificationType, int> $converter0 =
  const EnumIndexConverter<NotificationType>(NotificationType.values);
}

class MoorObjective extends DataClass implements Insertable<MoorObjective> {
  final String id;
  final String experienceId;
  final String description;
  final double latitude;
  final double longitude;
  final String imageURL;
  
  MoorObjective({@required this.id,
    @required this.experienceId,
    @required this.description,
    @required this.latitude,
    @required this.longitude,
    @required this.imageURL});
  
  factory MoorObjective.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final doubleType = db.typeSystem.forDartType<double>();
    return MoorObjective(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
      description: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      latitude: doubleType
        .mapFromDatabaseResponse(data['${effectivePrefix}latitude']),
      longitude: doubleType
        .mapFromDatabaseResponse(data['${effectivePrefix}longitude']),
      imageURL: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}image_u_r_l']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || latitude != null) {
      map['latitude'] = Variable<double>(latitude);
    }
    if (!nullToAbsent || longitude != null) {
      map['longitude'] = Variable<double>(longitude);
    }
    if (!nullToAbsent || imageURL != null) {
      map['image_u_r_l'] = Variable<String>(imageURL);
    }
    return map;
  }

  MoorObjectivesCompanion toCompanion(bool nullToAbsent) {
    return MoorObjectivesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
      description: description == null && nullToAbsent
        ? const Value.absent()
        : Value(description),
      latitude: latitude == null && nullToAbsent
        ? const Value.absent()
        : Value(latitude),
      longitude: longitude == null && nullToAbsent
        ? const Value.absent()
        : Value(longitude),
      imageURL: imageURL == null && nullToAbsent
        ? const Value.absent()
        : Value(imageURL),
    );
  }
  
  factory MoorObjective.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorObjective(
      id: serializer.fromJson<String>(json['id']),
      experienceId: serializer.fromJson<String>(json['experienceId']),
      description: serializer.fromJson<String>(json['description']),
      latitude: serializer.fromJson<double>(json['latitude']),
      longitude: serializer.fromJson<double>(json['longitude']),
      imageURL: serializer.fromJson<String>(json['imageURL']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'experienceId': serializer.toJson<String>(experienceId),
      'description': serializer.toJson<String>(description),
      'latitude': serializer.toJson<double>(latitude),
      'longitude': serializer.toJson<double>(longitude),
      'imageURL': serializer.toJson<String>(imageURL),
    };
  }
  
  MoorObjective copyWith({String id,
    String experienceId,
    String description,
    double latitude,
    double longitude,
    String imageURL}) =>
    MoorObjective(
      id: id ?? this.id,
      experienceId: experienceId ?? this.experienceId,
      description: description ?? this.description,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      imageURL: imageURL ?? this.imageURL,
    );
  
  @override
  String toString() {
    return (StringBuffer('MoorObjective(')
      ..write('id: $id, ')..write('experienceId: $experienceId, ')..write('description: $description, ')..write('latitude: $latitude, ')..write('longitude: $longitude, ')..write(
        'imageURL: $imageURL')..write(')'))
      .toString();
  }
  
  @override
  int get hashCode =>
    $mrjf($mrjc(
      id.hashCode,
      $mrjc(
        experienceId.hashCode,
        $mrjc(
          description.hashCode,
          $mrjc(latitude.hashCode,
            $mrjc(longitude.hashCode, imageURL.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorObjective &&
        other.id == this.id &&
        other.experienceId == this.experienceId &&
        other.description == this.description &&
        other.latitude == this.latitude &&
        other.longitude == this.longitude &&
        other.imageURL == this.imageURL);
}

class MoorObjectivesCompanion extends UpdateCompanion<MoorObjective> {
  final Value<String> id;
  final Value<String> experienceId;
  final Value<String> description;
  final Value<double> latitude;
  final Value<double> longitude;
  final Value<String> imageURL;
  const MoorObjectivesCompanion({
    this.id = const Value.absent(),
    this.experienceId = const Value.absent(),
    this.description = const Value.absent(),
    this.latitude = const Value.absent(),
    this.longitude = const Value.absent(),
    this.imageURL = const Value.absent(),
  });

  MoorObjectivesCompanion.insert({
    @required String id,
    @required String experienceId,
    @required String description,
    @required double latitude,
    @required double longitude,
    @required String imageURL,
  })
    : id = Value(id),
      experienceId = Value(experienceId),
      description = Value(description),
      latitude = Value(latitude),
      longitude = Value(longitude),
      imageURL = Value(imageURL);
  static Insertable<MoorObjective> custom({
    Expression<String> id,
    Expression<String> experienceId,
    Expression<String> description,
    Expression<double> latitude,
    Expression<double> longitude,
    Expression<String> imageURL,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (experienceId != null) 'experience_id': experienceId,
      if (description != null) 'description': description,
      if (latitude != null) 'latitude': latitude,
      if (longitude != null) 'longitude': longitude,
      if (imageURL != null) 'image_u_r_l': imageURL,
    });
  }

  MoorObjectivesCompanion copyWith({Value<String> id,
    Value<String> experienceId,
    Value<String> description,
    Value<double> latitude,
    Value<double> longitude,
    Value<String> imageURL}) {
    return MoorObjectivesCompanion(
      id: id ?? this.id,
      experienceId: experienceId ?? this.experienceId,
      description: description ?? this.description,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      imageURL: imageURL ?? this.imageURL,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (latitude.present) {
      map['latitude'] = Variable<double>(latitude.value);
    }
    if (longitude.present) {
      map['longitude'] = Variable<double>(longitude.value);
    }
    if (imageURL.present) {
      map['image_u_r_l'] = Variable<String>(imageURL.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorObjectivesCompanion(')
          ..write('id: $id, ')
          ..write('experienceId: $experienceId, ')
          ..write('description: $description, ')
          ..write('latitude: $latitude, ')
          ..write('longitude: $longitude, ')
          ..write('imageURL: $imageURL')
          ..write(')'))
        .toString();
  }
}

class $MoorObjectivesTable extends MoorObjectives
  with TableInfo<$MoorObjectivesTable, MoorObjective> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorObjectivesTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  final VerificationMeta _descriptionMeta =
  const VerificationMeta('description');
  GeneratedTextColumn _description;
  
  @override
  GeneratedTextColumn get description =>
    _description ??= _constructDescription();
  
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
      minTextLength: 1);
  }
  
  final VerificationMeta _latitudeMeta = const VerificationMeta('latitude');
  GeneratedRealColumn _latitude;
  @override
  GeneratedRealColumn get latitude => _latitude ??= _constructLatitude();
  GeneratedRealColumn _constructLatitude() {
    return GeneratedRealColumn(
      'latitude',
      $tableName,
      false,
    );
  }

  final VerificationMeta _longitudeMeta = const VerificationMeta('longitude');
  GeneratedRealColumn _longitude;
  @override
  GeneratedRealColumn get longitude => _longitude ??= _constructLongitude();
  GeneratedRealColumn _constructLongitude() {
    return GeneratedRealColumn(
      'longitude',
      $tableName,
      false,
    );
  }

  final VerificationMeta _imageURLMeta = const VerificationMeta('imageURL');
  GeneratedTextColumn _imageURL;
  @override
  GeneratedTextColumn get imageURL => _imageURL ??= _constructImageURL();
  GeneratedTextColumn _constructImageURL() {
    return GeneratedTextColumn(
      'image_u_r_l',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
    [id, experienceId, description, latitude, longitude, imageURL];
  @override
  $MoorObjectivesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_objectives';
  @override
  final String actualTableName = 'moor_objectives';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorObjective> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('latitude')) {
      context.handle(_latitudeMeta,
        latitude.isAcceptableOrUnknown(data['latitude'], _latitudeMeta));
    } else if (isInserting) {
      context.missing(_latitudeMeta);
    }
    if (data.containsKey('longitude')) {
      context.handle(_longitudeMeta,
        longitude.isAcceptableOrUnknown(data['longitude'], _longitudeMeta));
    } else if (isInserting) {
      context.missing(_longitudeMeta);
    }
    if (data.containsKey('image_u_r_l')) {
      context.handle(_imageURLMeta,
        imageURL.isAcceptableOrUnknown(data['image_u_r_l'], _imageURLMeta));
    } else if (isInserting) {
      context.missing(_imageURLMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorObjective map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorObjective.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorObjectivesTable createAlias(String alias) {
    return $MoorObjectivesTable(_db, alias);
  }
}

class MoorOption extends DataClass implements Insertable<MoorOption> {
  final String id;
  final String userId;
  final String languageCode;
  
  MoorOption({@required this.id, @required this.userId, @required this.languageCode});
  
  factory MoorOption.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return MoorOption(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      userId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      languageCode: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}language_code']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || languageCode != null) {
      map['language_code'] = Variable<String>(languageCode);
    }
    return map;
  }

  MoorOptionsCompanion toCompanion(bool nullToAbsent) {
    return MoorOptionsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      userId:
      userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      languageCode: languageCode == null && nullToAbsent
        ? const Value.absent()
        : Value(languageCode),
    );
  }
  
  factory MoorOption.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorOption(
      id: serializer.fromJson<String>(json['id']),
      userId: serializer.fromJson<String>(json['userId']),
      languageCode: serializer.fromJson<String>(json['languageCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'userId': serializer.toJson<String>(userId),
      'languageCode': serializer.toJson<String>(languageCode),
    };
  }

  MoorOption copyWith({String id, String userId, String languageCode}) =>
    MoorOption(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      languageCode: languageCode ?? this.languageCode,
    );
  @override
  String toString() {
    return (StringBuffer('MoorOption(')
      ..write('id: $id, ')..write('userId: $userId, ')..write('languageCode: $languageCode')..write(')'))
      .toString();
  }

  @override
  int get hashCode =>
    $mrjf($mrjc(id.hashCode, $mrjc(userId.hashCode, languageCode.hashCode)));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorOption &&
        other.id == this.id &&
        other.userId == this.userId &&
        other.languageCode == this.languageCode);
}

class MoorOptionsCompanion extends UpdateCompanion<MoorOption> {
  final Value<String> id;
  final Value<String> userId;
  final Value<String> languageCode;
  const MoorOptionsCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.languageCode = const Value.absent(),
  });

  MoorOptionsCompanion.insert({
    @required String id,
    @required String userId,
    @required String languageCode,
  })
    : id = Value(id),
      userId = Value(userId),
      languageCode = Value(languageCode);
  static Insertable<MoorOption> custom({
    Expression<String> id,
    Expression<String> userId,
    Expression<String> languageCode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (languageCode != null) 'language_code': languageCode,
    });
  }

  MoorOptionsCompanion copyWith({Value<String> id, Value<String> userId, Value<String> languageCode}) {
    return MoorOptionsCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      languageCode: languageCode ?? this.languageCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (languageCode.present) {
      map['language_code'] = Variable<String>(languageCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorOptionsCompanion(')
      ..write('id: $id, ')..write('userId: $userId, ')..write('languageCode: $languageCode')..write(')'))
      .toString();
  }
}

class $MoorOptionsTable extends MoorOptions
  with TableInfo<$MoorOptionsTable, MoorOption> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorOptionsTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn('user_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  final VerificationMeta _languageCodeMeta =
  const VerificationMeta('languageCode');
  GeneratedTextColumn _languageCode;
  
  @override
  GeneratedTextColumn get languageCode =>
    _languageCode ??= _constructLanguageCode();
  
  GeneratedTextColumn _constructLanguageCode() {
    return GeneratedTextColumn(
      'language_code',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [id, userId, languageCode];
  @override
  $MoorOptionsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_options';
  @override
  final String actualTableName = 'moor_options';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorOption> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('language_code')) {
      context.handle(
        _languageCodeMeta,
        languageCode.isAcceptableOrUnknown(
          data['language_code'], _languageCodeMeta));
    } else if (isInserting) {
      context.missing(_languageCodeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorOption map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorOption.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorOptionsTable createAlias(String alias) {
    return $MoorOptionsTable(_db, alias);
  }
}

class MoorReward extends DataClass implements Insertable<MoorReward> {
  final String id;
  final String experienceId;
  final String name;
  final String description;
  final String imageURL;
  
  MoorReward({@required this.id,
    @required this.experienceId,
    @required this.name,
    @required this.description,
    @required this.imageURL});
  
  factory MoorReward.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return MoorReward(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      description: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      imageURL: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}image_u_r_l']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || imageURL != null) {
      map['image_u_r_l'] = Variable<String>(imageURL);
    }
    return map;
  }

  MoorRewardsCompanion toCompanion(bool nullToAbsent) {
    return MoorRewardsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      description: description == null && nullToAbsent
        ? const Value.absent()
        : Value(description),
      imageURL: imageURL == null && nullToAbsent
        ? const Value.absent()
        : Value(imageURL),
    );
  }
  
  factory MoorReward.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorReward(
      id: serializer.fromJson<String>(json['id']),
      experienceId: serializer.fromJson<String>(json['experienceId']),
      name: serializer.fromJson<String>(json['name']),
      description: serializer.fromJson<String>(json['description']),
      imageURL: serializer.fromJson<String>(json['imageURL']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'experienceId': serializer.toJson<String>(experienceId),
      'name': serializer.toJson<String>(name),
      'description': serializer.toJson<String>(description),
      'imageURL': serializer.toJson<String>(imageURL),
    };
  }
  
  MoorReward copyWith({String id,
    String experienceId,
    String name,
    String description,
    String imageURL}) =>
    MoorReward(
      id: id ?? this.id,
      experienceId: experienceId ?? this.experienceId,
      name: name ?? this.name,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
    );
  
  @override
  String toString() {
    return (StringBuffer('MoorReward(')
      ..write('id: $id, ')..write('experienceId: $experienceId, ')..write('name: $name, ')..write('description: $description, ')..write('imageURL: $imageURL')..write(')'))
      .toString();
  }
  
  @override
  int get hashCode =>
    $mrjf($mrjc(
      id.hashCode,
      $mrjc(
        experienceId.hashCode,
        $mrjc(
          name.hashCode, $mrjc(description.hashCode, imageURL.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorReward &&
        other.id == this.id &&
        other.experienceId == this.experienceId &&
        other.name == this.name &&
        other.description == this.description &&
        other.imageURL == this.imageURL);
}

class MoorRewardsCompanion extends UpdateCompanion<MoorReward> {
  final Value<String> id;
  final Value<String> experienceId;
  final Value<String> name;
  final Value<String> description;
  final Value<String> imageURL;
  const MoorRewardsCompanion({
    this.id = const Value.absent(),
    this.experienceId = const Value.absent(),
    this.name = const Value.absent(),
    this.description = const Value.absent(),
    this.imageURL = const Value.absent(),
  });

  MoorRewardsCompanion.insert({
    @required String id,
    @required String experienceId,
    @required String name,
    @required String description,
    @required String imageURL,
  })
    : id = Value(id),
      experienceId = Value(experienceId),
      name = Value(name),
      description = Value(description),
      imageURL = Value(imageURL);
  static Insertable<MoorReward> custom({
    Expression<String> id,
    Expression<String> experienceId,
    Expression<String> name,
    Expression<String> description,
    Expression<String> imageURL,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (experienceId != null) 'experience_id': experienceId,
      if (name != null) 'name': name,
      if (description != null) 'description': description,
      if (imageURL != null) 'image_u_r_l': imageURL,
    });
  }

  MoorRewardsCompanion copyWith({Value<String> id,
    Value<String> experienceId,
    Value<String> name,
    Value<String> description,
    Value<String> imageURL}) {
    return MoorRewardsCompanion(
      id: id ?? this.id,
      experienceId: experienceId ?? this.experienceId,
      name: name ?? this.name,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (imageURL.present) {
      map['image_u_r_l'] = Variable<String>(imageURL.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorRewardsCompanion(')
          ..write('id: $id, ')
          ..write('experienceId: $experienceId, ')
          ..write('name: $name, ')
          ..write('description: $description, ')
          ..write('imageURL: $imageURL')
          ..write(')'))
        .toString();
  }
}

class $MoorRewardsTable extends MoorRewards
  with TableInfo<$MoorRewardsTable, MoorReward> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorRewardsTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false, minTextLength: 1);
  }
  
  final VerificationMeta _descriptionMeta =
  const VerificationMeta('description');
  GeneratedTextColumn _description;
  
  @override
  GeneratedTextColumn get description =>
    _description ??= _constructDescription();
  
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
      minTextLength: 1);
  }
  
  final VerificationMeta _imageURLMeta = const VerificationMeta('imageURL');
  GeneratedTextColumn _imageURL;
  @override
  GeneratedTextColumn get imageURL => _imageURL ??= _constructImageURL();
  GeneratedTextColumn _constructImageURL() {
    return GeneratedTextColumn(
      'image_u_r_l',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
    [id, experienceId, name, description, imageURL];
  @override
  $MoorRewardsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_rewards';
  @override
  final String actualTableName = 'moor_rewards';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorReward> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image_u_r_l')) {
      context.handle(_imageURLMeta,
        imageURL.isAcceptableOrUnknown(data['image_u_r_l'], _imageURLMeta));
    } else if (isInserting) {
      context.missing(_imageURLMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorReward map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorReward.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorRewardsTable createAlias(String alias) {
    return $MoorRewardsTable(_db, alias);
  }
}

class MoorTag extends DataClass implements Insertable<MoorTag> {
  final String id;
  final String creatorId;
  final String name;
  final DateTime creationDate;
  final DateTime modificationDate;
  
  MoorTag({@required this.id,
    @required this.creatorId,
    @required this.name,
    @required this.creationDate,
    @required this.modificationDate});
  
  factory MoorTag.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    return MoorTag(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      creatorId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}creator_id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      creationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
      modificationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}modification_date']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || creatorId != null) {
      map['creator_id'] = Variable<String>(creatorId);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    if (!nullToAbsent || modificationDate != null) {
      map['modification_date'] = Variable<DateTime>(modificationDate);
    }
    return map;
  }

  MoorTagsCompanion toCompanion(bool nullToAbsent) {
    return MoorTagsCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      creatorId: creatorId == null && nullToAbsent
        ? const Value.absent()
        : Value(creatorId),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      creationDate: creationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(creationDate),
      modificationDate: modificationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(modificationDate),
    );
  }
  
  factory MoorTag.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorTag(
      id: serializer.fromJson<String>(json['id']),
      creatorId: serializer.fromJson<String>(json['creatorId']),
      name: serializer.fromJson<String>(json['name']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
      modificationDate: serializer.fromJson<DateTime>(json['modificationDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'creatorId': serializer.toJson<String>(creatorId),
      'name': serializer.toJson<String>(name),
      'creationDate': serializer.toJson<DateTime>(creationDate),
      'modificationDate': serializer.toJson<DateTime>(modificationDate),
    };
  }
  
  MoorTag copyWith({String id,
    String creatorId,
    String name,
    DateTime creationDate,
    DateTime modificationDate}) =>
    MoorTag(
      id: id ?? this.id,
      creatorId: creatorId ?? this.creatorId,
      name: name ?? this.name,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
    );
  
  @override
  String toString() {
    return (StringBuffer('MoorTag(')
      ..write('id: $id, ')..write('creatorId: $creatorId, ')..write('name: $name, ')..write('creationDate: $creationDate, ')..write('modificationDate: $modificationDate')..write(')'))
      .toString();
  }
  
  @override
  int get hashCode =>
    $mrjf($mrjc(
      id.hashCode,
      $mrjc(
        creatorId.hashCode,
        $mrjc(name.hashCode,
          $mrjc(creationDate.hashCode, modificationDate.hashCode)))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorTag &&
        other.id == this.id &&
        other.creatorId == this.creatorId &&
        other.name == this.name &&
        other.creationDate == this.creationDate &&
        other.modificationDate == this.modificationDate);
}

class MoorTagsCompanion extends UpdateCompanion<MoorTag> {
  final Value<String> id;
  final Value<String> creatorId;
  final Value<String> name;
  final Value<DateTime> creationDate;
  final Value<DateTime> modificationDate;
  const MoorTagsCompanion({
    this.id = const Value.absent(),
    this.creatorId = const Value.absent(),
    this.name = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.modificationDate = const Value.absent(),
  });

  MoorTagsCompanion.insert({
    @required String id,
    @required String creatorId,
    @required String name,
    @required DateTime creationDate,
    @required DateTime modificationDate,
  })
    : id = Value(id),
      creatorId = Value(creatorId),
      name = Value(name),
      creationDate = Value(creationDate),
      modificationDate = Value(modificationDate);
  static Insertable<MoorTag> custom({
    Expression<String> id,
    Expression<String> creatorId,
    Expression<String> name,
    Expression<DateTime> creationDate,
    Expression<DateTime> modificationDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (creatorId != null) 'creator_id': creatorId,
      if (name != null) 'name': name,
      if (creationDate != null) 'creation_date': creationDate,
      if (modificationDate != null) 'modification_date': modificationDate,
    });
  }

  MoorTagsCompanion copyWith({Value<String> id,
    Value<String> creatorId,
    Value<String> name,
    Value<DateTime> creationDate,
    Value<DateTime> modificationDate}) {
    return MoorTagsCompanion(
      id: id ?? this.id,
      creatorId: creatorId ?? this.creatorId,
      name: name ?? this.name,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (creatorId.present) {
      map['creator_id'] = Variable<String>(creatorId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    if (modificationDate.present) {
      map['modification_date'] = Variable<DateTime>(modificationDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorTagsCompanion(')
          ..write('id: $id, ')
          ..write('creatorId: $creatorId, ')
          ..write('name: $name, ')
          ..write('creationDate: $creationDate, ')
          ..write('modificationDate: $modificationDate')
          ..write(')'))
        .toString();
  }
}

class $MoorTagsTable extends MoorTags with TableInfo<$MoorTagsTable, MoorTag> {
  final GeneratedDatabase _db;
  final String _alias;
  $MoorTagsTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _creatorIdMeta = const VerificationMeta('creatorId');
  GeneratedTextColumn _creatorId;
  @override
  GeneratedTextColumn get creatorId => _creatorId ??= _constructCreatorId();
  GeneratedTextColumn _constructCreatorId() {
    return GeneratedTextColumn('creator_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;

  @override
  GeneratedTextColumn get name => _name ??= _constructName();

  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false,
      minTextLength: 1, $customConstraints: 'UNIQUE');
  }

  final VerificationMeta _creationDateMeta =
  const VerificationMeta('creationDate');
  GeneratedDateTimeColumn _creationDate;

  @override
  GeneratedDateTimeColumn get creationDate =>
    _creationDate ??= _constructCreationDate();

  GeneratedDateTimeColumn _constructCreationDate() {
    return GeneratedDateTimeColumn(
      'creation_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _modificationDateMeta =
  const VerificationMeta('modificationDate');
  GeneratedDateTimeColumn _modificationDate;

  @override
  GeneratedDateTimeColumn get modificationDate =>
    _modificationDate ??= _constructModificationDate();

  GeneratedDateTimeColumn _constructModificationDate() {
    return GeneratedDateTimeColumn(
      'modification_date',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
    [id, creatorId, name, creationDate, modificationDate];
  @override
  $MoorTagsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_tags';
  @override
  final String actualTableName = 'moor_tags';

  @override
  VerificationContext validateIntegrity(Insertable<MoorTag> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('creator_id')) {
      context.handle(_creatorIdMeta,
        creatorId.isAcceptableOrUnknown(data['creator_id'], _creatorIdMeta));
    } else if (isInserting) {
      context.missing(_creatorIdMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('creation_date')) {
      context.handle(
        _creationDateMeta,
        creationDate.isAcceptableOrUnknown(
          data['creation_date'], _creationDateMeta));
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    if (data.containsKey('modification_date')) {
      context.handle(
        _modificationDateMeta,
        modificationDate.isAcceptableOrUnknown(
          data['modification_date'], _modificationDateMeta));
    } else if (isInserting) {
      context.missing(_modificationDateMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorTag map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorTag.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorTagsTable createAlias(String alias) {
    return $MoorTagsTable(_db, alias);
  }
}

class MoorUser extends DataClass implements Insertable<MoorUser> {
  final String id;
  final String name;
  final String username;
  final String password;
  final String email;
  final DateTime birthday;
  final String description;
  final String imageURL;
  final int level;
  final int experiencePoints;
  final bool privacy;
  final bool adminPowers;
  final bool enabled;
  final DateTime lastLogin;
  final DateTime creationDate;
  final DateTime modificationDate;
  final bool isLoggedIn;

  MoorUser({@required this.id,
    @required this.name,
    @required this.username,
    @required this.password,
    @required this.email,
    @required this.birthday,
    @required this.description,
    @required this.imageURL,
    @required this.level,
    @required this.experiencePoints,
    @required this.privacy,
    @required this.adminPowers,
    @required this.enabled,
    @required this.lastLogin,
    @required this.creationDate,
    @required this.modificationDate,
    @required this.isLoggedIn});

  factory MoorUser.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    final dateTimeType = db.typeSystem.forDartType<DateTime>();
    final intType = db.typeSystem.forDartType<int>();
    final boolType = db.typeSystem.forDartType<bool>();
    return MoorUser(
      id: stringType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      name: stringType.mapFromDatabaseResponse(data['${effectivePrefix}name']),
      username: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}username']),
      password: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}password']),
      email:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}email']),
      birthday: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}birthday']),
      description: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      imageURL: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}image_u_r_l']),
      level: intType.mapFromDatabaseResponse(data['${effectivePrefix}level']),
      experiencePoints: intType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_points']),
      privacy:
      boolType.mapFromDatabaseResponse(data['${effectivePrefix}privacy']),
      adminPowers: boolType
        .mapFromDatabaseResponse(data['${effectivePrefix}admin_powers']),
      enabled:
      boolType.mapFromDatabaseResponse(data['${effectivePrefix}enabled']),
      lastLogin: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}last_login']),
      creationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}creation_date']),
      modificationDate: dateTimeType
        .mapFromDatabaseResponse(data['${effectivePrefix}modification_date']),
      isLoggedIn: boolType
        .mapFromDatabaseResponse(data['${effectivePrefix}is_logged_in']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || id != null) {
      map['id'] = Variable<String>(id);
    }
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    if (!nullToAbsent || username != null) {
      map['username'] = Variable<String>(username);
    }
    if (!nullToAbsent || password != null) {
      map['password'] = Variable<String>(password);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || birthday != null) {
      map['birthday'] = Variable<DateTime>(birthday);
    }
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || imageURL != null) {
      map['image_u_r_l'] = Variable<String>(imageURL);
    }
    if (!nullToAbsent || level != null) {
      map['level'] = Variable<int>(level);
    }
    if (!nullToAbsent || experiencePoints != null) {
      map['experience_points'] = Variable<int>(experiencePoints);
    }
    if (!nullToAbsent || privacy != null) {
      map['privacy'] = Variable<bool>(privacy);
    }
    if (!nullToAbsent || adminPowers != null) {
      map['admin_powers'] = Variable<bool>(adminPowers);
    }
    if (!nullToAbsent || enabled != null) {
      map['enabled'] = Variable<bool>(enabled);
    }
    if (!nullToAbsent || lastLogin != null) {
      map['last_login'] = Variable<DateTime>(lastLogin);
    }
    if (!nullToAbsent || creationDate != null) {
      map['creation_date'] = Variable<DateTime>(creationDate);
    }
    if (!nullToAbsent || modificationDate != null) {
      map['modification_date'] = Variable<DateTime>(modificationDate);
    }
    if (!nullToAbsent || isLoggedIn != null) {
      map['is_logged_in'] = Variable<bool>(isLoggedIn);
    }
    return map;
  }

  MoorUsersCompanion toCompanion(bool nullToAbsent) {
    return MoorUsersCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
      username: username == null && nullToAbsent
        ? const Value.absent()
        : Value(username),
      password: password == null && nullToAbsent
        ? const Value.absent()
        : Value(password),
      email:
      email == null && nullToAbsent ? const Value.absent() : Value(email),
      birthday: birthday == null && nullToAbsent
        ? const Value.absent()
        : Value(birthday),
      description: description == null && nullToAbsent
        ? const Value.absent()
        : Value(description),
      imageURL: imageURL == null && nullToAbsent
        ? const Value.absent()
        : Value(imageURL),
      level:
      level == null && nullToAbsent ? const Value.absent() : Value(level),
      experiencePoints: experiencePoints == null && nullToAbsent
        ? const Value.absent()
        : Value(experiencePoints),
      privacy: privacy == null && nullToAbsent
        ? const Value.absent()
        : Value(privacy),
      adminPowers: adminPowers == null && nullToAbsent
        ? const Value.absent()
        : Value(adminPowers),
      enabled: enabled == null && nullToAbsent
        ? const Value.absent()
        : Value(enabled),
      lastLogin: lastLogin == null && nullToAbsent
        ? const Value.absent()
        : Value(lastLogin),
      creationDate: creationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(creationDate),
      modificationDate: modificationDate == null && nullToAbsent
        ? const Value.absent()
        : Value(modificationDate),
      isLoggedIn: isLoggedIn == null && nullToAbsent
        ? const Value.absent()
        : Value(isLoggedIn),
    );
  }

  factory MoorUser.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return MoorUser(
      id: serializer.fromJson<String>(json['id']),
      name: serializer.fromJson<String>(json['name']),
      username: serializer.fromJson<String>(json['username']),
      password: serializer.fromJson<String>(json['password']),
      email: serializer.fromJson<String>(json['email']),
      birthday: serializer.fromJson<DateTime>(json['birthday']),
      description: serializer.fromJson<String>(json['description']),
      imageURL: serializer.fromJson<String>(json['imageURL']),
      level: serializer.fromJson<int>(json['level']),
      experiencePoints: serializer.fromJson<int>(json['experiencePoints']),
      privacy: serializer.fromJson<bool>(json['privacy']),
      adminPowers: serializer.fromJson<bool>(json['adminPowers']),
      enabled: serializer.fromJson<bool>(json['enabled']),
      lastLogin: serializer.fromJson<DateTime>(json['lastLogin']),
      creationDate: serializer.fromJson<DateTime>(json['creationDate']),
      modificationDate: serializer.fromJson<DateTime>(json['modificationDate']),
      isLoggedIn: serializer.fromJson<bool>(json['isLoggedIn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'name': serializer.toJson<String>(name),
      'username': serializer.toJson<String>(username),
      'password': serializer.toJson<String>(password),
      'email': serializer.toJson<String>(email),
      'birthday': serializer.toJson<DateTime>(birthday),
      'description': serializer.toJson<String>(description),
      'imageURL': serializer.toJson<String>(imageURL),
      'level': serializer.toJson<int>(level),
      'experiencePoints': serializer.toJson<int>(experiencePoints),
      'privacy': serializer.toJson<bool>(privacy),
      'adminPowers': serializer.toJson<bool>(adminPowers),
      'enabled': serializer.toJson<bool>(enabled),
      'lastLogin': serializer.toJson<DateTime>(lastLogin),
      'creationDate': serializer.toJson<DateTime>(creationDate),
      'modificationDate': serializer.toJson<DateTime>(modificationDate),
      'isLoggedIn': serializer.toJson<bool>(isLoggedIn),
    };
  }

  MoorUser copyWith({String id,
    String name,
    String username,
    String password,
    String email,
    DateTime birthday,
    String description,
    String imageURL,
    int level,
    int experiencePoints,
    bool privacy,
    bool adminPowers,
    bool enabled,
    DateTime lastLogin,
    DateTime creationDate,
    DateTime modificationDate,
    bool isLoggedIn}) =>
    MoorUser(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
      birthday: birthday ?? this.birthday,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
      level: level ?? this.level,
      experiencePoints: experiencePoints ?? this.experiencePoints,
      privacy: privacy ?? this.privacy,
      adminPowers: adminPowers ?? this.adminPowers,
      enabled: enabled ?? this.enabled,
        lastLogin: lastLogin ?? this.lastLogin,
        creationDate: creationDate ?? this.creationDate,
        modificationDate: modificationDate ?? this.modificationDate,
        isLoggedIn: isLoggedIn ?? this.isLoggedIn,
      );
  @override
  String toString() {
    return (StringBuffer('MoorUser(')
      ..write('id: $id, ')..write('name: $name, ')..write('username: $username, ')..write('password: $password, ')..write('email: $email, ')..write('birthday: $birthday, ')..write(
        'description: $description, ')..write('imageURL: $imageURL, ')..write('level: $level, ')..write('experiencePoints: $experiencePoints, ')..write('privacy: $privacy, ')..write(
        'adminPowers: $adminPowers, ')..write('enabled: $enabled, ')..write('lastLogin: $lastLogin, ')..write('creationDate: $creationDate, ')..write('modificationDate: $modificationDate, ')..write(
        'isLoggedIn: $isLoggedIn')..write(')'))
      .toString();
  }

  @override
  int get hashCode =>
    $mrjf($mrjc(
      id.hashCode,
      $mrjc(
        name.hashCode,
        $mrjc(
          username.hashCode,
          $mrjc(
            password.hashCode,
            $mrjc(
              email.hashCode,
              $mrjc(
                birthday.hashCode,
                $mrjc(
                  description.hashCode,
                  $mrjc(
                    imageURL.hashCode,
                    $mrjc(
                      level.hashCode,
                      $mrjc(
                        experiencePoints.hashCode,
                        $mrjc(
                          privacy.hashCode,
                          $mrjc(
                            adminPowers.hashCode,
                            $mrjc(
                              enabled.hashCode,
                              $mrjc(
                                lastLogin.hashCode,
                                $mrjc(
                                  creationDate
                                    .hashCode,
                                  $mrjc(
                                    modificationDate
                                      .hashCode,
                                    isLoggedIn
                                      .hashCode)))))))))))))))));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is MoorUser &&
        other.id == this.id &&
        other.name == this.name &&
        other.username == this.username &&
        other.password == this.password &&
        other.email == this.email &&
        other.birthday == this.birthday &&
        other.description == this.description &&
        other.imageURL == this.imageURL &&
        other.level == this.level &&
        other.experiencePoints == this.experiencePoints &&
        other.privacy == this.privacy &&
        other.adminPowers == this.adminPowers &&
        other.enabled == this.enabled &&
        other.lastLogin == this.lastLogin &&
        other.creationDate == this.creationDate &&
        other.modificationDate == this.modificationDate &&
        other.isLoggedIn == this.isLoggedIn);
}

class MoorUsersCompanion extends UpdateCompanion<MoorUser> {
  final Value<String> id;
  final Value<String> name;
  final Value<String> username;
  final Value<String> password;
  final Value<String> email;
  final Value<DateTime> birthday;
  final Value<String> description;
  final Value<String> imageURL;
  final Value<int> level;
  final Value<int> experiencePoints;
  final Value<bool> privacy;
  final Value<bool> adminPowers;
  final Value<bool> enabled;
  final Value<DateTime> lastLogin;
  final Value<DateTime> creationDate;
  final Value<DateTime> modificationDate;
  final Value<bool> isLoggedIn;
  const MoorUsersCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
    this.username = const Value.absent(),
    this.password = const Value.absent(),
    this.email = const Value.absent(),
    this.birthday = const Value.absent(),
    this.description = const Value.absent(),
    this.imageURL = const Value.absent(),
    this.level = const Value.absent(),
    this.experiencePoints = const Value.absent(),
    this.privacy = const Value.absent(),
    this.adminPowers = const Value.absent(),
    this.enabled = const Value.absent(),
    this.lastLogin = const Value.absent(),
    this.creationDate = const Value.absent(),
    this.modificationDate = const Value.absent(),
    this.isLoggedIn = const Value.absent(),
  });
  MoorUsersCompanion.insert({
    @required String id,
    @required String name,
    @required String username,
    @required String password,
    @required String email,
    @required DateTime birthday,
    @required String description,
    @required String imageURL,
    @required int level,
    @required int experiencePoints,
    @required bool privacy,
    @required bool adminPowers,
    @required bool enabled,
    @required DateTime lastLogin,
    @required DateTime creationDate,
    @required DateTime modificationDate,
    @required bool isLoggedIn,
  })
    : id = Value(id),
      name = Value(name),
      username = Value(username),
      password = Value(password),
      email = Value(email),
      birthday = Value(birthday),
      description = Value(description),
      imageURL = Value(imageURL),
      level = Value(level),
      experiencePoints = Value(experiencePoints),
      privacy = Value(privacy),
      adminPowers = Value(adminPowers),
      enabled = Value(enabled),
      lastLogin = Value(lastLogin),
      creationDate = Value(creationDate),
      modificationDate = Value(modificationDate),
      isLoggedIn = Value(isLoggedIn);
  static Insertable<MoorUser> custom({
    Expression<String> id,
    Expression<String> name,
    Expression<String> username,
    Expression<String> password,
    Expression<String> email,
    Expression<DateTime> birthday,
    Expression<String> description,
    Expression<String> imageURL,
    Expression<int> level,
    Expression<int> experiencePoints,
    Expression<bool> privacy,
    Expression<bool> adminPowers,
    Expression<bool> enabled,
    Expression<DateTime> lastLogin,
    Expression<DateTime> creationDate,
    Expression<DateTime> modificationDate,
    Expression<bool> isLoggedIn,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
      if (username != null) 'username': username,
      if (password != null) 'password': password,
      if (email != null) 'email': email,
      if (birthday != null) 'birthday': birthday,
      if (description != null) 'description': description,
      if (imageURL != null) 'image_u_r_l': imageURL,
      if (level != null) 'level': level,
      if (experiencePoints != null) 'experience_points': experiencePoints,
      if (privacy != null) 'privacy': privacy,
      if (adminPowers != null) 'admin_powers': adminPowers,
      if (enabled != null) 'enabled': enabled,
      if (lastLogin != null) 'last_login': lastLogin,
      if (creationDate != null) 'creation_date': creationDate,
      if (modificationDate != null) 'modification_date': modificationDate,
      if (isLoggedIn != null) 'is_logged_in': isLoggedIn,
    });
  }

  MoorUsersCompanion copyWith({Value<String> id,
    Value<String> name,
    Value<String> username,
    Value<String> password,
    Value<String> email,
    Value<DateTime> birthday,
    Value<String> description,
    Value<String> imageURL,
    Value<int> level,
    Value<int> experiencePoints,
    Value<bool> privacy,
    Value<bool> adminPowers,
    Value<bool> enabled,
    Value<DateTime> lastLogin,
    Value<DateTime> creationDate,
    Value<DateTime> modificationDate,
    Value<bool> isLoggedIn}) {
    return MoorUsersCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
      username: username ?? this.username,
      password: password ?? this.password,
      email: email ?? this.email,
      birthday: birthday ?? this.birthday,
      description: description ?? this.description,
      imageURL: imageURL ?? this.imageURL,
      level: level ?? this.level,
      experiencePoints: experiencePoints ?? this.experiencePoints,
      privacy: privacy ?? this.privacy,
      adminPowers: adminPowers ?? this.adminPowers,
      enabled: enabled ?? this.enabled,
      lastLogin: lastLogin ?? this.lastLogin,
      creationDate: creationDate ?? this.creationDate,
      modificationDate: modificationDate ?? this.modificationDate,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (birthday.present) {
      map['birthday'] = Variable<DateTime>(birthday.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (imageURL.present) {
      map['image_u_r_l'] = Variable<String>(imageURL.value);
    }
    if (level.present) {
      map['level'] = Variable<int>(level.value);
    }
    if (experiencePoints.present) {
      map['experience_points'] = Variable<int>(experiencePoints.value);
    }
    if (privacy.present) {
      map['privacy'] = Variable<bool>(privacy.value);
    }
    if (adminPowers.present) {
      map['admin_powers'] = Variable<bool>(adminPowers.value);
    }
    if (enabled.present) {
      map['enabled'] = Variable<bool>(enabled.value);
    }
    if (lastLogin.present) {
      map['last_login'] = Variable<DateTime>(lastLogin.value);
    }
    if (creationDate.present) {
      map['creation_date'] = Variable<DateTime>(creationDate.value);
    }
    if (modificationDate.present) {
      map['modification_date'] = Variable<DateTime>(modificationDate.value);
    }
    if (isLoggedIn.present) {
      map['is_logged_in'] = Variable<bool>(isLoggedIn.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MoorUsersCompanion(')
          ..write('id: $id, ')
          ..write('name: $name, ')
          ..write('username: $username, ')
          ..write('password: $password, ')
          ..write('email: $email, ')
          ..write('birthday: $birthday, ')
          ..write('description: $description, ')
          ..write('imageURL: $imageURL, ')
          ..write('level: $level, ')
          ..write('experiencePoints: $experiencePoints, ')
          ..write('privacy: $privacy, ')
          ..write('adminPowers: $adminPowers, ')
          ..write('enabled: $enabled, ')
          ..write('lastLogin: $lastLogin, ')
          ..write('creationDate: $creationDate, ')
          ..write('modificationDate: $modificationDate, ')
          ..write('isLoggedIn: $isLoggedIn')
          ..write(')'))
        .toString();
  }
}

class $MoorUsersTable extends MoorUsers
  with TableInfo<$MoorUsersTable, MoorUser> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $MoorUsersTable(this._db, [this._alias]);
  
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedTextColumn _id;
  
  @override
  GeneratedTextColumn get id => _id ??= _constructId();
  
  GeneratedTextColumn _constructId() {
    return GeneratedTextColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _nameMeta = const VerificationMeta('name');
  GeneratedTextColumn _name;
  @override
  GeneratedTextColumn get name => _name ??= _constructName();
  GeneratedTextColumn _constructName() {
    return GeneratedTextColumn('name', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  GeneratedTextColumn _username;
  @override
  GeneratedTextColumn get username => _username ??= _constructUsername();
  GeneratedTextColumn _constructUsername() {
    return GeneratedTextColumn('username', $tableName, false,
      minTextLength: 1, $customConstraints: 'UNIQUE');
  }

  final VerificationMeta _passwordMeta = const VerificationMeta('password');
  GeneratedTextColumn _password;
  @override
  GeneratedTextColumn get password => _password ??= _constructPassword();
  GeneratedTextColumn _constructPassword() {
    return GeneratedTextColumn('password', $tableName, false, minTextLength: 1);
  }

  final VerificationMeta _emailMeta = const VerificationMeta('email');
  GeneratedTextColumn _email;
  @override
  GeneratedTextColumn get email => _email ??= _constructEmail();
  GeneratedTextColumn _constructEmail() {
    return GeneratedTextColumn('email', $tableName, false,
      $customConstraints: 'UNIQUE');
  }

  final VerificationMeta _birthdayMeta = const VerificationMeta('birthday');
  GeneratedDateTimeColumn _birthday;
  @override
  GeneratedDateTimeColumn get birthday => _birthday ??= _constructBirthday();
  
  GeneratedDateTimeColumn _constructBirthday() {
    return GeneratedDateTimeColumn(
      'birthday',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _descriptionMeta =
  const VerificationMeta('description');
  GeneratedTextColumn _description;
  
  @override
  GeneratedTextColumn get description =>
    _description ??= _constructDescription();
  
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn('description', $tableName, false,
      minTextLength: 1);
  }
  
  final VerificationMeta _imageURLMeta = const VerificationMeta('imageURL');
  GeneratedTextColumn _imageURL;
  @override
  GeneratedTextColumn get imageURL => _imageURL ??= _constructImageURL();
  GeneratedTextColumn _constructImageURL() {
    return GeneratedTextColumn(
      'image_u_r_l',
      $tableName,
      false,
    );
  }

  final VerificationMeta _levelMeta = const VerificationMeta('level');
  GeneratedIntColumn _level;
  @override
  GeneratedIntColumn get level => _level ??= _constructLevel();
  
  GeneratedIntColumn _constructLevel() {
    return GeneratedIntColumn(
      'level',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _experiencePointsMeta =
  const VerificationMeta('experiencePoints');
  GeneratedIntColumn _experiencePoints;
  
  @override
  GeneratedIntColumn get experiencePoints =>
    _experiencePoints ??= _constructExperiencePoints();
  
  GeneratedIntColumn _constructExperiencePoints() {
    return GeneratedIntColumn(
      'experience_points',
      $tableName,
      false,
    );
  }

  final VerificationMeta _privacyMeta = const VerificationMeta('privacy');
  GeneratedBoolColumn _privacy;
  @override
  GeneratedBoolColumn get privacy => _privacy ??= _constructPrivacy();
  
  GeneratedBoolColumn _constructPrivacy() {
    return GeneratedBoolColumn(
      'privacy',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _adminPowersMeta =
  const VerificationMeta('adminPowers');
  GeneratedBoolColumn _adminPowers;
  
  @override
  GeneratedBoolColumn get adminPowers =>
    _adminPowers ??= _constructAdminPowers();
  
  GeneratedBoolColumn _constructAdminPowers() {
    return GeneratedBoolColumn(
      'admin_powers',
      $tableName,
      false,
    );
  }

  final VerificationMeta _enabledMeta = const VerificationMeta('enabled');
  GeneratedBoolColumn _enabled;
  @override
  GeneratedBoolColumn get enabled => _enabled ??= _constructEnabled();
  GeneratedBoolColumn _constructEnabled() {
    return GeneratedBoolColumn(
      'enabled',
      $tableName,
      false,
    );
  }

  final VerificationMeta _lastLoginMeta = const VerificationMeta('lastLogin');
  GeneratedDateTimeColumn _lastLogin;
  @override
  GeneratedDateTimeColumn get lastLogin => _lastLogin ??= _constructLastLogin();
  
  GeneratedDateTimeColumn _constructLastLogin() {
    return GeneratedDateTimeColumn(
      'last_login',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _creationDateMeta =
  const VerificationMeta('creationDate');
  GeneratedDateTimeColumn _creationDate;
  
  @override
  GeneratedDateTimeColumn get creationDate =>
    _creationDate ??= _constructCreationDate();
  
  GeneratedDateTimeColumn _constructCreationDate() {
    return GeneratedDateTimeColumn(
      'creation_date',
      $tableName,
      false,
    );
  }
  
  final VerificationMeta _modificationDateMeta =
  const VerificationMeta('modificationDate');
  GeneratedDateTimeColumn _modificationDate;
  
  @override
  GeneratedDateTimeColumn get modificationDate =>
    _modificationDate ??= _constructModificationDate();
  
  GeneratedDateTimeColumn _constructModificationDate() {
    return GeneratedDateTimeColumn(
      'modification_date',
      $tableName,
      false,
    );
  }

  final VerificationMeta _isLoggedInMeta = const VerificationMeta('isLoggedIn');
  GeneratedBoolColumn _isLoggedIn;
  @override
  GeneratedBoolColumn get isLoggedIn => _isLoggedIn ??= _constructIsLoggedIn();
  GeneratedBoolColumn _constructIsLoggedIn() {
    return GeneratedBoolColumn(
      'is_logged_in',
      $tableName,
      false,
    );
  }
  
  @override
  List<GeneratedColumn> get $columns =>
    [
      id,
      name,
      username,
      password,
      email,
      birthday,
      description,
      imageURL,
      level,
      experiencePoints,
      privacy,
      adminPowers,
      enabled,
      lastLogin,
      creationDate,
      modificationDate,
      isLoggedIn
    ];
  
  @override
  $MoorUsersTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'moor_users';
  @override
  final String actualTableName = 'moor_users';
  
  @override
  VerificationContext validateIntegrity(Insertable<MoorUser> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id'], _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
        _nameMeta, name.isAcceptableOrUnknown(data['name'], _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
        username.isAcceptableOrUnknown(data['username'], _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
        password.isAcceptableOrUnknown(data['password'], _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
        _emailMeta, email.isAcceptableOrUnknown(data['email'], _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('birthday')) {
      context.handle(_birthdayMeta,
        birthday.isAcceptableOrUnknown(data['birthday'], _birthdayMeta));
    } else if (isInserting) {
      context.missing(_birthdayMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
        _descriptionMeta,
        description.isAcceptableOrUnknown(
          data['description'], _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('image_u_r_l')) {
      context.handle(_imageURLMeta,
        imageURL.isAcceptableOrUnknown(data['image_u_r_l'], _imageURLMeta));
    } else if (isInserting) {
      context.missing(_imageURLMeta);
    }
    if (data.containsKey('level')) {
      context.handle(
        _levelMeta, level.isAcceptableOrUnknown(data['level'], _levelMeta));
    } else if (isInserting) {
      context.missing(_levelMeta);
    }
    if (data.containsKey('experience_points')) {
      context.handle(
        _experiencePointsMeta,
        experiencePoints.isAcceptableOrUnknown(
          data['experience_points'], _experiencePointsMeta));
    } else if (isInserting) {
      context.missing(_experiencePointsMeta);
    }
    if (data.containsKey('privacy')) {
      context.handle(_privacyMeta,
        privacy.isAcceptableOrUnknown(data['privacy'], _privacyMeta));
    } else if (isInserting) {
      context.missing(_privacyMeta);
    }
    if (data.containsKey('admin_powers')) {
      context.handle(
        _adminPowersMeta,
        adminPowers.isAcceptableOrUnknown(
          data['admin_powers'], _adminPowersMeta));
    } else if (isInserting) {
      context.missing(_adminPowersMeta);
    }
    if (data.containsKey('enabled')) {
      context.handle(_enabledMeta,
        enabled.isAcceptableOrUnknown(data['enabled'], _enabledMeta));
    } else if (isInserting) {
      context.missing(_enabledMeta);
    }
    if (data.containsKey('last_login')) {
      context.handle(_lastLoginMeta,
        lastLogin.isAcceptableOrUnknown(data['last_login'], _lastLoginMeta));
    } else if (isInserting) {
      context.missing(_lastLoginMeta);
    }
    if (data.containsKey('creation_date')) {
      context.handle(
        _creationDateMeta,
        creationDate.isAcceptableOrUnknown(
          data['creation_date'], _creationDateMeta));
    } else if (isInserting) {
      context.missing(_creationDateMeta);
    }
    if (data.containsKey('modification_date')) {
      context.handle(
        _modificationDateMeta,
        modificationDate.isAcceptableOrUnknown(
          data['modification_date'], _modificationDateMeta));
    } else if (isInserting) {
      context.missing(_modificationDateMeta);
    }
    if (data.containsKey('is_logged_in')) {
      context.handle(
        _isLoggedInMeta,
        isLoggedIn.isAcceptableOrUnknown(
          data['is_logged_in'], _isLoggedInMeta));
    } else if (isInserting) {
      context.missing(_isLoggedInMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  MoorUser map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return MoorUser.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $MoorUsersTable createAlias(String alias) {
    return $MoorUsersTable(_db, alias);
  }
}

class UserBlockRelation extends DataClass
  implements Insertable<UserBlockRelation> {
  final String blockedId;
  final String blockerId;
  
  UserBlockRelation({@required this.blockedId, @required this.blockerId});
  
  factory UserBlockRelation.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return UserBlockRelation(
      blockedId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}blocked_id']),
      blockerId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}blocker_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || blockedId != null) {
      map['blocked_id'] = Variable<String>(blockedId);
    }
    if (!nullToAbsent || blockerId != null) {
      map['blocker_id'] = Variable<String>(blockerId);
    }
    return map;
  }

  UserBlockRelationsCompanion toCompanion(bool nullToAbsent) {
    return UserBlockRelationsCompanion(
      blockedId: blockedId == null && nullToAbsent
        ? const Value.absent()
        : Value(blockedId),
      blockerId: blockerId == null && nullToAbsent
        ? const Value.absent()
        : Value(blockerId),
    );
  }
  
  factory UserBlockRelation.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserBlockRelation(
      blockedId: serializer.fromJson<String>(json['blockedId']),
      blockerId: serializer.fromJson<String>(json['blockerId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'blockedId': serializer.toJson<String>(blockedId),
      'blockerId': serializer.toJson<String>(blockerId),
    };
  }

  UserBlockRelation copyWith({String blockedId, String blockerId}) =>
    UserBlockRelation(
      blockedId: blockedId ?? this.blockedId,
      blockerId: blockerId ?? this.blockerId,
    );
  @override
  String toString() {
    return (StringBuffer('UserBlockRelation(')
      ..write('blockedId: $blockedId, ')..write('blockerId: $blockerId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(blockedId.hashCode, blockerId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is UserBlockRelation &&
        other.blockedId == this.blockedId &&
        other.blockerId == this.blockerId);
}

class UserBlockRelationsCompanion extends UpdateCompanion<UserBlockRelation> {
  final Value<String> blockedId;
  final Value<String> blockerId;
  const UserBlockRelationsCompanion({
    this.blockedId = const Value.absent(),
    this.blockerId = const Value.absent(),
  });

  UserBlockRelationsCompanion.insert({
    @required String blockedId,
    @required String blockerId,
  })
    : blockedId = Value(blockedId),
      blockerId = Value(blockerId);

  static Insertable<UserBlockRelation> custom({
    Expression<String> blockedId,
    Expression<String> blockerId,
  }) {
    return RawValuesInsertable({
      if (blockedId != null) 'blocked_id': blockedId,
      if (blockerId != null) 'blocker_id': blockerId,
    });
  }

  UserBlockRelationsCompanion copyWith({Value<String> blockedId, Value<String> blockerId}) {
    return UserBlockRelationsCompanion(
      blockedId: blockedId ?? this.blockedId,
      blockerId: blockerId ?? this.blockerId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (blockedId.present) {
      map['blocked_id'] = Variable<String>(blockedId.value);
    }
    if (blockerId.present) {
      map['blocker_id'] = Variable<String>(blockerId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserBlockRelationsCompanion(')
      ..write('blockedId: $blockedId, ')..write('blockerId: $blockerId')..write(')'))
      .toString();
  }
}

class $UserBlockRelationsTable extends UserBlockRelations
  with TableInfo<$UserBlockRelationsTable, UserBlockRelation> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $UserBlockRelationsTable(this._db, [this._alias]);
  
  final VerificationMeta _blockedIdMeta = const VerificationMeta('blockedId');
  GeneratedTextColumn _blockedId;
  
  @override
  GeneratedTextColumn get blockedId => _blockedId ??= _constructBlockedId();
  
  GeneratedTextColumn _constructBlockedId() {
    return GeneratedTextColumn('blocked_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }

  final VerificationMeta _blockerIdMeta = const VerificationMeta('blockerId');
  GeneratedTextColumn _blockerId;
  @override
  GeneratedTextColumn get blockerId => _blockerId ??= _constructBlockerId();
  GeneratedTextColumn _constructBlockerId() {
    return GeneratedTextColumn('blocker_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }

  @override
  List<GeneratedColumn> get $columns => [blockedId, blockerId];
  @override
  $UserBlockRelationsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_block_relations';
  @override
  final String actualTableName = 'user_block_relations';
  
  @override
  VerificationContext validateIntegrity(Insertable<UserBlockRelation> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('blocked_id')) {
      context.handle(_blockedIdMeta,
        blockedId.isAcceptableOrUnknown(data['blocked_id'], _blockedIdMeta));
    } else if (isInserting) {
      context.missing(_blockedIdMeta);
    }
    if (data.containsKey('blocker_id')) {
      context.handle(_blockerIdMeta,
        blockerId.isAcceptableOrUnknown(data['blocker_id'], _blockerIdMeta));
    } else if (isInserting) {
      context.missing(_blockerIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {blockedId, blockerId};
  @override
  UserBlockRelation map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserBlockRelation.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserBlockRelationsTable createAlias(String alias) {
    return $UserBlockRelationsTable(_db, alias);
  }
}

class UserFollowRelation extends DataClass
  implements Insertable<UserFollowRelation> {
  final String followedId;
  final String followingId;
  
  UserFollowRelation({@required this.followedId, @required this.followingId});
  
  factory UserFollowRelation.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return UserFollowRelation(
      followedId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}followed_id']),
      followingId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}following_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || followedId != null) {
      map['followed_id'] = Variable<String>(followedId);
    }
    if (!nullToAbsent || followingId != null) {
      map['following_id'] = Variable<String>(followingId);
    }
    return map;
  }

  UserFollowRelationsCompanion toCompanion(bool nullToAbsent) {
    return UserFollowRelationsCompanion(
      followedId: followedId == null && nullToAbsent
        ? const Value.absent()
        : Value(followedId),
      followingId: followingId == null && nullToAbsent
        ? const Value.absent()
        : Value(followingId),
    );
  }
  
  factory UserFollowRelation.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserFollowRelation(
      followedId: serializer.fromJson<String>(json['followedId']),
      followingId: serializer.fromJson<String>(json['followingId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'followedId': serializer.toJson<String>(followedId),
      'followingId': serializer.toJson<String>(followingId),
    };
  }

  UserFollowRelation copyWith({String followedId, String followingId}) =>
    UserFollowRelation(
      followedId: followedId ?? this.followedId,
      followingId: followingId ?? this.followingId,
    );
  @override
  String toString() {
    return (StringBuffer('UserFollowRelation(')
      ..write('followedId: $followedId, ')..write('followingId: $followingId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(followedId.hashCode, followingId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is UserFollowRelation &&
        other.followedId == this.followedId &&
        other.followingId == this.followingId);
}

class UserFollowRelationsCompanion extends UpdateCompanion<UserFollowRelation> {
  final Value<String> followedId;
  final Value<String> followingId;
  const UserFollowRelationsCompanion({
    this.followedId = const Value.absent(),
    this.followingId = const Value.absent(),
  });

  UserFollowRelationsCompanion.insert({
    @required String followedId,
    @required String followingId,
  })
    : followedId = Value(followedId),
      followingId = Value(followingId);

  static Insertable<UserFollowRelation> custom({
    Expression<String> followedId,
    Expression<String> followingId,
  }) {
    return RawValuesInsertable({
      if (followedId != null) 'followed_id': followedId,
      if (followingId != null) 'following_id': followingId,
    });
  }

  UserFollowRelationsCompanion copyWith({Value<String> followedId, Value<String> followingId}) {
    return UserFollowRelationsCompanion(
      followedId: followedId ?? this.followedId,
      followingId: followingId ?? this.followingId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (followedId.present) {
      map['followed_id'] = Variable<String>(followedId.value);
    }
    if (followingId.present) {
      map['following_id'] = Variable<String>(followingId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserFollowRelationsCompanion(')
      ..write('followedId: $followedId, ')..write('followingId: $followingId')..write(')'))
      .toString();
  }
}

class $UserFollowRelationsTable extends UserFollowRelations
  with TableInfo<$UserFollowRelationsTable, UserFollowRelation> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $UserFollowRelationsTable(this._db, [this._alias]);
  
  final VerificationMeta _followedIdMeta = const VerificationMeta('followedId');
  GeneratedTextColumn _followedId;
  
  @override
  GeneratedTextColumn get followedId => _followedId ??= _constructFollowedId();
  
  GeneratedTextColumn _constructFollowedId() {
    return GeneratedTextColumn('followed_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  final VerificationMeta _followingIdMeta =
  const VerificationMeta('followingId');
  GeneratedTextColumn _followingId;
  
  @override
  GeneratedTextColumn get followingId =>
    _followingId ??= _constructFollowingId();
  
  GeneratedTextColumn _constructFollowingId() {
    return GeneratedTextColumn('following_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns => [followedId, followingId];
  @override
  $UserFollowRelationsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_follow_relations';
  @override
  final String actualTableName = 'user_follow_relations';
  
  @override
  VerificationContext validateIntegrity(Insertable<UserFollowRelation> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('followed_id')) {
      context.handle(
        _followedIdMeta,
        followedId.isAcceptableOrUnknown(
          data['followed_id'], _followedIdMeta));
    } else if (isInserting) {
      context.missing(_followedIdMeta);
    }
    if (data.containsKey('following_id')) {
      context.handle(
        _followingIdMeta,
        followingId.isAcceptableOrUnknown(
          data['following_id'], _followingIdMeta));
    } else if (isInserting) {
      context.missing(_followingIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {followedId, followingId};
  @override
  UserFollowRelation map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserFollowRelation.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserFollowRelationsTable createAlias(String alias) {
    return $UserFollowRelationsTable(_db, alias);
  }
}

class UserAchievement extends DataClass implements Insertable<UserAchievement> {
  final String userId;
  final String achievementId;
  
  UserAchievement({@required this.userId, @required this.achievementId});
  
  factory UserAchievement.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return UserAchievement(
      userId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      achievementId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}achievement_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || achievementId != null) {
      map['achievement_id'] = Variable<String>(achievementId);
    }
    return map;
  }

  UserAchievementsCompanion toCompanion(bool nullToAbsent) {
    return UserAchievementsCompanion(
      userId:
      userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      achievementId: achievementId == null && nullToAbsent
        ? const Value.absent()
        : Value(achievementId),
    );
  }
  
  factory UserAchievement.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserAchievement(
      userId: serializer.fromJson<String>(json['userId']),
      achievementId: serializer.fromJson<String>(json['achievementId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'achievementId': serializer.toJson<String>(achievementId),
    };
  }

  UserAchievement copyWith({String userId, String achievementId}) =>
    UserAchievement(
      userId: userId ?? this.userId,
      achievementId: achievementId ?? this.achievementId,
    );
  @override
  String toString() {
    return (StringBuffer('UserAchievement(')
      ..write('userId: $userId, ')..write('achievementId: $achievementId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(userId.hashCode, achievementId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is UserAchievement &&
        other.userId == this.userId &&
        other.achievementId == this.achievementId);
}

class UserAchievementsCompanion extends UpdateCompanion<UserAchievement> {
  final Value<String> userId;
  final Value<String> achievementId;
  const UserAchievementsCompanion({
    this.userId = const Value.absent(),
    this.achievementId = const Value.absent(),
  });

  UserAchievementsCompanion.insert({
    @required String userId,
    @required String achievementId,
  })
    : userId = Value(userId),
      achievementId = Value(achievementId);

  static Insertable<UserAchievement> custom({
    Expression<String> userId,
    Expression<String> achievementId,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (achievementId != null) 'achievement_id': achievementId,
    });
  }

  UserAchievementsCompanion copyWith({Value<String> userId, Value<String> achievementId}) {
    return UserAchievementsCompanion(
      userId: userId ?? this.userId,
      achievementId: achievementId ?? this.achievementId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (achievementId.present) {
      map['achievement_id'] = Variable<String>(achievementId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserAchievementsCompanion(')
      ..write('userId: $userId, ')..write('achievementId: $achievementId')..write(')'))
      .toString();
  }
}

class $UserAchievementsTable extends UserAchievements
  with TableInfo<$UserAchievementsTable, UserAchievement> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $UserAchievementsTable(this._db, [this._alias]);
  
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn('user_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  final VerificationMeta _achievementIdMeta =
  const VerificationMeta('achievementId');
  GeneratedTextColumn _achievementId;
  
  @override
  GeneratedTextColumn get achievementId =>
    _achievementId ??= _constructAchievementId();
  
  GeneratedTextColumn _constructAchievementId() {
    return GeneratedTextColumn('achievement_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_achievements(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns => [userId, achievementId];
  @override
  $UserAchievementsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_achievements';
  @override
  final String actualTableName = 'user_achievements';
  
  @override
  VerificationContext validateIntegrity(Insertable<UserAchievement> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('achievement_id')) {
      context.handle(
        _achievementIdMeta,
        achievementId.isAcceptableOrUnknown(
          data['achievement_id'], _achievementIdMeta));
    } else if (isInserting) {
      context.missing(_achievementIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, achievementId};
  @override
  UserAchievement map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserAchievement.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserAchievementsTable createAlias(String alias) {
    return $UserAchievementsTable(_db, alias);
  }
}

class UserInterest extends DataClass implements Insertable<UserInterest> {
  final String userId;
  final String tagId;
  UserInterest({@required this.userId, @required this.tagId});

  factory UserInterest.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return UserInterest(
      userId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      tagId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}tag_id']),
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || tagId != null) {
      map['tag_id'] = Variable<String>(tagId);
    }
    return map;
  }

  UserInterestsCompanion toCompanion(bool nullToAbsent) {
    return UserInterestsCompanion(
      userId:
      userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      tagId:
      tagId == null && nullToAbsent ? const Value.absent() : Value(tagId),
    );
  }

  factory UserInterest.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserInterest(
      userId: serializer.fromJson<String>(json['userId']),
      tagId: serializer.fromJson<String>(json['tagId']),
    );
  }

  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'tagId': serializer.toJson<String>(tagId),
    };
  }

  UserInterest copyWith({String userId, String tagId}) =>
    UserInterest(
      userId: userId ?? this.userId,
      tagId: tagId ?? this.tagId,
    );

  @override
  String toString() {
    return (StringBuffer('UserInterest(')
      ..write('userId: $userId, ')..write('tagId: $tagId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(userId.hashCode, tagId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is UserInterest &&
        other.userId == this.userId &&
        other.tagId == this.tagId);
}

class UserInterestsCompanion extends UpdateCompanion<UserInterest> {
  final Value<String> userId;
  final Value<String> tagId;
  const UserInterestsCompanion({
    this.userId = const Value.absent(),
    this.tagId = const Value.absent(),
  });

  UserInterestsCompanion.insert({
    @required String userId,
    @required String tagId,
  })
    : userId = Value(userId),
      tagId = Value(tagId);
  static Insertable<UserInterest> custom({
    Expression<String> userId,
    Expression<String> tagId,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (tagId != null) 'tag_id': tagId,
    });
  }

  UserInterestsCompanion copyWith({Value<String> userId, Value<String> tagId}) {
    return UserInterestsCompanion(
      userId: userId ?? this.userId,
      tagId: tagId ?? this.tagId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<String>(tagId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserInterestsCompanion(')
      ..write('userId: $userId, ')..write('tagId: $tagId')..write(')'))
      .toString();
  }
}

class $UserInterestsTable extends UserInterests
  with TableInfo<$UserInterestsTable, UserInterest> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $UserInterestsTable(this._db, [this._alias]);
  
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn('user_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }

  final VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  GeneratedTextColumn _tagId;
  @override
  GeneratedTextColumn get tagId => _tagId ??= _constructTagId();
  GeneratedTextColumn _constructTagId() {
    return GeneratedTextColumn('tag_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_tags(id)');
  }

  @override
  List<GeneratedColumn> get $columns => [userId, tagId];
  @override
  $UserInterestsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_interests';
  @override
  final String actualTableName = 'user_interests';
  
  @override
  VerificationContext validateIntegrity(Insertable<UserInterest> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
        _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id'], _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, tagId};
  @override
  UserInterest map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserInterest.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserInterestsTable createAlias(String alias) {
    return $UserInterestsTable(_db, alias);
  }
}

class UserDoneExperience extends DataClass
  implements Insertable<UserDoneExperience> {
  final String userId;
  final String experienceId;
  
  UserDoneExperience({@required this.userId, @required this.experienceId});
  
  factory UserDoneExperience.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return UserDoneExperience(
      userId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    return map;
  }

  UserDoneExperiencesCompanion toCompanion(bool nullToAbsent) {
    return UserDoneExperiencesCompanion(
      userId:
      userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
    );
  }
  
  factory UserDoneExperience.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserDoneExperience(
      userId: serializer.fromJson<String>(json['userId']),
      experienceId: serializer.fromJson<String>(json['experienceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'experienceId': serializer.toJson<String>(experienceId),
    };
  }

  UserDoneExperience copyWith({String userId, String experienceId}) =>
    UserDoneExperience(
      userId: userId ?? this.userId,
      experienceId: experienceId ?? this.experienceId,
    );
  @override
  String toString() {
    return (StringBuffer('UserDoneExperience(')
      ..write('userId: $userId, ')..write('experienceId: $experienceId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(userId.hashCode, experienceId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is UserDoneExperience &&
        other.userId == this.userId &&
        other.experienceId == this.experienceId);
}

class UserDoneExperiencesCompanion extends UpdateCompanion<UserDoneExperience> {
  final Value<String> userId;
  final Value<String> experienceId;
  const UserDoneExperiencesCompanion({
    this.userId = const Value.absent(),
    this.experienceId = const Value.absent(),
  });

  UserDoneExperiencesCompanion.insert({
    @required String userId,
    @required String experienceId,
  })
    : userId = Value(userId),
      experienceId = Value(experienceId);

  static Insertable<UserDoneExperience> custom({
    Expression<String> userId,
    Expression<String> experienceId,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (experienceId != null) 'experience_id': experienceId,
    });
  }

  UserDoneExperiencesCompanion copyWith({Value<String> userId, Value<String> experienceId}) {
    return UserDoneExperiencesCompanion(
      userId: userId ?? this.userId,
      experienceId: experienceId ?? this.experienceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserDoneExperiencesCompanion(')
      ..write('userId: $userId, ')..write('experienceId: $experienceId')..write(')'))
      .toString();
  }
}

class $UserDoneExperiencesTable extends UserDoneExperiences
  with TableInfo<$UserDoneExperiencesTable, UserDoneExperience> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $UserDoneExperiencesTable(this._db, [this._alias]);
  
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn('user_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns => [userId, experienceId];
  @override
  $UserDoneExperiencesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_done_experiences';
  @override
  final String actualTableName = 'user_done_experiences';
  
  @override
  VerificationContext validateIntegrity(Insertable<UserDoneExperience> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, experienceId};
  @override
  UserDoneExperience map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserDoneExperience.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserDoneExperiencesTable createAlias(String alias) {
    return $UserDoneExperiencesTable(_db, alias);
  }
}

class UserLikedExperience extends DataClass
  implements Insertable<UserLikedExperience> {
  final String userId;
  final String experienceId;
  
  UserLikedExperience({@required this.userId, @required this.experienceId});
  
  factory UserLikedExperience.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return UserLikedExperience(
      userId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    return map;
  }

  UserLikedExperiencesCompanion toCompanion(bool nullToAbsent) {
    return UserLikedExperiencesCompanion(
      userId:
      userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
    );
  }
  
  factory UserLikedExperience.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserLikedExperience(
      userId: serializer.fromJson<String>(json['userId']),
      experienceId: serializer.fromJson<String>(json['experienceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'experienceId': serializer.toJson<String>(experienceId),
    };
  }

  UserLikedExperience copyWith({String userId, String experienceId}) =>
    UserLikedExperience(
      userId: userId ?? this.userId,
      experienceId: experienceId ?? this.experienceId,
    );
  @override
  String toString() {
    return (StringBuffer('UserLikedExperience(')
      ..write('userId: $userId, ')..write('experienceId: $experienceId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(userId.hashCode, experienceId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is UserLikedExperience &&
        other.userId == this.userId &&
        other.experienceId == this.experienceId);
}

class UserLikedExperiencesCompanion extends UpdateCompanion<UserLikedExperience> {
  final Value<String> userId;
  final Value<String> experienceId;
  
  const UserLikedExperiencesCompanion({
    this.userId = const Value.absent(),
    this.experienceId = const Value.absent(),
  });
  
  UserLikedExperiencesCompanion.insert({
    @required String userId,
    @required String experienceId,
  })
    : userId = Value(userId),
      experienceId = Value(experienceId);
  
  static Insertable<UserLikedExperience> custom({
    Expression<String> userId,
    Expression<String> experienceId,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (experienceId != null) 'experience_id': experienceId,
    });
  }
  
  UserLikedExperiencesCompanion copyWith({Value<String> userId, Value<String> experienceId}) {
    return UserLikedExperiencesCompanion(
      userId: userId ?? this.userId,
      experienceId: experienceId ?? this.experienceId,
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserLikedExperiencesCompanion(')
      ..write('userId: $userId, ')..write('experienceId: $experienceId')..write(')'))
      .toString();
  }
}

class $UserLikedExperiencesTable extends UserLikedExperiences
  with TableInfo<$UserLikedExperiencesTable, UserLikedExperience> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $UserLikedExperiencesTable(this._db, [this._alias]);
  
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn('user_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns => [userId, experienceId];
  @override
  $UserLikedExperiencesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_liked_experiences';
  @override
  final String actualTableName = 'user_liked_experiences';
  
  @override
  VerificationContext validateIntegrity(Insertable<UserLikedExperience> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, experienceId};
  @override
  UserLikedExperience map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserLikedExperience.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserLikedExperiencesTable createAlias(String alias) {
    return $UserLikedExperiencesTable(_db, alias);
  }
}

class UserToDoExperience extends DataClass
  implements Insertable<UserToDoExperience> {
  final String userId;
  final String experienceId;
  
  UserToDoExperience({@required this.userId, @required this.experienceId});
  
  factory UserToDoExperience.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return UserToDoExperience(
      userId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}user_id']),
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<String>(userId);
    }
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    return map;
  }

  UserToDoExperiencesCompanion toCompanion(bool nullToAbsent) {
    return UserToDoExperiencesCompanion(
      userId:
      userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
    );
  }
  
  factory UserToDoExperience.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return UserToDoExperience(
      userId: serializer.fromJson<String>(json['userId']),
      experienceId: serializer.fromJson<String>(json['experienceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<String>(userId),
      'experienceId': serializer.toJson<String>(experienceId),
    };
  }

  UserToDoExperience copyWith({String userId, String experienceId}) =>
    UserToDoExperience(
      userId: userId ?? this.userId,
      experienceId: experienceId ?? this.experienceId,
    );
  @override
  String toString() {
    return (StringBuffer('UserToDoExperience(')
      ..write('userId: $userId, ')..write('experienceId: $experienceId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(userId.hashCode, experienceId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is UserToDoExperience &&
        other.userId == this.userId &&
        other.experienceId == this.experienceId);
}

class UserToDoExperiencesCompanion extends UpdateCompanion<UserToDoExperience> {
  final Value<String> userId;
  final Value<String> experienceId;
  const UserToDoExperiencesCompanion({
    this.userId = const Value.absent(),
    this.experienceId = const Value.absent(),
  });

  UserToDoExperiencesCompanion.insert({
    @required String userId,
    @required String experienceId,
  })
    : userId = Value(userId),
      experienceId = Value(experienceId);

  static Insertable<UserToDoExperience> custom({
    Expression<String> userId,
    Expression<String> experienceId,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (experienceId != null) 'experience_id': experienceId,
    });
  }

  UserToDoExperiencesCompanion copyWith({Value<String> userId, Value<String> experienceId}) {
    return UserToDoExperiencesCompanion(
      userId: userId ?? this.userId,
      experienceId: experienceId ?? this.experienceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserToDoExperiencesCompanion(')
      ..write('userId: $userId, ')..write('experienceId: $experienceId')..write(')'))
      .toString();
  }
}

class $UserToDoExperiencesTable extends UserToDoExperiences
  with TableInfo<$UserToDoExperiencesTable, UserToDoExperience> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $UserToDoExperiencesTable(this._db, [this._alias]);
  
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  GeneratedTextColumn _userId;
  
  @override
  GeneratedTextColumn get userId => _userId ??= _constructUserId();
  
  GeneratedTextColumn _constructUserId() {
    return GeneratedTextColumn('user_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_users(id)');
  }
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns => [userId, experienceId];
  @override
  $UserToDoExperiencesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'user_to_do_experiences';
  @override
  final String actualTableName = 'user_to_do_experiences';
  
  @override
  VerificationContext validateIntegrity(Insertable<UserToDoExperience> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
        userId.isAcceptableOrUnknown(data['user_id'], _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId, experienceId};
  @override
  UserToDoExperience map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return UserToDoExperience.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $UserToDoExperiencesTable createAlias(String alias) {
    return $UserToDoExperiencesTable(_db, alias);
  }
}

class LocationExperience extends DataClass
  implements Insertable<LocationExperience> {
  final String locationId;
  final String experienceId;
  
  LocationExperience({@required this.locationId, @required this.experienceId});
  
  factory LocationExperience.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return LocationExperience(
      locationId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}location_id']),
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || locationId != null) {
      map['location_id'] = Variable<String>(locationId);
    }
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    return map;
  }

  LocationExperiencesCompanion toCompanion(bool nullToAbsent) {
    return LocationExperiencesCompanion(
      locationId: locationId == null && nullToAbsent
        ? const Value.absent()
        : Value(locationId),
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
    );
  }
  
  factory LocationExperience.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return LocationExperience(
      locationId: serializer.fromJson<String>(json['locationId']),
      experienceId: serializer.fromJson<String>(json['experienceId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'locationId': serializer.toJson<String>(locationId),
      'experienceId': serializer.toJson<String>(experienceId),
    };
  }

  LocationExperience copyWith({String locationId, String experienceId}) =>
    LocationExperience(
      locationId: locationId ?? this.locationId,
      experienceId: experienceId ?? this.experienceId,
    );
  @override
  String toString() {
    return (StringBuffer('LocationExperience(')
      ..write('locationId: $locationId, ')..write('experienceId: $experienceId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(locationId.hashCode, experienceId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is LocationExperience &&
        other.locationId == this.locationId &&
        other.experienceId == this.experienceId);
}

class LocationExperiencesCompanion extends UpdateCompanion<LocationExperience> {
  final Value<String> locationId;
  final Value<String> experienceId;
  const LocationExperiencesCompanion({
    this.locationId = const Value.absent(),
    this.experienceId = const Value.absent(),
  });

  LocationExperiencesCompanion.insert({
    @required String locationId,
    @required String experienceId,
  })
    : locationId = Value(locationId),
      experienceId = Value(experienceId);

  static Insertable<LocationExperience> custom({
    Expression<String> locationId,
    Expression<String> experienceId,
  }) {
    return RawValuesInsertable({
      if (locationId != null) 'location_id': locationId,
      if (experienceId != null) 'experience_id': experienceId,
    });
  }

  LocationExperiencesCompanion copyWith({Value<String> locationId, Value<String> experienceId}) {
    return LocationExperiencesCompanion(
      locationId: locationId ?? this.locationId,
      experienceId: experienceId ?? this.experienceId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (locationId.present) {
      map['location_id'] = Variable<String>(locationId.value);
    }
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LocationExperiencesCompanion(')
      ..write('locationId: $locationId, ')..write('experienceId: $experienceId')..write(')'))
      .toString();
  }
}

class $LocationExperiencesTable extends LocationExperiences
  with TableInfo<$LocationExperiencesTable, LocationExperience> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $LocationExperiencesTable(this._db, [this._alias]);
  
  final VerificationMeta _locationIdMeta = const VerificationMeta('locationId');
  GeneratedTextColumn _locationId;
  
  @override
  GeneratedTextColumn get locationId => _locationId ??= _constructLocationId();
  
  GeneratedTextColumn _constructLocationId() {
    return GeneratedTextColumn('location_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_locations(id)');
  }
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns => [locationId, experienceId];
  @override
  $LocationExperiencesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'location_experiences';
  @override
  final String actualTableName = 'location_experiences';
  
  @override
  VerificationContext validateIntegrity(Insertable<LocationExperience> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('location_id')) {
      context.handle(
        _locationIdMeta,
        locationId.isAcceptableOrUnknown(
          data['location_id'], _locationIdMeta));
    } else if (isInserting) {
      context.missing(_locationIdMeta);
    }
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {locationId, experienceId};
  @override
  LocationExperience map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return LocationExperience.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $LocationExperiencesTable createAlias(String alias) {
    return $LocationExperiencesTable(_db, alias);
  }
}

class ExperienceImageUrl extends DataClass
  implements Insertable<ExperienceImageUrl> {
  final String experienceId;
  final String imageUrl;
  
  ExperienceImageUrl({@required this.experienceId, @required this.imageUrl});
  
  factory ExperienceImageUrl.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return ExperienceImageUrl(
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
      imageUrl: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}image_url']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    return map;
  }

  ExperienceImageUrlsCompanion toCompanion(bool nullToAbsent) {
    return ExperienceImageUrlsCompanion(
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
      imageUrl: imageUrl == null && nullToAbsent
        ? const Value.absent()
        : Value(imageUrl),
    );
  }
  
  factory ExperienceImageUrl.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ExperienceImageUrl(
      experienceId: serializer.fromJson<String>(json['experienceId']),
      imageUrl: serializer.fromJson<String>(json['imageUrl']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'experienceId': serializer.toJson<String>(experienceId),
      'imageUrl': serializer.toJson<String>(imageUrl),
    };
  }

  ExperienceImageUrl copyWith({String experienceId, String imageUrl}) =>
    ExperienceImageUrl(
      experienceId: experienceId ?? this.experienceId,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  @override
  String toString() {
    return (StringBuffer('ExperienceImageUrl(')
      ..write('experienceId: $experienceId, ')..write('imageUrl: $imageUrl')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(experienceId.hashCode, imageUrl.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is ExperienceImageUrl &&
        other.experienceId == this.experienceId &&
        other.imageUrl == this.imageUrl);
}

class ExperienceImageUrlsCompanion extends UpdateCompanion<ExperienceImageUrl> {
  final Value<String> experienceId;
  final Value<String> imageUrl;
  const ExperienceImageUrlsCompanion({
    this.experienceId = const Value.absent(),
    this.imageUrl = const Value.absent(),
  });

  ExperienceImageUrlsCompanion.insert({
    @required String experienceId,
    @required String imageUrl,
  })
    : experienceId = Value(experienceId),
      imageUrl = Value(imageUrl);

  static Insertable<ExperienceImageUrl> custom({
    Expression<String> experienceId,
    Expression<String> imageUrl,
  }) {
    return RawValuesInsertable({
      if (experienceId != null) 'experience_id': experienceId,
      if (imageUrl != null) 'image_url': imageUrl,
    });
  }

  ExperienceImageUrlsCompanion copyWith({Value<String> experienceId, Value<String> imageUrl}) {
    return ExperienceImageUrlsCompanion(
      experienceId: experienceId ?? this.experienceId,
      imageUrl: imageUrl ?? this.imageUrl,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExperienceImageUrlsCompanion(')
      ..write('experienceId: $experienceId, ')..write('imageUrl: $imageUrl')..write(')'))
      .toString();
  }
}

class $ExperienceImageUrlsTable extends ExperienceImageUrls
  with TableInfo<$ExperienceImageUrlsTable, ExperienceImageUrl> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $ExperienceImageUrlsTable(this._db, [this._alias]);
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  final VerificationMeta _imageUrlMeta = const VerificationMeta('imageUrl');
  GeneratedTextColumn _imageUrl;
  @override
  GeneratedTextColumn get imageUrl => _imageUrl ??= _constructImageUrl();
  GeneratedTextColumn _constructImageUrl() {
    return GeneratedTextColumn(
      'image_url',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns => [experienceId, imageUrl];
  @override
  $ExperienceImageUrlsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'experience_image_urls';
  @override
  final String actualTableName = 'experience_image_urls';
  
  @override
  VerificationContext validateIntegrity(Insertable<ExperienceImageUrl> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
        imageUrl.isAcceptableOrUnknown(data['image_url'], _imageUrlMeta));
    } else if (isInserting) {
      context.missing(_imageUrlMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {experienceId, imageUrl};
  @override
  ExperienceImageUrl map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ExperienceImageUrl.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ExperienceImageUrlsTable createAlias(String alias) {
    return $ExperienceImageUrlsTable(_db, alias);
  }
}

class ExperienceTag extends DataClass implements Insertable<ExperienceTag> {
  final String experienceId;
  final String tagId;
  
  ExperienceTag({@required this.experienceId, @required this.tagId});
  
  factory ExperienceTag.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return ExperienceTag(
      experienceId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}experience_id']),
      tagId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}tag_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || experienceId != null) {
      map['experience_id'] = Variable<String>(experienceId);
    }
    if (!nullToAbsent || tagId != null) {
      map['tag_id'] = Variable<String>(tagId);
    }
    return map;
  }

  ExperienceTagsCompanion toCompanion(bool nullToAbsent) {
    return ExperienceTagsCompanion(
      experienceId: experienceId == null && nullToAbsent
        ? const Value.absent()
        : Value(experienceId),
      tagId:
      tagId == null && nullToAbsent ? const Value.absent() : Value(tagId),
    );
  }
  
  factory ExperienceTag.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return ExperienceTag(
      experienceId: serializer.fromJson<String>(json['experienceId']),
      tagId: serializer.fromJson<String>(json['tagId']),
    );
  }
  
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'experienceId': serializer.toJson<String>(experienceId),
      'tagId': serializer.toJson<String>(tagId),
    };
  }
  
  ExperienceTag copyWith({String experienceId, String tagId}) =>
    ExperienceTag(
      experienceId: experienceId ?? this.experienceId,
      tagId: tagId ?? this.tagId,
    );
  
  @override
  String toString() {
    return (StringBuffer('ExperienceTag(')
      ..write('experienceId: $experienceId, ')..write('tagId: $tagId')..write(')'))
      .toString();
  }
  
  @override
  int get hashCode => $mrjf($mrjc(experienceId.hashCode, tagId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is ExperienceTag &&
        other.experienceId == this.experienceId &&
        other.tagId == this.tagId);
}

class ExperienceTagsCompanion extends UpdateCompanion<ExperienceTag> {
  final Value<String> experienceId;
  final Value<String> tagId;
  const ExperienceTagsCompanion({
    this.experienceId = const Value.absent(),
    this.tagId = const Value.absent(),
  });

  ExperienceTagsCompanion.insert({
    @required String experienceId,
    @required String tagId,
  })
    : experienceId = Value(experienceId),
      tagId = Value(tagId);

  static Insertable<ExperienceTag> custom({
    Expression<String> experienceId,
    Expression<String> tagId,
  }) {
    return RawValuesInsertable({
      if (experienceId != null) 'experience_id': experienceId,
      if (tagId != null) 'tag_id': tagId,
    });
  }

  ExperienceTagsCompanion copyWith({Value<String> experienceId, Value<String> tagId}) {
    return ExperienceTagsCompanion(
      experienceId: experienceId ?? this.experienceId,
      tagId: tagId ?? this.tagId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (experienceId.present) {
      map['experience_id'] = Variable<String>(experienceId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<String>(tagId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ExperienceTagsCompanion(')
      ..write('experienceId: $experienceId, ')..write('tagId: $tagId')..write(')'))
      .toString();
  }
}

class $ExperienceTagsTable extends ExperienceTags
  with TableInfo<$ExperienceTagsTable, ExperienceTag> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $ExperienceTagsTable(this._db, [this._alias]);
  
  final VerificationMeta _experienceIdMeta =
  const VerificationMeta('experienceId');
  GeneratedTextColumn _experienceId;
  
  @override
  GeneratedTextColumn get experienceId =>
    _experienceId ??= _constructExperienceId();
  
  GeneratedTextColumn _constructExperienceId() {
    return GeneratedTextColumn('experience_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_experiences(id)');
  }
  
  final VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  GeneratedTextColumn _tagId;
  @override
  GeneratedTextColumn get tagId => _tagId ??= _constructTagId();
  GeneratedTextColumn _constructTagId() {
    return GeneratedTextColumn('tag_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_tags(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns => [experienceId, tagId];
  @override
  $ExperienceTagsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'experience_tags';
  @override
  final String actualTableName = 'experience_tags';
  
  @override
  VerificationContext validateIntegrity(Insertable<ExperienceTag> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('experience_id')) {
      context.handle(
        _experienceIdMeta,
        experienceId.isAcceptableOrUnknown(
          data['experience_id'], _experienceIdMeta));
    } else if (isInserting) {
      context.missing(_experienceIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
        _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id'], _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {experienceId, tagId};
  @override
  ExperienceTag map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return ExperienceTag.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $ExperienceTagsTable createAlias(String alias) {
    return $ExperienceTagsTable(_db, alias);
  }
}

class AchievementTag extends DataClass implements Insertable<AchievementTag> {
  final String achievementId;
  final String tagId;
  
  AchievementTag({@required this.achievementId, @required this.tagId});
  
  factory AchievementTag.fromData(Map<String, dynamic> data, GeneratedDatabase db,
    {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final stringType = db.typeSystem.forDartType<String>();
    return AchievementTag(
      achievementId: stringType
        .mapFromDatabaseResponse(data['${effectivePrefix}achievement_id']),
      tagId:
      stringType.mapFromDatabaseResponse(data['${effectivePrefix}tag_id']),
    );
  }
  
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (!nullToAbsent || achievementId != null) {
      map['achievement_id'] = Variable<String>(achievementId);
    }
    if (!nullToAbsent || tagId != null) {
      map['tag_id'] = Variable<String>(tagId);
    }
    return map;
  }

  AchievementTagsCompanion toCompanion(bool nullToAbsent) {
    return AchievementTagsCompanion(
      achievementId: achievementId == null && nullToAbsent
        ? const Value.absent()
        : Value(achievementId),
      tagId:
      tagId == null && nullToAbsent ? const Value.absent() : Value(tagId),
    );
  }
  
  factory AchievementTag.fromJson(Map<String, dynamic> json,
    {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return AchievementTag(
      achievementId: serializer.fromJson<String>(json['achievementId']),
      tagId: serializer.fromJson<String>(json['tagId']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'achievementId': serializer.toJson<String>(achievementId),
      'tagId': serializer.toJson<String>(tagId),
    };
  }
  
  AchievementTag copyWith({String achievementId, String tagId}) =>
    AchievementTag(
      achievementId: achievementId ?? this.achievementId,
      tagId: tagId ?? this.tagId,
    );
  @override
  String toString() {
    return (StringBuffer('AchievementTag(')
      ..write('achievementId: $achievementId, ')..write('tagId: $tagId')..write(')'))
      .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(achievementId.hashCode, tagId.hashCode));
  @override
  bool operator ==(dynamic other) =>
    identical(this, other) ||
      (other is AchievementTag &&
        other.achievementId == this.achievementId &&
        other.tagId == this.tagId);
}

class AchievementTagsCompanion extends UpdateCompanion<AchievementTag> {
  final Value<String> achievementId;
  final Value<String> tagId;
  const AchievementTagsCompanion({
    this.achievementId = const Value.absent(),
    this.tagId = const Value.absent(),
  });

  AchievementTagsCompanion.insert({
    @required String achievementId,
    @required String tagId,
  })
    : achievementId = Value(achievementId),
      tagId = Value(tagId);

  static Insertable<AchievementTag> custom({
    Expression<String> achievementId,
    Expression<String> tagId,
  }) {
    return RawValuesInsertable({
      if (achievementId != null) 'achievement_id': achievementId,
      if (tagId != null) 'tag_id': tagId,
    });
  }

  AchievementTagsCompanion copyWith({Value<String> achievementId, Value<String> tagId}) {
    return AchievementTagsCompanion(
      achievementId: achievementId ?? this.achievementId,
      tagId: tagId ?? this.tagId,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (achievementId.present) {
      map['achievement_id'] = Variable<String>(achievementId.value);
    }
    if (tagId.present) {
      map['tag_id'] = Variable<String>(tagId.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AchievementTagsCompanion(')
      ..write('achievementId: $achievementId, ')..write('tagId: $tagId')..write(')'))
      .toString();
  }
}

class $AchievementTagsTable extends AchievementTags
  with TableInfo<$AchievementTagsTable, AchievementTag> {
  final GeneratedDatabase _db;
  final String _alias;
  
  $AchievementTagsTable(this._db, [this._alias]);
  
  final VerificationMeta _achievementIdMeta =
  const VerificationMeta('achievementId');
  GeneratedTextColumn _achievementId;
  
  @override
  GeneratedTextColumn get achievementId =>
    _achievementId ??= _constructAchievementId();
  
  GeneratedTextColumn _constructAchievementId() {
    return GeneratedTextColumn('achievement_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_achievements(id)');
  }
  
  final VerificationMeta _tagIdMeta = const VerificationMeta('tagId');
  GeneratedTextColumn _tagId;
  @override
  GeneratedTextColumn get tagId => _tagId ??= _constructTagId();
  GeneratedTextColumn _constructTagId() {
    return GeneratedTextColumn('tag_id', $tableName, false,
      $customConstraints: 'REFERENCES moor_tags(id)');
  }
  
  @override
  List<GeneratedColumn> get $columns => [achievementId, tagId];
  @override
  $AchievementTagsTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'achievement_tags';
  @override
  final String actualTableName = 'achievement_tags';
  
  @override
  VerificationContext validateIntegrity(Insertable<AchievementTag> instance,
    {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('achievement_id')) {
      context.handle(
        _achievementIdMeta,
        achievementId.isAcceptableOrUnknown(
          data['achievement_id'], _achievementIdMeta));
    } else if (isInserting) {
      context.missing(_achievementIdMeta);
    }
    if (data.containsKey('tag_id')) {
      context.handle(
        _tagIdMeta, tagId.isAcceptableOrUnknown(data['tag_id'], _tagIdMeta));
    } else if (isInserting) {
      context.missing(_tagIdMeta);
    }
    return context;
  }
  
  @override
  Set<GeneratedColumn> get $primaryKey => {achievementId, tagId};
  @override
  AchievementTag map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return AchievementTag.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  $AchievementTagsTable createAlias(String alias) {
    return $AchievementTagsTable(_db, alias);
  }
}

abstract class _$Database extends GeneratedDatabase {
  _$Database(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $MoorAchievementsTable _moorAchievements;
  $MoorAchievementsTable get moorAchievements =>
    _moorAchievements ??= $MoorAchievementsTable(this);
  $MoorCommentsTable _moorComments;
  $MoorCommentsTable get moorComments =>
    _moorComments ??= $MoorCommentsTable(this);
  $MoorExperiencesTable _moorExperiences;
  $MoorExperiencesTable get moorExperiences =>
    _moorExperiences ??= $MoorExperiencesTable(this);
  $MoorLocationsTable _moorLocations;
  $MoorLocationsTable get moorLocations =>
    _moorLocations ??= $MoorLocationsTable(this);
  $MoorNotificationsTable _moorNotifications;
  $MoorNotificationsTable get moorNotifications =>
    _moorNotifications ??= $MoorNotificationsTable(this);
  $MoorObjectivesTable _moorObjectives;
  $MoorObjectivesTable get moorObjectives =>
    _moorObjectives ??= $MoorObjectivesTable(this);
  $MoorOptionsTable _moorOptions;
  $MoorOptionsTable get moorOptions => _moorOptions ??= $MoorOptionsTable(this);
  $MoorRewardsTable _moorRewards;
  $MoorRewardsTable get moorRewards => _moorRewards ??= $MoorRewardsTable(this);
  $MoorTagsTable _moorTags;
  $MoorTagsTable get moorTags => _moorTags ??= $MoorTagsTable(this);
  $MoorUsersTable _moorUsers;
  $MoorUsersTable get moorUsers => _moorUsers ??= $MoorUsersTable(this);
  $UserBlockRelationsTable _userBlockRelations;
  $UserBlockRelationsTable get userBlockRelations =>
    _userBlockRelations ??= $UserBlockRelationsTable(this);
  $UserFollowRelationsTable _userFollowRelations;
  $UserFollowRelationsTable get userFollowRelations =>
    _userFollowRelations ??= $UserFollowRelationsTable(this);
  $UserAchievementsTable _userAchievements;
  $UserAchievementsTable get userAchievements =>
    _userAchievements ??= $UserAchievementsTable(this);
  $UserInterestsTable _userInterests;
  $UserInterestsTable get userInterests =>
    _userInterests ??= $UserInterestsTable(this);
  $UserDoneExperiencesTable _userDoneExperiences;
  $UserDoneExperiencesTable get userDoneExperiences =>
    _userDoneExperiences ??= $UserDoneExperiencesTable(this);
  $UserLikedExperiencesTable _userLikedExperiences;
  $UserLikedExperiencesTable get userLikedExperiences =>
    _userLikedExperiences ??= $UserLikedExperiencesTable(this);
  $UserToDoExperiencesTable _userToDoExperiences;
  $UserToDoExperiencesTable get userToDoExperiences =>
    _userToDoExperiences ??= $UserToDoExperiencesTable(this);
  $LocationExperiencesTable _locationExperiences;
  $LocationExperiencesTable get locationExperiences =>
    _locationExperiences ??= $LocationExperiencesTable(this);
  $ExperienceImageUrlsTable _experienceImageUrls;
  $ExperienceImageUrlsTable get experienceImageUrls =>
    _experienceImageUrls ??= $ExperienceImageUrlsTable(this);
  $ExperienceTagsTable _experienceTags;
  $ExperienceTagsTable get experienceTags =>
    _experienceTags ??= $ExperienceTagsTable(this);
  $AchievementTagsTable _achievementTags;
  $AchievementTagsTable get achievementTags =>
    _achievementTags ??= $AchievementTagsTable(this);
  MoorAchievementsDao _moorAchievementsDao;
  MoorAchievementsDao get moorAchievementsDao =>
    _moorAchievementsDao ??= MoorAchievementsDao(this as Database);
  MoorCommentsDao _moorCommentsDao;
  MoorCommentsDao get moorCommentsDao =>
    _moorCommentsDao ??= MoorCommentsDao(this as Database);
  MoorExperiencesDao _moorExperiencesDao;
  MoorExperiencesDao get moorExperiencesDao =>
    _moorExperiencesDao ??= MoorExperiencesDao(this as Database);
  MoorNotificationsDao _moorNotificationsDao;
  MoorNotificationsDao get moorNotificationsDao =>
    _moorNotificationsDao ??= MoorNotificationsDao(this as Database);
  MoorTagsDao _moorTagsDao;
  MoorTagsDao get moorTagsDao => _moorTagsDao ??= MoorTagsDao(this as Database);
  MoorUsersDao _moorUsersDao;
  MoorUsersDao get moorUsersDao =>
    _moorUsersDao ??= MoorUsersDao(this as Database);
  MoorObjectivesDao _moorObjectivesDao;
  MoorObjectivesDao get moorObjectivesDao =>
    _moorObjectivesDao ??= MoorObjectivesDao(this as Database);
  MoorOptionsDao _moorOptionsDao;
  MoorOptionsDao get moorOptionsDao =>
    _moorOptionsDao ??= MoorOptionsDao(this as Database);
  MoorRewardsDao _moorRewardsDao;
  MoorRewardsDao get moorRewardsDao =>
    _moorRewardsDao ??= MoorRewardsDao(this as Database);

  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();

  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
    [
      moorAchievements,
      moorComments,
      moorExperiences,
      moorLocations,
      moorNotifications,
      moorObjectives,
      moorOptions,
      moorRewards,
      moorTags,
      moorUsers,
      userBlockRelations,
      userFollowRelations,
      userAchievements,
      userInterests,
      userDoneExperiences,
      userLikedExperiences,
      userToDoExperiences,
      locationExperiences,
      experienceImageUrls,
      experienceTags,
      achievementTags
    ];
}
