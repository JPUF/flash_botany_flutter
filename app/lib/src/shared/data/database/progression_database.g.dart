// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'progression_database.dart';

// ignore_for_file: type=lint
class $LessonProgressionsTable extends LessonProgressions
    with TableInfo<$LessonProgressionsTable, LessonProgression> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LessonProgressionsTable(this.attachedDatabase, [this._alias]);
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
  String get aliasedName => _alias ?? 'lesson_progressions';
  @override
  String get actualTableName => 'lesson_progressions';
  @override
  VerificationContext validateIntegrity(Insertable<LessonProgression> instance,
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
  LessonProgression map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LessonProgression(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      progression: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}progression'])!,
      maxProgression: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_progression'])!,
    );
  }

  @override
  $LessonProgressionsTable createAlias(String alias) {
    return $LessonProgressionsTable(attachedDatabase, alias);
  }
}

class LessonProgression extends DataClass
    implements Insertable<LessonProgression> {
  final String id;
  final int progression;
  final int maxProgression;
  const LessonProgression(
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

  LessonProgressionsCompanion toCompanion(bool nullToAbsent) {
    return LessonProgressionsCompanion(
      id: Value(id),
      progression: Value(progression),
      maxProgression: Value(maxProgression),
    );
  }

  factory LessonProgression.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LessonProgression(
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

  LessonProgression copyWith(
          {String? id, int? progression, int? maxProgression}) =>
      LessonProgression(
        id: id ?? this.id,
        progression: progression ?? this.progression,
        maxProgression: maxProgression ?? this.maxProgression,
      );
  @override
  String toString() {
    return (StringBuffer('LessonProgression(')
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
      (other is LessonProgression &&
          other.id == this.id &&
          other.progression == this.progression &&
          other.maxProgression == this.maxProgression);
}

class LessonProgressionsCompanion extends UpdateCompanion<LessonProgression> {
  final Value<String> id;
  final Value<int> progression;
  final Value<int> maxProgression;
  const LessonProgressionsCompanion({
    this.id = const Value.absent(),
    this.progression = const Value.absent(),
    this.maxProgression = const Value.absent(),
  });
  LessonProgressionsCompanion.insert({
    required String id,
    required int progression,
    this.maxProgression = const Value.absent(),
  })  : id = Value(id),
        progression = Value(progression);
  static Insertable<LessonProgression> custom({
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

  LessonProgressionsCompanion copyWith(
      {Value<String>? id,
      Value<int>? progression,
      Value<int>? maxProgression}) {
    return LessonProgressionsCompanion(
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
    return (StringBuffer('LessonProgressionsCompanion(')
          ..write('id: $id, ')
          ..write('progression: $progression, ')
          ..write('maxProgression: $maxProgression')
          ..write(')'))
        .toString();
  }
}

abstract class _$ProgressionDatabase extends GeneratedDatabase {
  _$ProgressionDatabase(QueryExecutor e) : super(e);
  late final $LessonProgressionsTable lessonProgressions =
      $LessonProgressionsTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [lessonProgressions];
}
