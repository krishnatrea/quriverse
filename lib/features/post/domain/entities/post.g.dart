// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPostEntityCollection on Isar {
  IsarCollection<PostEntity> get postEntitys => this.collection();
}

const PostEntitySchema = CollectionSchema(
  name: r'PostEntity',
  id: -5637737317411837265,
  properties: {
    r'commentsCount': PropertySchema(
      id: 0,
      name: r'commentsCount',
      type: IsarType.long,
    ),
    r'content': PropertySchema(
      id: 1,
      name: r'content',
      type: IsarType.string,
    ),
    r'createdAt': PropertySchema(
      id: 2,
      name: r'createdAt',
      type: IsarType.long,
    ),
    r'description': PropertySchema(
      id: 3,
      name: r'description',
      type: IsarType.string,
    ),
    r'id': PropertySchema(
      id: 4,
      name: r'id',
      type: IsarType.string,
    ),
    r'images': PropertySchema(
      id: 5,
      name: r'images',
      type: IsarType.objectList,
      target: r'PostImage',
    ),
    r'isDeleted': PropertySchema(
      id: 6,
      name: r'isDeleted',
      type: IsarType.bool,
    ),
    r'isLiked': PropertySchema(
      id: 7,
      name: r'isLiked',
      type: IsarType.bool,
    ),
    r'likesCount': PropertySchema(
      id: 8,
      name: r'likesCount',
      type: IsarType.long,
    ),
    r'quotesCount': PropertySchema(
      id: 9,
      name: r'quotesCount',
      type: IsarType.long,
    ),
    r'requotedId': PropertySchema(
      id: 10,
      name: r'requotedId',
      type: IsarType.string,
    ),
    r'tags': PropertySchema(
      id: 11,
      name: r'tags',
      type: IsarType.stringList,
    ),
    r'type': PropertySchema(
      id: 12,
      name: r'type',
      type: IsarType.int,
      enumMap: _PostEntitytypeEnumValueMap,
    ),
    r'userId': PropertySchema(
      id: 13,
      name: r'userId',
      type: IsarType.string,
    ),
    r'video': PropertySchema(
      id: 14,
      name: r'video',
      type: IsarType.object,
      target: r'PostVideo',
    )
  },
  estimateSize: _postEntityEstimateSize,
  serialize: _postEntitySerialize,
  deserialize: _postEntityDeserialize,
  deserializeProp: _postEntityDeserializeProp,
  idName: r'lid',
  indexes: {},
  links: {},
  embeddedSchemas: {
    r'PostImage': PostImageSchema,
    r'MediaSource': MediaSourceSchema,
    r'PostVideo': PostVideoSchema
  },
  getId: _postEntityGetId,
  getLinks: _postEntityGetLinks,
  attach: _postEntityAttach,
  version: '3.1.0+1',
);

int _postEntityEstimateSize(
  PostEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.content;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.description;
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
    final list = object.images;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        final offsets = allOffsets[PostImage]!;
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount +=
              PostImageSchema.estimateSize(value, offsets, allOffsets);
        }
      }
    }
  }
  {
    final value = object.requotedId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final list = object.tags;
    if (list != null) {
      bytesCount += 3 + list.length * 3;
      {
        for (var i = 0; i < list.length; i++) {
          final value = list[i];
          bytesCount += value.length * 3;
        }
      }
    }
  }
  {
    final value = object.userId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.video;
    if (value != null) {
      bytesCount += 3 +
          PostVideoSchema.estimateSize(
              value, allOffsets[PostVideo]!, allOffsets);
    }
  }
  return bytesCount;
}

void _postEntitySerialize(
  PostEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.commentsCount);
  writer.writeString(offsets[1], object.content);
  writer.writeLong(offsets[2], object.createdAt);
  writer.writeString(offsets[3], object.description);
  writer.writeString(offsets[4], object.id);
  writer.writeObjectList<PostImage>(
    offsets[5],
    allOffsets,
    PostImageSchema.serialize,
    object.images,
  );
  writer.writeBool(offsets[6], object.isDeleted);
  writer.writeBool(offsets[7], object.isLiked);
  writer.writeLong(offsets[8], object.likesCount);
  writer.writeLong(offsets[9], object.quotesCount);
  writer.writeString(offsets[10], object.requotedId);
  writer.writeStringList(offsets[11], object.tags);
  writer.writeInt(offsets[12], object.type?.myValue);
  writer.writeString(offsets[13], object.userId);
  writer.writeObject<PostVideo>(
    offsets[14],
    allOffsets,
    PostVideoSchema.serialize,
    object.video,
  );
}

PostEntity _postEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PostEntity(
    commentsCount: reader.readLongOrNull(offsets[0]),
    content: reader.readStringOrNull(offsets[1]),
    createdAt: reader.readLongOrNull(offsets[2]),
    description: reader.readStringOrNull(offsets[3]),
    id: reader.readStringOrNull(offsets[4]),
    images: reader.readObjectList<PostImage>(
      offsets[5],
      PostImageSchema.deserialize,
      allOffsets,
      PostImage(),
    ),
    isDeleted: reader.readBoolOrNull(offsets[6]),
    isLiked: reader.readBoolOrNull(offsets[7]),
    likesCount: reader.readLongOrNull(offsets[8]),
    quotesCount: reader.readLongOrNull(offsets[9]),
    requotedId: reader.readStringOrNull(offsets[10]),
    tags: reader.readStringList(offsets[11]),
    type: _PostEntitytypeValueEnumMap[reader.readIntOrNull(offsets[12])],
    userId: reader.readStringOrNull(offsets[13]),
    video: reader.readObjectOrNull<PostVideo>(
      offsets[14],
      PostVideoSchema.deserialize,
      allOffsets,
    ),
  );
  object.lid = id;
  return object;
}

P _postEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readObjectList<PostImage>(
        offset,
        PostImageSchema.deserialize,
        allOffsets,
        PostImage(),
      )) as P;
    case 6:
      return (reader.readBoolOrNull(offset)) as P;
    case 7:
      return (reader.readBoolOrNull(offset)) as P;
    case 8:
      return (reader.readLongOrNull(offset)) as P;
    case 9:
      return (reader.readLongOrNull(offset)) as P;
    case 10:
      return (reader.readStringOrNull(offset)) as P;
    case 11:
      return (reader.readStringList(offset)) as P;
    case 12:
      return (_PostEntitytypeValueEnumMap[reader.readIntOrNull(offset)]) as P;
    case 13:
      return (reader.readStringOrNull(offset)) as P;
    case 14:
      return (reader.readObjectOrNull<PostVideo>(
        offset,
        PostVideoSchema.deserialize,
        allOffsets,
      )) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _PostEntitytypeEnumValueMap = {
  'IMAGES': 1,
  'VIDEO': 2,
  'STREAM': 3,
  'QUOTE': 4,
  'MICRO': 5,
  'BLOG': 6,
  'LINK': 7,
  'POLLS': 8,
  'SLICE': 9,
};
const _PostEntitytypeValueEnumMap = {
  1: PostType.IMAGES,
  2: PostType.VIDEO,
  3: PostType.STREAM,
  4: PostType.QUOTE,
  5: PostType.MICRO,
  6: PostType.BLOG,
  7: PostType.LINK,
  8: PostType.POLLS,
  9: PostType.SLICE,
};

Id _postEntityGetId(PostEntity object) {
  return object.lid ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _postEntityGetLinks(PostEntity object) {
  return [];
}

void _postEntityAttach(IsarCollection<dynamic> col, Id id, PostEntity object) {
  object.lid = id;
}

extension PostEntityQueryWhereSort
    on QueryBuilder<PostEntity, PostEntity, QWhere> {
  QueryBuilder<PostEntity, PostEntity, QAfterWhere> anyLid() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PostEntityQueryWhere
    on QueryBuilder<PostEntity, PostEntity, QWhereClause> {
  QueryBuilder<PostEntity, PostEntity, QAfterWhereClause> lidEqualTo(Id lid) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lid,
        upper: lid,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterWhereClause> lidNotEqualTo(
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

  QueryBuilder<PostEntity, PostEntity, QAfterWhereClause> lidGreaterThan(Id lid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: lid, includeLower: include),
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterWhereClause> lidLessThan(Id lid,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: lid, includeUpper: include),
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterWhereClause> lidBetween(
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

extension PostEntityQueryFilter
    on QueryBuilder<PostEntity, PostEntity, QFilterCondition> {
  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      commentsCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'commentsCount',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      commentsCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'commentsCount',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      commentsCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'commentsCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      commentsCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'commentsCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      commentsCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'commentsCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      commentsCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'commentsCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'content',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      contentIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'content',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      contentGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'content',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'content',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'content',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> contentIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      contentIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'content',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      createdAtIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      createdAtIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'createdAt',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> createdAtEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      createdAtGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> createdAtLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'createdAt',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> createdAtBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'createdAt',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'description',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'description',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'description',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'description',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      descriptionIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'description',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'id',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idEqualTo(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idBetween(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idStartsWith(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idEndsWith(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idContains(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idMatches(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> idIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'id',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> imagesIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'images',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      imagesIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'images',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      imagesLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> imagesIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      imagesIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      imagesLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      imagesLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      imagesLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'images',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      isDeletedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      isDeletedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isDeleted',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> isDeletedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isDeleted',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> isLikedIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isLiked',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      isLikedIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isLiked',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> isLikedEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isLiked',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> lidIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'lid',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> lidIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'lid',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> lidEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'lid',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> lidGreaterThan(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> lidLessThan(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> lidBetween(
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

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      likesCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'likesCount',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      likesCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'likesCount',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> likesCountEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'likesCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      likesCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'likesCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      likesCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'likesCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> likesCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'likesCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      quotesCountIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'quotesCount',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      quotesCountIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'quotesCount',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      quotesCountEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'quotesCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      quotesCountGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'quotesCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      quotesCountLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'quotesCount',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      quotesCountBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'quotesCount',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'requotedId',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'requotedId',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> requotedIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'requotedId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'requotedId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'requotedId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> requotedIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'requotedId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'requotedId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'requotedId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'requotedId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> requotedIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'requotedId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'requotedId',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      requotedIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'requotedId',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> tagsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'tags',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> tagsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'tags',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tags',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tags',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tags',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tags',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> tagsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> tagsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> tagsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      tagsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> tagsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'tags',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> typeIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> typeIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'type',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> typeEqualTo(
      PostType? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> typeGreaterThan(
    PostType? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> typeLessThan(
    PostType? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'type',
        value: value,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> typeBetween(
    PostType? lower,
    PostType? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'type',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      userIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'userId',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'userId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'userId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> userIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition>
      userIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'userId',
        value: '',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> videoIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'video',
      ));
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> videoIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'video',
      ));
    });
  }
}

extension PostEntityQueryObject
    on QueryBuilder<PostEntity, PostEntity, QFilterCondition> {
  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> imagesElement(
      FilterQuery<PostImage> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'images');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterFilterCondition> video(
      FilterQuery<PostVideo> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'video');
    });
  }
}

extension PostEntityQueryLinks
    on QueryBuilder<PostEntity, PostEntity, QFilterCondition> {}

extension PostEntityQuerySortBy
    on QueryBuilder<PostEntity, PostEntity, QSortBy> {
  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByCommentsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsCount', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByCommentsCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsCount', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByIsLiked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLiked', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByIsLikedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLiked', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likesCount', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByLikesCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likesCount', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByQuotesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quotesCount', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByQuotesCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quotesCount', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByRequotedId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requotedId', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByRequotedIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requotedId', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> sortByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PostEntityQuerySortThenBy
    on QueryBuilder<PostEntity, PostEntity, QSortThenBy> {
  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByCommentsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsCount', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByCommentsCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'commentsCount', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByContent() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByContentDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'content', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByCreatedAtDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'createdAt', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByDescription() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByDescriptionDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'description', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByIsDeletedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isDeleted', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByIsLiked() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLiked', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByIsLikedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isLiked', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByLid() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lid', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByLidDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'lid', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likesCount', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByLikesCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'likesCount', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByQuotesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quotesCount', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByQuotesCountDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'quotesCount', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByRequotedId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requotedId', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByRequotedIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'requotedId', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByTypeDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'type', Sort.desc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByUserId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.asc);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QAfterSortBy> thenByUserIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'userId', Sort.desc);
    });
  }
}

extension PostEntityQueryWhereDistinct
    on QueryBuilder<PostEntity, PostEntity, QDistinct> {
  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByCommentsCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'commentsCount');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByContent(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'content', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByCreatedAt() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'createdAt');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByDescription(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'description', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctById(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'id', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByIsDeleted() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isDeleted');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByIsLiked() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'isLiked');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByLikesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'likesCount');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByQuotesCount() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'quotesCount');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByRequotedId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'requotedId', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByTags() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tags');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByType() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'type');
    });
  }

  QueryBuilder<PostEntity, PostEntity, QDistinct> distinctByUserId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'userId', caseSensitive: caseSensitive);
    });
  }
}

extension PostEntityQueryProperty
    on QueryBuilder<PostEntity, PostEntity, QQueryProperty> {
  QueryBuilder<PostEntity, int, QQueryOperations> lidProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'lid');
    });
  }

  QueryBuilder<PostEntity, int?, QQueryOperations> commentsCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'commentsCount');
    });
  }

  QueryBuilder<PostEntity, String?, QQueryOperations> contentProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'content');
    });
  }

  QueryBuilder<PostEntity, int?, QQueryOperations> createdAtProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'createdAt');
    });
  }

  QueryBuilder<PostEntity, String?, QQueryOperations> descriptionProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'description');
    });
  }

  QueryBuilder<PostEntity, String?, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<PostEntity, List<PostImage>?, QQueryOperations>
      imagesProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'images');
    });
  }

  QueryBuilder<PostEntity, bool?, QQueryOperations> isDeletedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isDeleted');
    });
  }

  QueryBuilder<PostEntity, bool?, QQueryOperations> isLikedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isLiked');
    });
  }

  QueryBuilder<PostEntity, int?, QQueryOperations> likesCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'likesCount');
    });
  }

  QueryBuilder<PostEntity, int?, QQueryOperations> quotesCountProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'quotesCount');
    });
  }

  QueryBuilder<PostEntity, String?, QQueryOperations> requotedIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'requotedId');
    });
  }

  QueryBuilder<PostEntity, List<String>?, QQueryOperations> tagsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tags');
    });
  }

  QueryBuilder<PostEntity, PostType?, QQueryOperations> typeProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'type');
    });
  }

  QueryBuilder<PostEntity, String?, QQueryOperations> userIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'userId');
    });
  }

  QueryBuilder<PostEntity, PostVideo?, QQueryOperations> videoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'video');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PostImageSchema = Schema(
  name: r'PostImage',
  id: -4923367908650640661,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'mediaHeight': PropertySchema(
      id: 1,
      name: r'mediaHeight',
      type: IsarType.double,
    ),
    r'mediaUrl': PropertySchema(
      id: 2,
      name: r'mediaUrl',
      type: IsarType.object,
      target: r'MediaSource',
    ),
    r'mediaWidth': PropertySchema(
      id: 3,
      name: r'mediaWidth',
      type: IsarType.double,
    )
  },
  estimateSize: _postImageEstimateSize,
  serialize: _postImageSerialize,
  deserialize: _postImageDeserialize,
  deserializeProp: _postImageDeserializeProp,
);

int _postImageEstimateSize(
  PostImage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.mediaUrl;
    if (value != null) {
      bytesCount += 3 +
          MediaSourceSchema.estimateSize(
              value, allOffsets[MediaSource]!, allOffsets);
    }
  }
  return bytesCount;
}

void _postImageSerialize(
  PostImage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeDouble(offsets[1], object.mediaHeight);
  writer.writeObject<MediaSource>(
    offsets[2],
    allOffsets,
    MediaSourceSchema.serialize,
    object.mediaUrl,
  );
  writer.writeDouble(offsets[3], object.mediaWidth);
}

PostImage _postImageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PostImage(
    mediaHeight: reader.readDoubleOrNull(offsets[1]),
    mediaUrl: reader.readObjectOrNull<MediaSource>(
      offsets[2],
      MediaSourceSchema.deserialize,
      allOffsets,
    ),
    mediaWidth: reader.readDoubleOrNull(offsets[3]),
  );
  return object;
}

P _postImageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readDoubleOrNull(offset)) as P;
    case 2:
      return (reader.readObjectOrNull<MediaSource>(
        offset,
        MediaSourceSchema.deserialize,
        allOffsets,
      )) as P;
    case 3:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PostImageQueryFilter
    on QueryBuilder<PostImage, PostImage, QFilterCondition> {
  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition>
      mediaHeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaHeight',
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition>
      mediaHeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaHeight',
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaHeightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition>
      mediaHeightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaHeightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaHeightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaUrl',
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition>
      mediaUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaUrl',
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaWidthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaWidth',
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition>
      mediaWidthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaWidth',
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaWidthEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition>
      mediaWidthGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaWidthLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaWidthBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaWidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension PostImageQueryObject
    on QueryBuilder<PostImage, PostImage, QFilterCondition> {
  QueryBuilder<PostImage, PostImage, QAfterFilterCondition> mediaUrl(
      FilterQuery<MediaSource> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'mediaUrl');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const PostVideoSchema = Schema(
  name: r'PostVideo',
  id: -6642458308100996163,
  properties: {
    r'hashCode': PropertySchema(
      id: 0,
      name: r'hashCode',
      type: IsarType.long,
    ),
    r'isHls': PropertySchema(
      id: 1,
      name: r'isHls',
      type: IsarType.bool,
    ),
    r'mediaHeight': PropertySchema(
      id: 2,
      name: r'mediaHeight',
      type: IsarType.double,
    ),
    r'mediaUrl': PropertySchema(
      id: 3,
      name: r'mediaUrl',
      type: IsarType.object,
      target: r'MediaSource',
    ),
    r'mediaWidth': PropertySchema(
      id: 4,
      name: r'mediaWidth',
      type: IsarType.double,
    )
  },
  estimateSize: _postVideoEstimateSize,
  serialize: _postVideoSerialize,
  deserialize: _postVideoDeserialize,
  deserializeProp: _postVideoDeserializeProp,
);

int _postVideoEstimateSize(
  PostVideo object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.mediaUrl;
    if (value != null) {
      bytesCount += 3 +
          MediaSourceSchema.estimateSize(
              value, allOffsets[MediaSource]!, allOffsets);
    }
  }
  return bytesCount;
}

void _postVideoSerialize(
  PostVideo object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.hashCode);
  writer.writeBool(offsets[1], object.isHls);
  writer.writeDouble(offsets[2], object.mediaHeight);
  writer.writeObject<MediaSource>(
    offsets[3],
    allOffsets,
    MediaSourceSchema.serialize,
    object.mediaUrl,
  );
  writer.writeDouble(offsets[4], object.mediaWidth);
}

PostVideo _postVideoDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = PostVideo(
    isHls: reader.readBoolOrNull(offsets[1]),
    mediaHeight: reader.readDoubleOrNull(offsets[2]),
    mediaUrl: reader.readObjectOrNull<MediaSource>(
      offsets[3],
      MediaSourceSchema.deserialize,
      allOffsets,
    ),
    mediaWidth: reader.readDoubleOrNull(offsets[4]),
  );
  return object;
}

P _postVideoDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readBoolOrNull(offset)) as P;
    case 2:
      return (reader.readDoubleOrNull(offset)) as P;
    case 3:
      return (reader.readObjectOrNull<MediaSource>(
        offset,
        MediaSourceSchema.deserialize,
        allOffsets,
      )) as P;
    case 4:
      return (reader.readDoubleOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension PostVideoQueryFilter
    on QueryBuilder<PostVideo, PostVideo, QFilterCondition> {
  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> hashCodeEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> hashCodeGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> hashCodeLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'hashCode',
        value: value,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> hashCodeBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'hashCode',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> isHlsIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isHls',
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> isHlsIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isHls',
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> isHlsEqualTo(
      bool? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isHls',
        value: value,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition>
      mediaHeightIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaHeight',
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition>
      mediaHeightIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaHeight',
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaHeightEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition>
      mediaHeightGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaHeightLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaHeight',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaHeightBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaHeight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaUrlIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaUrl',
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition>
      mediaUrlIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaUrl',
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaWidthIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'mediaWidth',
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition>
      mediaWidthIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'mediaWidth',
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaWidthEqualTo(
    double? value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mediaWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition>
      mediaWidthGreaterThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mediaWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaWidthLessThan(
    double? value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mediaWidth',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaWidthBetween(
    double? lower,
    double? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mediaWidth',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }
}

extension PostVideoQueryObject
    on QueryBuilder<PostVideo, PostVideo, QFilterCondition> {
  QueryBuilder<PostVideo, PostVideo, QAfterFilterCondition> mediaUrl(
      FilterQuery<MediaSource> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'mediaUrl');
    });
  }
}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const MediaSourceSchema = Schema(
  name: r'MediaSource',
  id: -4531406466596137239,
  properties: {
    r'source': PropertySchema(
      id: 0,
      name: r'source',
      type: IsarType.string,
    ),
    r'thumbnail': PropertySchema(
      id: 1,
      name: r'thumbnail',
      type: IsarType.string,
    )
  },
  estimateSize: _mediaSourceEstimateSize,
  serialize: _mediaSourceSerialize,
  deserialize: _mediaSourceDeserialize,
  deserializeProp: _mediaSourceDeserializeProp,
);

int _mediaSourceEstimateSize(
  MediaSource object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.source;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.thumbnail;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _mediaSourceSerialize(
  MediaSource object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.source);
  writer.writeString(offsets[1], object.thumbnail);
}

MediaSource _mediaSourceDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = MediaSource(
    source: reader.readStringOrNull(offsets[0]),
    thumbnail: reader.readStringOrNull(offsets[1]),
  );
  return object;
}

P _mediaSourceDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension MediaSourceQueryFilter
    on QueryBuilder<MediaSource, MediaSource, QFilterCondition> {
  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition> sourceIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      sourceIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'source',
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition> sourceEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      sourceGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition> sourceLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition> sourceBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'source',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      sourceStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition> sourceEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition> sourceContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'source',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition> sourceMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'source',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      sourceIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'source',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      sourceIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'source',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'thumbnail',
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'thumbnail',
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'thumbnail',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'thumbnail',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'thumbnail',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'thumbnail',
        value: '',
      ));
    });
  }

  QueryBuilder<MediaSource, MediaSource, QAfterFilterCondition>
      thumbnailIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'thumbnail',
        value: '',
      ));
    });
  }
}

extension MediaSourceQueryObject
    on QueryBuilder<MediaSource, MediaSource, QFilterCondition> {}
