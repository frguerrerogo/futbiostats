// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'athlete.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetAthleteCollection on Isar {
  IsarCollection<Athlete> get athletes => this.collection();
}

const AthleteSchema = CollectionSchema(
  name: r'Athlete',
  id: 6386904496293942511,
  properties: {
    r'birthdate': PropertySchema(
      id: 0,
      name: r'birthdate',
      type: IsarType.dateTime,
    ),
    r'height': PropertySchema(
      id: 1,
      name: r'height',
      type: IsarType.double,
    ),
    r'image': PropertySchema(
      id: 2,
      name: r'image',
      type: IsarType.string,
    ),
    r'informaScout': PropertySchema(
      id: 3,
      name: r'informaScout',
      type: IsarType.string,
    ),
    r'injuryRecord': PropertySchema(
      id: 4,
      name: r'injuryRecord',
      type: IsarType.stringList,
    ),
    r'name': PropertySchema(
      id: 5,
      name: r'name',
      type: IsarType.string,
    ),
    r'nationality': PropertySchema(
      id: 6,
      name: r'nationality',
      type: IsarType.string,
    ),
    r'positions': PropertySchema(
      id: 7,
      name: r'positions',
      type: IsarType.stringList,
    ),
    r'skilledFoot': PropertySchema(
      id: 8,
      name: r'skilledFoot',
      type: IsarType.byte,
      enumMap: _AthleteskilledFootEnumValueMap,
    ),
    r'skills': PropertySchema(
      id: 9,
      name: r'skills',
      type: IsarType.objectList,
      target: r'Skill',
    ),
    r'statistics': PropertySchema(
      id: 10,
      name: r'statistics',
      type: IsarType.object,
      target: r'Statistics',
    ),
    r'tournamentsPlayed': PropertySchema(
      id: 11,
      name: r'tournamentsPlayed',
      type: IsarType.string,
    ),
    r'trajectory': PropertySchema(
      id: 12,
      name: r'trajectory',
      type: IsarType.stringList,
    ),
    r'value': PropertySchema(
      id: 13,
      name: r'value',
      type: IsarType.long,
    ),
    r'weight': PropertySchema(
      id: 14,
      name: r'weight',
      type: IsarType.long,
    )
  },
  estimateSize: _athleteEstimateSize,
  serialize: _athleteSerialize,
  deserialize: _athleteDeserialize,
  deserializeProp: _athleteDeserializeProp,
  idName: r'isarId',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Skill': SkillSchema, r'Statistics': StatisticsSchema},
  getId: _athleteGetId,
  getLinks: _athleteGetLinks,
  attach: _athleteAttach,
  version: '3.1.0+1',
);

int _athleteEstimateSize(
  Athlete object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.image.length * 3;
  bytesCount += 3 + object.informaScout.length * 3;
  bytesCount += 3 + object.injuryRecord.length * 3;
  {
    for (var i = 0; i < object.injuryRecord.length; i++) {
      final value = object.injuryRecord[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.name.length * 3;
  bytesCount += 3 + object.nationality.length * 3;
  bytesCount += 3 + object.positions.length * 3;
  {
    for (var i = 0; i < object.positions.length; i++) {
      final value = object.positions[i];
      bytesCount += value.length * 3;
    }
  }
  bytesCount += 3 + object.skills.length * 3;
  {
    final offsets = allOffsets[Skill]!;
    for (var i = 0; i < object.skills.length; i++) {
      final value = object.skills[i];
      bytesCount += SkillSchema.estimateSize(value, offsets, allOffsets);
    }
  }
  bytesCount += 3 +
      StatisticsSchema.estimateSize(
          object.statistics, allOffsets[Statistics]!, allOffsets);
  bytesCount += 3 + object.tournamentsPlayed.length * 3;
  bytesCount += 3 + object.trajectory.length * 3;
  {
    for (var i = 0; i < object.trajectory.length; i++) {
      final value = object.trajectory[i];
      bytesCount += value.length * 3;
    }
  }
  return bytesCount;
}

void _athleteSerialize(
  Athlete object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDateTime(offsets[0], object.birthdate);
  writer.writeDouble(offsets[1], object.height);
  writer.writeString(offsets[2], object.image);
  writer.writeString(offsets[3], object.informaScout);
  writer.writeStringList(offsets[4], object.injuryRecord);
  writer.writeString(offsets[5], object.name);
  writer.writeString(offsets[6], object.nationality);
  writer.writeStringList(offsets[7], object.positions);
  writer.writeByte(offsets[8], object.skilledFoot.index);
  writer.writeObjectList<Skill>(
    offsets[9],
    allOffsets,
    SkillSchema.serialize,
    object.skills,
  );
  writer.writeObject<Statistics>(
    offsets[10],
    allOffsets,
    StatisticsSchema.serialize,
    object.statistics,
  );
  writer.writeString(offsets[11], object.tournamentsPlayed);
  writer.writeStringList(offsets[12], object.trajectory);
  writer.writeLong(offsets[13], object.value);
  writer.writeLong(offsets[14], object.weight);
}

Athlete _athleteDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Athlete(
    birthdate: reader.readDateTime(offsets[0]),
    height: reader.readDouble(offsets[1]),
    image: reader.readString(offsets[2]),
    informaScout: reader.readString(offsets[3]),
    injuryRecord: reader.readStringList(offsets[4]) ?? [],
    name: reader.readString(offsets[5]),
    nationality: reader.readString(offsets[6]),
    positions: reader.readStringList(offsets[7]) ?? [],
    skilledFoot:
        _AthleteskilledFootValueEnumMap[reader.readByteOrNull(offsets[8])] ??
            SkilledFoot.right,
    skills: reader.readObjectList<Skill>(
          offsets[9],
          SkillSchema.deserialize,
          allOffsets,
          Skill(),
        ) ??
        [],
    statistics: reader.readObjectOrNull<Statistics>(
          offsets[10],
          StatisticsSchema.deserialize,
          allOffsets,
        ) ??
        Statistics(),
    tournamentsPlayed: reader.readString(offsets[11]),
    trajectory: reader.readStringList(offsets[12]) ?? [],
    value: reader.readLong(offsets[13]),
    weight: reader.readLong(offsets[14]),
  );
  object.isarId = id;
  return object;
}

P _athleteDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDateTime(offset)) as P;
    case 1:
      return (reader.readDouble(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readStringList(offset) ?? []) as P;
    case 5:
      return (reader.readString(offset)) as P;
    case 6:
      return (reader.readString(offset)) as P;
    case 7:
      return (reader.readStringList(offset) ?? []) as P;
    case 8:
      return (_AthleteskilledFootValueEnumMap[reader.readByteOrNull(offset)] ??
          SkilledFoot.right) as P;
    case 9:
      return (reader.readObjectList<Skill>(
            offset,
            SkillSchema.deserialize,
            allOffsets,
            Skill(),
          ) ??
          []) as P;
    case 10:
      return (reader.readObjectOrNull<Statistics>(
            offset,
            StatisticsSchema.deserialize,
            allOffsets,
          ) ??
          Statistics()) as P;
    case 11:
      return (reader.readString(offset)) as P;
    case 12:
      return (reader.readStringList(offset) ?? []) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

const _AthleteskilledFootEnumValueMap = {
  'right': 0,
  'left': 1,
  'both': 2,
};
const _AthleteskilledFootValueEnumMap = {
  0: SkilledFoot.right,
  1: SkilledFoot.left,
  2: SkilledFoot.both,
};

Id _athleteGetId(Athlete object) {
  return object.isarId ?? Isar.autoIncrement;
}

List<IsarLinkBase<dynamic>> _athleteGetLinks(Athlete object) {
  return [];
}

void _athleteAttach(IsarCollection<dynamic> col, Id id, Athlete object) {
  object.isarId = id;
}

extension AthleteQueryWhereSort on QueryBuilder<Athlete, Athlete, QWhere> {
  QueryBuilder<Athlete, Athlete, QAfterWhere> anyIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension AthleteQueryWhere on QueryBuilder<Athlete, Athlete, QWhereClause> {
  QueryBuilder<Athlete, Athlete, QAfterWhereClause> isarIdEqualTo(Id isarId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: isarId,
        upper: isarId,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterWhereClause> isarIdNotEqualTo(
      Id isarId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: isarId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: isarId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterWhereClause> isarIdGreaterThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: isarId, includeLower: include),
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterWhereClause> isarIdLessThan(Id isarId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: isarId, includeUpper: include),
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterWhereClause> isarIdBetween(
    Id lowerIsarId,
    Id upperIsarId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerIsarId,
        includeLower: includeLower,
        upper: upperIsarId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AthleteQueryFilter
    on QueryBuilder<Athlete, Athlete, QFilterCondition> {
  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> birthdateEqualTo(
      DateTime value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'birthdate',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> birthdateGreaterThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'birthdate',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> birthdateLessThan(
    DateTime value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'birthdate',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> birthdateBetween(
    DateTime lower,
    DateTime upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'birthdate',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> heightEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> heightGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> heightLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'height',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> heightBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'height',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'image',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'image',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'image',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> imageIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'image',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'informaScout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'informaScout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'informaScout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'informaScout',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'informaScout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'informaScout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'informaScout',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'informaScout',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> informaScoutIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'informaScout',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      informaScoutIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'informaScout',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'injuryRecord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'injuryRecord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'injuryRecord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'injuryRecord',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'injuryRecord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'injuryRecord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'injuryRecord',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'injuryRecord',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'injuryRecord',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'injuryRecord',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordLengthEqualTo(int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'injuryRecord',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> injuryRecordIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'injuryRecord',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'injuryRecord',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'injuryRecord',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'injuryRecord',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      injuryRecordLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'injuryRecord',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> isarIdIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> isarIdIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'isarId',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> isarIdEqualTo(
      Id? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> isarIdGreaterThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> isarIdLessThan(
    Id? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'isarId',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> isarIdBetween(
    Id? lower,
    Id? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'isarId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nationality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nationality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nationality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nationality',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nationality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nationality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nationality',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nationality',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> nationalityIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nationality',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      nationalityIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nationality',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> positionsElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'positions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      positionsElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'positions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      positionsElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'positions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> positionsElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'positions',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      positionsElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'positions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      positionsElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'positions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      positionsElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'positions',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> positionsElementMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'positions',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      positionsElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'positions',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      positionsElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'positions',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> positionsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> positionsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> positionsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> positionsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      positionsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> positionsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'positions',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skilledFootEqualTo(
      SkilledFoot value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'skilledFoot',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skilledFootGreaterThan(
    SkilledFoot value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'skilledFoot',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skilledFootLessThan(
    SkilledFoot value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'skilledFoot',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skilledFootBetween(
    SkilledFoot lower,
    SkilledFoot upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'skilledFoot',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skillsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skillsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skillsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skillsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skillsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skillsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'skills',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tournamentsPlayed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'tournamentsPlayed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'tournamentsPlayed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'tournamentsPlayed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'tournamentsPlayed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'tournamentsPlayed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'tournamentsPlayed',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'tournamentsPlayed',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'tournamentsPlayed',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      tournamentsPlayedIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'tournamentsPlayed',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trajectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'trajectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'trajectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'trajectory',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'trajectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'trajectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'trajectory',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'trajectory',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'trajectory',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryElementIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'trajectory',
        value: '',
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> trajectoryLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'trajectory',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> trajectoryIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'trajectory',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> trajectoryIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'trajectory',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'trajectory',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition>
      trajectoryLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'trajectory',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> trajectoryLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'trajectory',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> valueEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> valueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> valueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> valueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> weightEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> weightGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> weightLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'weight',
        value: value,
      ));
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> weightBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'weight',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension AthleteQueryObject
    on QueryBuilder<Athlete, Athlete, QFilterCondition> {
  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> skillsElement(
      FilterQuery<Skill> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'skills');
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterFilterCondition> statistics(
      FilterQuery<Statistics> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'statistics');
    });
  }
}

extension AthleteQueryLinks
    on QueryBuilder<Athlete, Athlete, QFilterCondition> {}

extension AthleteQuerySortBy on QueryBuilder<Athlete, Athlete, QSortBy> {
  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByBirthdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByBirthdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByInformaScout() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'informaScout', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByInformaScoutDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'informaScout', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByNationality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationality', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByNationalityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationality', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortBySkilledFoot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skilledFoot', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortBySkilledFootDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skilledFoot', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByTournamentsPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tournamentsPlayed', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByTournamentsPlayedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tournamentsPlayed', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> sortByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension AthleteQuerySortThenBy
    on QueryBuilder<Athlete, Athlete, QSortThenBy> {
  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByBirthdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByBirthdateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'birthdate', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByHeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'height', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByImage() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByImageDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'image', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByInformaScout() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'informaScout', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByInformaScoutDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'informaScout', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByIsarId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByIsarIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'isarId', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByName() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByNameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'name', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByNationality() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationality', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByNationalityDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nationality', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenBySkilledFoot() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skilledFoot', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenBySkilledFootDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'skilledFoot', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByTournamentsPlayed() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tournamentsPlayed', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByTournamentsPlayedDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'tournamentsPlayed', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByValueDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'value', Sort.desc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.asc);
    });
  }

  QueryBuilder<Athlete, Athlete, QAfterSortBy> thenByWeightDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'weight', Sort.desc);
    });
  }
}

extension AthleteQueryWhereDistinct
    on QueryBuilder<Athlete, Athlete, QDistinct> {
  QueryBuilder<Athlete, Athlete, QDistinct> distinctByBirthdate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'birthdate');
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByHeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'height');
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByImage(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'image', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByInformaScout(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'informaScout', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByInjuryRecord() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'injuryRecord');
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByName(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'name', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByNationality(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nationality', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByPositions() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'positions');
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctBySkilledFoot() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'skilledFoot');
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByTournamentsPlayed(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'tournamentsPlayed',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByTrajectory() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'trajectory');
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByValue() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'value');
    });
  }

  QueryBuilder<Athlete, Athlete, QDistinct> distinctByWeight() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'weight');
    });
  }
}

extension AthleteQueryProperty
    on QueryBuilder<Athlete, Athlete, QQueryProperty> {
  QueryBuilder<Athlete, int, QQueryOperations> isarIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'isarId');
    });
  }

  QueryBuilder<Athlete, DateTime, QQueryOperations> birthdateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'birthdate');
    });
  }

  QueryBuilder<Athlete, double, QQueryOperations> heightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'height');
    });
  }

  QueryBuilder<Athlete, String, QQueryOperations> imageProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'image');
    });
  }

  QueryBuilder<Athlete, String, QQueryOperations> informaScoutProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'informaScout');
    });
  }

  QueryBuilder<Athlete, List<String>, QQueryOperations> injuryRecordProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'injuryRecord');
    });
  }

  QueryBuilder<Athlete, String, QQueryOperations> nameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'name');
    });
  }

  QueryBuilder<Athlete, String, QQueryOperations> nationalityProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nationality');
    });
  }

  QueryBuilder<Athlete, List<String>, QQueryOperations> positionsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'positions');
    });
  }

  QueryBuilder<Athlete, SkilledFoot, QQueryOperations> skilledFootProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'skilledFoot');
    });
  }

  QueryBuilder<Athlete, List<Skill>, QQueryOperations> skillsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'skills');
    });
  }

  QueryBuilder<Athlete, Statistics, QQueryOperations> statisticsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'statistics');
    });
  }

  QueryBuilder<Athlete, String, QQueryOperations> tournamentsPlayedProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'tournamentsPlayed');
    });
  }

  QueryBuilder<Athlete, List<String>, QQueryOperations> trajectoryProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'trajectory');
    });
  }

  QueryBuilder<Athlete, int, QQueryOperations> valueProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'value');
    });
  }

  QueryBuilder<Athlete, int, QQueryOperations> weightProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'weight');
    });
  }
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const SkillSchema = Schema(
  name: r'Skill',
  id: 4092444674663721600,
  properties: {
    r'name': PropertySchema(
      id: 0,
      name: r'name',
      type: IsarType.string,
    ),
    r'value': PropertySchema(
      id: 1,
      name: r'value',
      type: IsarType.long,
    )
  },
  estimateSize: _skillEstimateSize,
  serialize: _skillSerialize,
  deserialize: _skillDeserialize,
  deserializeProp: _skillDeserializeProp,
);

int _skillEstimateSize(
  Skill object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _skillSerialize(
  Skill object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.name);
  writer.writeLong(offsets[1], object.value);
}

Skill _skillDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Skill();
  object.name = reader.readString(offsets[0]);
  object.value = reader.readLong(offsets[1]);
  return object;
}

P _skillDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension SkillQueryFilter on QueryBuilder<Skill, Skill, QFilterCondition> {
  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'name',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameContains(String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'name',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameMatches(String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'name',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> nameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'name',
        value: '',
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> valueEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> valueGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> valueLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'value',
        value: value,
      ));
    });
  }

  QueryBuilder<Skill, Skill, QAfterFilterCondition> valueBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'value',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension SkillQueryObject on QueryBuilder<Skill, Skill, QFilterCondition> {}

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const StatisticsSchema = Schema(
  name: r'Statistics',
  id: -3012562703602652036,
  properties: {
    r'assists': PropertySchema(
      id: 0,
      name: r'assists',
      type: IsarType.long,
    ),
    r'dribbleSuccessPercentage': PropertySchema(
      id: 1,
      name: r'dribbleSuccessPercentage',
      type: IsarType.long,
    ),
    r'duels': PropertySchema(
      id: 2,
      name: r'duels',
      type: IsarType.long,
    ),
    r'duelsWonPercentage': PropertySchema(
      id: 3,
      name: r'duelsWonPercentage',
      type: IsarType.long,
    ),
    r'foulsCommitted': PropertySchema(
      id: 4,
      name: r'foulsCommitted',
      type: IsarType.long,
    ),
    r'foulsReceived': PropertySchema(
      id: 5,
      name: r'foulsReceived',
      type: IsarType.long,
    ),
    r'goals': PropertySchema(
      id: 6,
      name: r'goals',
      type: IsarType.long,
    ),
    r'matchesPlayed': PropertySchema(
      id: 7,
      name: r'matchesPlayed',
      type: IsarType.long,
    ),
    r'minutesPerGoalAssist': PropertySchema(
      id: 8,
      name: r'minutesPerGoalAssist',
      type: IsarType.double,
    ),
    r'minutesPlayed': PropertySchema(
      id: 9,
      name: r'minutesPlayed',
      type: IsarType.long,
    ),
    r'passAccuracy': PropertySchema(
      id: 10,
      name: r'passAccuracy',
      type: IsarType.long,
    ),
    r'passes': PropertySchema(
      id: 11,
      name: r'passes',
      type: IsarType.long,
    ),
    r'redCards': PropertySchema(
      id: 12,
      name: r'redCards',
      type: IsarType.long,
    ),
    r'shotsOnTarget': PropertySchema(
      id: 13,
      name: r'shotsOnTarget',
      type: IsarType.long,
    ),
    r'yellowCards': PropertySchema(
      id: 14,
      name: r'yellowCards',
      type: IsarType.long,
    )
  },
  estimateSize: _statisticsEstimateSize,
  serialize: _statisticsSerialize,
  deserialize: _statisticsDeserialize,
  deserializeProp: _statisticsDeserializeProp,
);

int _statisticsEstimateSize(
  Statistics object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  return bytesCount;
}

void _statisticsSerialize(
  Statistics object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.assists);
  writer.writeLong(offsets[1], object.dribbleSuccessPercentage);
  writer.writeLong(offsets[2], object.duels);
  writer.writeLong(offsets[3], object.duelsWonPercentage);
  writer.writeLong(offsets[4], object.foulsCommitted);
  writer.writeLong(offsets[5], object.foulsReceived);
  writer.writeLong(offsets[6], object.goals);
  writer.writeLong(offsets[7], object.matchesPlayed);
  writer.writeDouble(offsets[8], object.minutesPerGoalAssist);
  writer.writeLong(offsets[9], object.minutesPlayed);
  writer.writeLong(offsets[10], object.passAccuracy);
  writer.writeLong(offsets[11], object.passes);
  writer.writeLong(offsets[12], object.redCards);
  writer.writeLong(offsets[13], object.shotsOnTarget);
  writer.writeLong(offsets[14], object.yellowCards);
}

Statistics _statisticsDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Statistics();
  object.assists = reader.readLong(offsets[0]);
  object.dribbleSuccessPercentage = reader.readLong(offsets[1]);
  object.duels = reader.readLong(offsets[2]);
  object.duelsWonPercentage = reader.readLong(offsets[3]);
  object.foulsCommitted = reader.readLong(offsets[4]);
  object.foulsReceived = reader.readLong(offsets[5]);
  object.goals = reader.readLong(offsets[6]);
  object.matchesPlayed = reader.readLong(offsets[7]);
  object.minutesPerGoalAssist = reader.readDouble(offsets[8]);
  object.minutesPlayed = reader.readLong(offsets[9]);
  object.passAccuracy = reader.readLong(offsets[10]);
  object.passes = reader.readLong(offsets[11]);
  object.redCards = reader.readLong(offsets[12]);
  object.shotsOnTarget = reader.readLong(offsets[13]);
  object.yellowCards = reader.readLong(offsets[14]);
  return object;
}

P _statisticsDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLong(offset)) as P;
    case 1:
      return (reader.readLong(offset)) as P;
    case 2:
      return (reader.readLong(offset)) as P;
    case 3:
      return (reader.readLong(offset)) as P;
    case 4:
      return (reader.readLong(offset)) as P;
    case 5:
      return (reader.readLong(offset)) as P;
    case 6:
      return (reader.readLong(offset)) as P;
    case 7:
      return (reader.readLong(offset)) as P;
    case 8:
      return (reader.readDouble(offset)) as P;
    case 9:
      return (reader.readLong(offset)) as P;
    case 10:
      return (reader.readLong(offset)) as P;
    case 11:
      return (reader.readLong(offset)) as P;
    case 12:
      return (reader.readLong(offset)) as P;
    case 13:
      return (reader.readLong(offset)) as P;
    case 14:
      return (reader.readLong(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension StatisticsQueryFilter
    on QueryBuilder<Statistics, Statistics, QFilterCondition> {
  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> assistsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'assists',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      assistsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'assists',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> assistsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'assists',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> assistsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'assists',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      dribbleSuccessPercentageEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'dribbleSuccessPercentage',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      dribbleSuccessPercentageGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'dribbleSuccessPercentage',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      dribbleSuccessPercentageLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'dribbleSuccessPercentage',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      dribbleSuccessPercentageBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'dribbleSuccessPercentage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> duelsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duels',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> duelsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duels',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> duelsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duels',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> duelsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duels',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      duelsWonPercentageEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'duelsWonPercentage',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      duelsWonPercentageGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'duelsWonPercentage',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      duelsWonPercentageLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'duelsWonPercentage',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      duelsWonPercentageBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'duelsWonPercentage',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      foulsCommittedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foulsCommitted',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      foulsCommittedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'foulsCommitted',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      foulsCommittedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'foulsCommitted',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      foulsCommittedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'foulsCommitted',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      foulsReceivedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'foulsReceived',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      foulsReceivedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'foulsReceived',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      foulsReceivedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'foulsReceived',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      foulsReceivedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'foulsReceived',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> goalsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'goals',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> goalsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'goals',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> goalsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'goals',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> goalsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'goals',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      matchesPlayedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'matchesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      matchesPlayedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'matchesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      matchesPlayedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'matchesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      matchesPlayedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'matchesPlayed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      minutesPerGoalAssistEqualTo(
    double value, {
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minutesPerGoalAssist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      minutesPerGoalAssistGreaterThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minutesPerGoalAssist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      minutesPerGoalAssistLessThan(
    double value, {
    bool include = false,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minutesPerGoalAssist',
        value: value,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      minutesPerGoalAssistBetween(
    double lower,
    double upper, {
    bool includeLower = true,
    bool includeUpper = true,
    double epsilon = Query.epsilon,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minutesPerGoalAssist',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        epsilon: epsilon,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      minutesPlayedEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'minutesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      minutesPlayedGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'minutesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      minutesPlayedLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'minutesPlayed',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      minutesPlayedBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'minutesPlayed',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      passAccuracyEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passAccuracy',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      passAccuracyGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'passAccuracy',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      passAccuracyLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'passAccuracy',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      passAccuracyBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'passAccuracy',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> passesEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'passes',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> passesGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'passes',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> passesLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'passes',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> passesBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'passes',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> redCardsEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'redCards',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      redCardsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'redCards',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> redCardsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'redCards',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition> redCardsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'redCards',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      shotsOnTargetEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'shotsOnTarget',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      shotsOnTargetGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'shotsOnTarget',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      shotsOnTargetLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'shotsOnTarget',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      shotsOnTargetBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'shotsOnTarget',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      yellowCardsEqualTo(int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'yellowCards',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      yellowCardsGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'yellowCards',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      yellowCardsLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'yellowCards',
        value: value,
      ));
    });
  }

  QueryBuilder<Statistics, Statistics, QAfterFilterCondition>
      yellowCardsBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'yellowCards',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension StatisticsQueryObject
    on QueryBuilder<Statistics, Statistics, QFilterCondition> {}
