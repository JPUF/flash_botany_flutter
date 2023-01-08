// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'drift_progression_database.dart';

// ignore_for_file: type=lint
class $DriftLessonProgressionsTable extends DriftLessonProgressions
    with TableInfo<$DriftLessonProgressionsTable, DriftLessonProgression> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DriftLessonProgressionsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _progressionMeta =
      const VerificationMeta('progression');
  @override
  late final GeneratedColumn<int> progression = GeneratedColumn<int>(
      'progression', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _maxProgressionMeta =
      const VerificationMeta('maxProgression');
  @override
  late final GeneratedColumn<int> maxProgression = GeneratedColumn<int>(
      'max_progression', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(LessonData.maxProgression));
  @override
  List<GeneratedColumn> get $columns => [id, progression, maxProgression];
  @override
  String get aliasedName => _alias ?? 'drift_lesson_progressions';
  @override
  String get actualTableName => 'drift_lesson_progressions';
  @override
  VerificationContext validateIntegrity(
      Insertable<DriftLessonProgression> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('progression')) {
      context.handle(
          _progressionMeta,
          progression.isAcceptableOrUnknown(
              data['progression']!, _progressionMeta));
    } else if (isInserting) {
      context.missing(_progressionMeta);
    }
    if (data.containsKey('max_progression')) {
      context.handle(
          _maxProgressionMeta,
          maxProgression.isAcceptableOrUnknown(
              data['max_progression']!, _maxProgressionMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DriftLessonProgression map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return DriftLessonProgression(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      progression: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}progression'])!,
      maxProgression: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_progression'])!,
    );
  }

  @override
  $DriftLessonProgressionsTable createAlias(String alias) {
    return $DriftLessonProgressionsTable(attachedDatabase, alias);
  }
}

class DriftLessonProgression extends DataClass
    implements Insertable<DriftLessonProgression> {
  final String id;
  final int progression;
  final int maxProgression;
  const DriftLessonProgression(
      {required this.id,
      required this.progression,
      required this.maxProgression});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['progression'] = Variable<int>(progression);
    map['max_progression'] = Variable<int>(maxProgression);
    return map;
  }

  DriftLessonProgressionsCompanion toCompanion(bool nullToAbsent) {
    return DriftLessonProgressionsCompanion(
      id: Value(id),
      progression: Value(progression),
      maxProgression: Value(maxProgression),
    );
  }

  factory DriftLessonProgression.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DriftLessonProgression(
      id: serializer.fromJson<String>(json['id']),
      progression: serializer.fromJson<int>(json['progression']),
      maxProgression: serializer.fromJson<int>(json['maxProgression']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'progression': serializer.toJson<int>(progression),
      'maxProgression': serializer.toJson<int>(maxProgression),
    };
  }

  DriftLessonProgression copyWith(
          {String? id, int? progression, int? maxProgression}) =>
      DriftLessonProgression(
        id: id ?? this.id,
        progression: progression ?? this.progression,
        maxProgression: maxProgression ?? this.maxProgression,
      );
  @override
  String toString() {
    return (StringBuffer('DriftLessonProgression(')
          ..write('id: $id, ')
          ..write('progression: $progression, ')
          ..write('maxProgression: $maxProgression')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, progression, maxProgression);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DriftLessonProgression &&
          other.id == this.id &&
          other.progression == this.progression &&
          other.maxProgression == this.maxProgression);
}

class DriftLessonProgressionsCompanion
    extends UpdateCompanion<DriftLessonProgression> {
  final Value<String> id;
  final Value<int> progression;
  final Value<int> maxProgression;
  const DriftLessonProgressionsCompanion({
    this.id = const Value.absent(),
    this.progression = const Value.absent(),
    this.maxProgression = const Value.absent(),
  });
  DriftLessonProgressionsCompanion.insert({
    required String id,
    required int progression,
    this.maxProgression = const Value.absent(),
  })  : id = Value(id),
        progression = Value(progression);
  static Insertable<DriftLessonProgression> custom({
    Expression<String>? id,
    Expression<int>? progression,
    Expression<int>? maxProgression,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (progression != null) 'progression': progression,
      if (maxProgression != null) 'max_progression': maxProgression,
    });
  }

  DriftLessonProgressionsCompanion copyWith(
      {Value<String>? id,
      Value<int>? progression,
      Value<int>? maxProgression}) {
    return DriftLessonProgressionsCompanion(
      id: id ?? this.id,
      progression: progression ?? this.progression,
      maxProgression: maxProgression ?? this.maxProgression,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (progression.present) {
      map['progression'] = Variable<int>(progression.value);
    }
    if (maxProgression.present) {
      map['max_progression'] = Variable<int>(maxProgression.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DriftLessonProgressionsCompanion(')
          ..write('id: $id, ')
          ..write('progression: $progression, ')
          ..write('maxProgression: $maxProgression')
          ..write(')'))
        .toString();
  }
}

abstract class _$DriftProgressionDatabase extends GeneratedDatabase {
  _$DriftProgressionDatabase(QueryExecutor e) : super(e);
  late final $DriftLessonProgressionsTable driftLessonProgressions =
      $DriftLessonProgressionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [driftLessonProgressions];
}
