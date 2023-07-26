// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetUserEntityCollection on Isar {
  IsarCollection<UserEntity> get userEntitys => this.collection();
}

const UserEntitySchema = CollectionSchema(
  name: r'UserEntity',
  id: 965090076791382600,
  properties: {
    r'bio': PropertySchema(
      id: 0,
      name: r'bio',
      type: IsarType.string,
    ),
    r'coverUrl': PropertySchema(
      id: 1,
      name: r'coverUrl',
      type: IsarType.object,
      target: r'MediaSource',
    ),
    r'firstName': PropertySchema(
      id: 2,
      name: r'firstName',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 3,
      name: r'id',
      type: IsarType.string,
    ),
    r'imageUrl': PropertySchema(
      id: 4,
      name: r'imageUrl',
      type: IsarType.object,
      target: r'MediaSource',
    ),
    r'isBeta': PropertySchema(
      id: 5,
      name: r'isBeta',
      type: IsarType.bool,
    ),
    r'isBot': PropertySchema(
      id: 6,
      name: r'isBot',
      type: IsarType.bool,
    ),
    r'isMod': PropertySchema(
      id: 7,
      name: r'isMod',
      type: IsarType.bool,
    ),
    r'isStaff': PropertySchema(
      id: 8,
      name: r'isStaff',
      type: IsarType.bool,
    ),
    r'isVerified': PropertySchema(
      id: 9,
      name: r'isVerified',
      type: IsarType.bool,
    ),
    r'lastName': PropertySchema(
      id: 10,
      name: r'lastName',
      type: IsarType.string,
    ),
    r'theme': PropertySchema(
      id: 11,
      name: r'theme',
      type: IsarType.string,
    ),
    r'username': PropertySchema(
      id: 12,
      name: r'username',
      type: IsarType.string,
    )
  },
  estimateSize: _userEntityEstimateSize,
  serialize: _userEntitySerialize,
  deserialize: _userEntityDeserialize,
  deserializeProp: _userEntityDeserializeProp,
  idName: r'lid',
  indexes: {},
  links: {},
  embeddedSchemas: {r'MediaSource': MediaSourceSchema},
  getId: _userEntityGetId,
  getLinks: _userEntityGetLinks,
  attach: _userEntityAttach,
  version: '3.1.0+1',
);

int _userEntityEstimateSize(
  UserEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.bio;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.coverUrl;
    if (value != null) {
      bytesCount += 3 +
          MediaSourceSchema.estimateSize(
              value, allOffsets[MediaSource]!, allOffsets);
    }
  }
  {
    final value = object.firstName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.id;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.imageUrl;
    if (value != null) {
      bytesCount += 3 +
          MediaSourceSchema.estimateSize(
              value, allOffsets[MediaSource]!, allOffsets);
    }
  }
  {
    final value = object.lastName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.theme;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.username;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _userEntitySerialize(
  UserEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.bio);
  writer.writeObject<MediaSource>(
    offsets[1],
    allOffsets,
    MediaSourceSchema.serialize,
    object.coverUrl,
  );
  writer.writeString(offsets[2], object.firstName);
  writer.writeString(offsets[3], object.id);
  writer.writeObject<MediaSource>(
    offsets[4],
    allOffsets,
    MediaSourceSchema.serialize,
    object.imageUrl,
  );
  writer.writeBool(offsets[5], object.isBeta);
  writer.writeBool(offsets[6], object.isBot);
  writer.writeBool(offsets[7], object.isMod);
  writer.writeBool(offsets[8], object.isStaff);
  writer.writeBool(offsets[9], object.isVerified);
  writer.writeString(offsets[10], object.lastName);
  writer.writeString(offsets[11], object.theme);
  writer.writeString(offsets[12], object.username);
}

UserEntity _userEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = UserEntity(
    bio: reader.readStringOrNull(offsets[0]),
    coverUrl: reader.readObjectOrNull<MediaSource>(
      offsets[1],
      MediaSourceSchema.deserialize,
      allOffsets,
    ),
    firstName: reader.readStringOrNull(offsets[2]),
    id: reader.readStringOrNull(offsets[3]),
    imageUrl: reader.readObjectOrNull<MediaSource>(
      offsets[4],
      MediaSourceSchema.deserialize,
      allOffsets,
    ),
    isBeta: reader.readBoolOrNull(offsets[5]),
    isBot: reader.readBoolOrNull(offsets[6]),
    isMod: reader.readBoolOrNull(offsets[7]),
    isStaff: reader.readBoolOrNull(offsets[8]),
    isVerified: reader.readBoolOrNull(offsets[9]),
    lastName: reader.readStringOrNull(offsets[10]),
    theme: reader.readStringOrNull(offsets[11]),
    username: reader.readStringOrNull(offsets[12]),
  );
  object.lid = id;
  return object;
}

P _userEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readObjectOrNull<MediaSource>(
        offset,
        MediaSourceSchema.deserialize,
        allOffsets,
      )) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readObjectOrNull<MediaSource>(
        offset,
        MediaSourceSchema.deserialize,
        allOffsets,
      )) as P;
    case 5:
      return (reader.readBoolOrNull(offset)) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readBoolOrNull(offset)) as P;
    case 9:
      return (reader.readBoolOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringOrNull(offset)) as P;
    case 12:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _userEntityGetId(UserEntity object) {
  return object.lid ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _userEntityGetLinks(UserEntity object) {
  return [];
}

void _userEntityAttach(IsarCollection<dynamic> col, Id id, UserEntity object) {
  object.lid = id;
}

extension UserEntityQueryWhereSort
    on QueryBuilder<UserEntity, UserEntity, QWhere> {
  QueryBuilder<UserEntity, UserEntity, QAfterWhere> anyLid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension UserEntityQueryWhere
    on QueryBuilder<UserEntity, UserEntity, QWhereClause> {
  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> lidEqualTo(Id lid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lid,
        upper: lid,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> lidNotEqualTo(
      Id lid) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: lid, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: lid, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: lid, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: lid, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> lidGreaterThan(Id lid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: lid, includeLower: include),
      );
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> lidLessThan(Id lid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: lid, includeUpper: include),
      );
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterWhereClause> lidBetween(
    Id lowerLid,
    Id upperLid, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerLid,
        includeLower: includeLower,
        upper: upperLid,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension UserEntityQueryFilter
    on QueryBuilder<UserEntity, UserEntity, QFilterCondition> {
  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'bio',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'bio',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'bio',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'bio',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'bio',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'bio',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> bioIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'bio',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> coverUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'coverUrl',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      coverUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'coverUrl',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      firstNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      firstNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'firstName',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> firstNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      firstNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> firstNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> firstNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'firstName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      firstNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> firstNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> firstNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'firstName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> firstNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'firstName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      firstNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      firstNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'firstName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'id',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'id',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> imageUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      imageUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'imageUrl',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isBetaIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isBeta',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      isBetaIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isBeta',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isBetaEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBeta',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isBotIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isBot',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isBotIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isBot',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isBotEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isBot',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isModIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isMod',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isModIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isMod',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isModEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isMod',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isStaffIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isStaff',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      isStaffIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isStaff',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isStaffEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isStaff',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      isVerifiedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isVerified',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      isVerifiedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isVerified',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> isVerifiedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isVerified',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lastNameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      lastNameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lastName',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lastNameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      lastNameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lastNameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lastNameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lastName',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      lastNameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lastNameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lastNameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'lastName',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lastNameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'lastName',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      lastNameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      lastNameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'lastName',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lid',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lid',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lidEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lid',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lidGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'lid',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lidLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'lid',
        value: value,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> lidBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'lid',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'theme',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'theme',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'theme',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'theme',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'theme',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> themeIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'theme',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      themeIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'theme',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> usernameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'username',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      usernameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'username',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> usernameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      usernameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> usernameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> usernameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'username',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      usernameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> usernameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> usernameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'username',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> usernameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'username',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      usernameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'username',
        value: '',
      ));
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition>
      usernameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'username',
        value: '',
      ));
    });
  }
}

extension UserEntityQueryObject
    on QueryBuilder<UserEntity, UserEntity, QFilterCondition> {
  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> coverUrl(
      FilterQuery<MediaSource> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'coverUrl');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterFilterCondition> imageUrl(
      FilterQuery<MediaSource> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'imageUrl');
    });
  }
}

extension UserEntityQueryLinks
    on QueryBuilder<UserEntity, UserEntity, QFilterCondition> {}

extension UserEntityQuerySortBy
    on QueryBuilder<UserEntity, UserEntity, QSortBy> {
  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByBio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByBioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsBeta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBeta', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsBetaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBeta', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsBot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBot', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsBotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBot', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsMod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMod', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsModDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMod', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsStaff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isStaff', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsStaffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isStaff', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVerified', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByIsVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVerified', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> sortByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension UserEntityQuerySortThenBy
    on QueryBuilder<UserEntity, UserEntity, QSortThenBy> {
  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByBio() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByBioDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'bio', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByFirstName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByFirstNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'firstName', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsBeta() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBeta', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsBetaDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBeta', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsBot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBot', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsBotDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isBot', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsMod() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMod', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsModDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isMod', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsStaff() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isStaff', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsStaffDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isStaff', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVerified', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByIsVerifiedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isVerified', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByLastName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByLastNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lastName', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByLid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lid', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByLidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lid', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByTheme() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByThemeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'theme', Sort.desc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByUsername() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.asc);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QAfterSortBy> thenByUsernameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'username', Sort.desc);
    });
  }
}

extension UserEntityQueryWhereDistinct
    on QueryBuilder<UserEntity, UserEntity, QDistinct> {
  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByBio(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'bio', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByFirstName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'firstName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByIsBeta() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBeta');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByIsBot() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isBot');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByIsMod() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isMod');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByIsStaff() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isStaff');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByIsVerified() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isVerified');
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByLastName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'lastName', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByTheme(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'theme', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<UserEntity, UserEntity, QDistinct> distinctByUsername(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'username', caseSensitive: caseSensitive);
    });
  }
}

extension UserEntityQueryProperty
    on QueryBuilder<UserEntity, UserEntity, QQueryProperty> {
  QueryBuilder<UserEntity, int, QQueryOperations> lidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lid');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> bioProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'bio');
    });
  }

  QueryBuilder<UserEntity, MediaSource?, QQueryOperations> coverUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'coverUrl');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> firstNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'firstName');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<UserEntity, MediaSource?, QQueryOperations> imageUrlProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'imageUrl');
    });
  }

  QueryBuilder<UserEntity, bool?, QQueryOperations> isBetaProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBeta');
    });
  }

  QueryBuilder<UserEntity, bool?, QQueryOperations> isBotProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isBot');
    });
  }

  QueryBuilder<UserEntity, bool?, QQueryOperations> isModProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isMod');
    });
  }

  QueryBuilder<UserEntity, bool?, QQueryOperations> isStaffProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isStaff');
    });
  }

  QueryBuilder<UserEntity, bool?, QQueryOperations> isVerifiedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isVerified');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> lastNameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lastName');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> themeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'theme');
    });
  }

  QueryBuilder<UserEntity, String?, QQueryOperations> usernameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'username');
    });
  }
}
