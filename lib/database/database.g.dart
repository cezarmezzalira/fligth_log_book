// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class $LogDataTable extends LogData with TableInfo<$LogDataTable, LogDataData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $LogDataTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _departureMeta =
      const VerificationMeta('departure');
  @override
  late final GeneratedColumn<String> departure = GeneratedColumn<String>(
      'departure', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 4),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _arrivalMeta =
      const VerificationMeta('arrival');
  @override
  late final GeneratedColumn<String> arrival = GeneratedColumn<String>(
      'arrival', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 3, maxTextLength: 4),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _departureTimeMeta =
      const VerificationMeta('departureTime');
  @override
  late final GeneratedColumn<DateTime> departureTime =
      GeneratedColumn<DateTime>('departure_time', aliasedName, false,
          type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _arrivalTimeMeta =
      const VerificationMeta('arrivalTime');
  @override
  late final GeneratedColumn<DateTime> arrivalTime = GeneratedColumn<DateTime>(
      'arrival_time', aliasedName, false,
      type: DriftSqlType.dateTime, requiredDuringInsert: true);
  static const VerificationMeta _flightNumberMeta =
      const VerificationMeta('flightNumber');
  @override
  late final GeneratedColumn<String> flightNumber = GeneratedColumn<String>(
      'flight_number', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _airlineMeta =
      const VerificationMeta('airline');
  @override
  late final GeneratedColumn<String> airline = GeneratedColumn<String>(
      'airline', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _equipmentMeta =
      const VerificationMeta('equipment');
  @override
  late final GeneratedColumn<String> equipment = GeneratedColumn<String>(
      'equipment', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _aircraftRegisterMeta =
      const VerificationMeta('aircraftRegister');
  @override
  late final GeneratedColumn<String> aircraftRegister = GeneratedColumn<String>(
      'aircraft_register', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        departure,
        arrival,
        departureTime,
        arrivalTime,
        flightNumber,
        airline,
        equipment,
        aircraftRegister,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'log_data';
  @override
  VerificationContext validateIntegrity(Insertable<LogDataData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('departure')) {
      context.handle(_departureMeta,
          departure.isAcceptableOrUnknown(data['departure']!, _departureMeta));
    } else if (isInserting) {
      context.missing(_departureMeta);
    }
    if (data.containsKey('arrival')) {
      context.handle(_arrivalMeta,
          arrival.isAcceptableOrUnknown(data['arrival']!, _arrivalMeta));
    } else if (isInserting) {
      context.missing(_arrivalMeta);
    }
    if (data.containsKey('departure_time')) {
      context.handle(
          _departureTimeMeta,
          departureTime.isAcceptableOrUnknown(
              data['departure_time']!, _departureTimeMeta));
    } else if (isInserting) {
      context.missing(_departureTimeMeta);
    }
    if (data.containsKey('arrival_time')) {
      context.handle(
          _arrivalTimeMeta,
          arrivalTime.isAcceptableOrUnknown(
              data['arrival_time']!, _arrivalTimeMeta));
    } else if (isInserting) {
      context.missing(_arrivalTimeMeta);
    }
    if (data.containsKey('flight_number')) {
      context.handle(
          _flightNumberMeta,
          flightNumber.isAcceptableOrUnknown(
              data['flight_number']!, _flightNumberMeta));
    } else if (isInserting) {
      context.missing(_flightNumberMeta);
    }
    if (data.containsKey('airline')) {
      context.handle(_airlineMeta,
          airline.isAcceptableOrUnknown(data['airline']!, _airlineMeta));
    } else if (isInserting) {
      context.missing(_airlineMeta);
    }
    if (data.containsKey('equipment')) {
      context.handle(_equipmentMeta,
          equipment.isAcceptableOrUnknown(data['equipment']!, _equipmentMeta));
    } else if (isInserting) {
      context.missing(_equipmentMeta);
    }
    if (data.containsKey('aircraft_register')) {
      context.handle(
          _aircraftRegisterMeta,
          aircraftRegister.isAcceptableOrUnknown(
              data['aircraft_register']!, _aircraftRegisterMeta));
    } else if (isInserting) {
      context.missing(_aircraftRegisterMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  LogDataData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return LogDataData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      departure: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}departure'])!,
      arrival: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}arrival'])!,
      departureTime: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}departure_time'])!,
      arrivalTime: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}arrival_time'])!,
      flightNumber: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}flight_number'])!,
      airline: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}airline'])!,
      equipment: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}equipment'])!,
      aircraftRegister: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}aircraft_register'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at']),
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
    );
  }

  @override
  $LogDataTable createAlias(String alias) {
    return $LogDataTable(attachedDatabase, alias);
  }
}

class LogDataData extends DataClass implements Insertable<LogDataData> {
  final int id;
  final String departure;
  final String arrival;
  final DateTime departureTime;
  final DateTime arrivalTime;
  final String flightNumber;
  final String airline;
  final String equipment;
  final String aircraftRegister;
  final DateTime? createdAt;
  final DateTime? updatedAt;
  const LogDataData(
      {required this.id,
      required this.departure,
      required this.arrival,
      required this.departureTime,
      required this.arrivalTime,
      required this.flightNumber,
      required this.airline,
      required this.equipment,
      required this.aircraftRegister,
      this.createdAt,
      this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['departure'] = Variable<String>(departure);
    map['arrival'] = Variable<String>(arrival);
    map['departure_time'] = Variable<DateTime>(departureTime);
    map['arrival_time'] = Variable<DateTime>(arrivalTime);
    map['flight_number'] = Variable<String>(flightNumber);
    map['airline'] = Variable<String>(airline);
    map['equipment'] = Variable<String>(equipment);
    map['aircraft_register'] = Variable<String>(aircraftRegister);
    if (!nullToAbsent || createdAt != null) {
      map['created_at'] = Variable<DateTime>(createdAt);
    }
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    return map;
  }

  LogDataCompanion toCompanion(bool nullToAbsent) {
    return LogDataCompanion(
      id: Value(id),
      departure: Value(departure),
      arrival: Value(arrival),
      departureTime: Value(departureTime),
      arrivalTime: Value(arrivalTime),
      flightNumber: Value(flightNumber),
      airline: Value(airline),
      equipment: Value(equipment),
      aircraftRegister: Value(aircraftRegister),
      createdAt: createdAt == null && nullToAbsent
          ? const Value.absent()
          : Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
    );
  }

  factory LogDataData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return LogDataData(
      id: serializer.fromJson<int>(json['id']),
      departure: serializer.fromJson<String>(json['departure']),
      arrival: serializer.fromJson<String>(json['arrival']),
      departureTime: serializer.fromJson<DateTime>(json['departureTime']),
      arrivalTime: serializer.fromJson<DateTime>(json['arrivalTime']),
      flightNumber: serializer.fromJson<String>(json['flightNumber']),
      airline: serializer.fromJson<String>(json['airline']),
      equipment: serializer.fromJson<String>(json['equipment']),
      aircraftRegister: serializer.fromJson<String>(json['aircraftRegister']),
      createdAt: serializer.fromJson<DateTime?>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'departure': serializer.toJson<String>(departure),
      'arrival': serializer.toJson<String>(arrival),
      'departureTime': serializer.toJson<DateTime>(departureTime),
      'arrivalTime': serializer.toJson<DateTime>(arrivalTime),
      'flightNumber': serializer.toJson<String>(flightNumber),
      'airline': serializer.toJson<String>(airline),
      'equipment': serializer.toJson<String>(equipment),
      'aircraftRegister': serializer.toJson<String>(aircraftRegister),
      'createdAt': serializer.toJson<DateTime?>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
    };
  }

  LogDataData copyWith(
          {int? id,
          String? departure,
          String? arrival,
          DateTime? departureTime,
          DateTime? arrivalTime,
          String? flightNumber,
          String? airline,
          String? equipment,
          String? aircraftRegister,
          Value<DateTime?> createdAt = const Value.absent(),
          Value<DateTime?> updatedAt = const Value.absent()}) =>
      LogDataData(
        id: id ?? this.id,
        departure: departure ?? this.departure,
        arrival: arrival ?? this.arrival,
        departureTime: departureTime ?? this.departureTime,
        arrivalTime: arrivalTime ?? this.arrivalTime,
        flightNumber: flightNumber ?? this.flightNumber,
        airline: airline ?? this.airline,
        equipment: equipment ?? this.equipment,
        aircraftRegister: aircraftRegister ?? this.aircraftRegister,
        createdAt: createdAt.present ? createdAt.value : this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
      );
  LogDataData copyWithCompanion(LogDataCompanion data) {
    return LogDataData(
      id: data.id.present ? data.id.value : this.id,
      departure: data.departure.present ? data.departure.value : this.departure,
      arrival: data.arrival.present ? data.arrival.value : this.arrival,
      departureTime: data.departureTime.present
          ? data.departureTime.value
          : this.departureTime,
      arrivalTime:
          data.arrivalTime.present ? data.arrivalTime.value : this.arrivalTime,
      flightNumber: data.flightNumber.present
          ? data.flightNumber.value
          : this.flightNumber,
      airline: data.airline.present ? data.airline.value : this.airline,
      equipment: data.equipment.present ? data.equipment.value : this.equipment,
      aircraftRegister: data.aircraftRegister.present
          ? data.aircraftRegister.value
          : this.aircraftRegister,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('LogDataData(')
          ..write('id: $id, ')
          ..write('departure: $departure, ')
          ..write('arrival: $arrival, ')
          ..write('departureTime: $departureTime, ')
          ..write('arrivalTime: $arrivalTime, ')
          ..write('flightNumber: $flightNumber, ')
          ..write('airline: $airline, ')
          ..write('equipment: $equipment, ')
          ..write('aircraftRegister: $aircraftRegister, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      departure,
      arrival,
      departureTime,
      arrivalTime,
      flightNumber,
      airline,
      equipment,
      aircraftRegister,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is LogDataData &&
          other.id == this.id &&
          other.departure == this.departure &&
          other.arrival == this.arrival &&
          other.departureTime == this.departureTime &&
          other.arrivalTime == this.arrivalTime &&
          other.flightNumber == this.flightNumber &&
          other.airline == this.airline &&
          other.equipment == this.equipment &&
          other.aircraftRegister == this.aircraftRegister &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class LogDataCompanion extends UpdateCompanion<LogDataData> {
  final Value<int> id;
  final Value<String> departure;
  final Value<String> arrival;
  final Value<DateTime> departureTime;
  final Value<DateTime> arrivalTime;
  final Value<String> flightNumber;
  final Value<String> airline;
  final Value<String> equipment;
  final Value<String> aircraftRegister;
  final Value<DateTime?> createdAt;
  final Value<DateTime?> updatedAt;
  const LogDataCompanion({
    this.id = const Value.absent(),
    this.departure = const Value.absent(),
    this.arrival = const Value.absent(),
    this.departureTime = const Value.absent(),
    this.arrivalTime = const Value.absent(),
    this.flightNumber = const Value.absent(),
    this.airline = const Value.absent(),
    this.equipment = const Value.absent(),
    this.aircraftRegister = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  });
  LogDataCompanion.insert({
    this.id = const Value.absent(),
    required String departure,
    required String arrival,
    required DateTime departureTime,
    required DateTime arrivalTime,
    required String flightNumber,
    required String airline,
    required String equipment,
    required String aircraftRegister,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
  })  : departure = Value(departure),
        arrival = Value(arrival),
        departureTime = Value(departureTime),
        arrivalTime = Value(arrivalTime),
        flightNumber = Value(flightNumber),
        airline = Value(airline),
        equipment = Value(equipment),
        aircraftRegister = Value(aircraftRegister);
  static Insertable<LogDataData> custom({
    Expression<int>? id,
    Expression<String>? departure,
    Expression<String>? arrival,
    Expression<DateTime>? departureTime,
    Expression<DateTime>? arrivalTime,
    Expression<String>? flightNumber,
    Expression<String>? airline,
    Expression<String>? equipment,
    Expression<String>? aircraftRegister,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (departure != null) 'departure': departure,
      if (arrival != null) 'arrival': arrival,
      if (departureTime != null) 'departure_time': departureTime,
      if (arrivalTime != null) 'arrival_time': arrivalTime,
      if (flightNumber != null) 'flight_number': flightNumber,
      if (airline != null) 'airline': airline,
      if (equipment != null) 'equipment': equipment,
      if (aircraftRegister != null) 'aircraft_register': aircraftRegister,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
    });
  }

  LogDataCompanion copyWith(
      {Value<int>? id,
      Value<String>? departure,
      Value<String>? arrival,
      Value<DateTime>? departureTime,
      Value<DateTime>? arrivalTime,
      Value<String>? flightNumber,
      Value<String>? airline,
      Value<String>? equipment,
      Value<String>? aircraftRegister,
      Value<DateTime?>? createdAt,
      Value<DateTime?>? updatedAt}) {
    return LogDataCompanion(
      id: id ?? this.id,
      departure: departure ?? this.departure,
      arrival: arrival ?? this.arrival,
      departureTime: departureTime ?? this.departureTime,
      arrivalTime: arrivalTime ?? this.arrivalTime,
      flightNumber: flightNumber ?? this.flightNumber,
      airline: airline ?? this.airline,
      equipment: equipment ?? this.equipment,
      aircraftRegister: aircraftRegister ?? this.aircraftRegister,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (departure.present) {
      map['departure'] = Variable<String>(departure.value);
    }
    if (arrival.present) {
      map['arrival'] = Variable<String>(arrival.value);
    }
    if (departureTime.present) {
      map['departure_time'] = Variable<DateTime>(departureTime.value);
    }
    if (arrivalTime.present) {
      map['arrival_time'] = Variable<DateTime>(arrivalTime.value);
    }
    if (flightNumber.present) {
      map['flight_number'] = Variable<String>(flightNumber.value);
    }
    if (airline.present) {
      map['airline'] = Variable<String>(airline.value);
    }
    if (equipment.present) {
      map['equipment'] = Variable<String>(equipment.value);
    }
    if (aircraftRegister.present) {
      map['aircraft_register'] = Variable<String>(aircraftRegister.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('LogDataCompanion(')
          ..write('id: $id, ')
          ..write('departure: $departure, ')
          ..write('arrival: $arrival, ')
          ..write('departureTime: $departureTime, ')
          ..write('arrivalTime: $arrivalTime, ')
          ..write('flightNumber: $flightNumber, ')
          ..write('airline: $airline, ')
          ..write('equipment: $equipment, ')
          ..write('aircraftRegister: $aircraftRegister, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $LogDataTable logData = $LogDataTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [logData];
}

typedef $$LogDataTableCreateCompanionBuilder = LogDataCompanion Function({
  Value<int> id,
  required String departure,
  required String arrival,
  required DateTime departureTime,
  required DateTime arrivalTime,
  required String flightNumber,
  required String airline,
  required String equipment,
  required String aircraftRegister,
  Value<DateTime?> createdAt,
  Value<DateTime?> updatedAt,
});
typedef $$LogDataTableUpdateCompanionBuilder = LogDataCompanion Function({
  Value<int> id,
  Value<String> departure,
  Value<String> arrival,
  Value<DateTime> departureTime,
  Value<DateTime> arrivalTime,
  Value<String> flightNumber,
  Value<String> airline,
  Value<String> equipment,
  Value<String> aircraftRegister,
  Value<DateTime?> createdAt,
  Value<DateTime?> updatedAt,
});

class $$LogDataTableFilterComposer
    extends Composer<_$AppDatabase, $LogDataTable> {
  $$LogDataTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get departure => $composableBuilder(
      column: $table.departure, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get arrival => $composableBuilder(
      column: $table.arrival, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get departureTime => $composableBuilder(
      column: $table.departureTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get arrivalTime => $composableBuilder(
      column: $table.arrivalTime, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get flightNumber => $composableBuilder(
      column: $table.flightNumber, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get airline => $composableBuilder(
      column: $table.airline, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get equipment => $composableBuilder(
      column: $table.equipment, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get aircraftRegister => $composableBuilder(
      column: $table.aircraftRegister,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$LogDataTableOrderingComposer
    extends Composer<_$AppDatabase, $LogDataTable> {
  $$LogDataTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get departure => $composableBuilder(
      column: $table.departure, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get arrival => $composableBuilder(
      column: $table.arrival, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get departureTime => $composableBuilder(
      column: $table.departureTime,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get arrivalTime => $composableBuilder(
      column: $table.arrivalTime, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get flightNumber => $composableBuilder(
      column: $table.flightNumber,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get airline => $composableBuilder(
      column: $table.airline, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get equipment => $composableBuilder(
      column: $table.equipment, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get aircraftRegister => $composableBuilder(
      column: $table.aircraftRegister,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$LogDataTableAnnotationComposer
    extends Composer<_$AppDatabase, $LogDataTable> {
  $$LogDataTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get departure =>
      $composableBuilder(column: $table.departure, builder: (column) => column);

  GeneratedColumn<String> get arrival =>
      $composableBuilder(column: $table.arrival, builder: (column) => column);

  GeneratedColumn<DateTime> get departureTime => $composableBuilder(
      column: $table.departureTime, builder: (column) => column);

  GeneratedColumn<DateTime> get arrivalTime => $composableBuilder(
      column: $table.arrivalTime, builder: (column) => column);

  GeneratedColumn<String> get flightNumber => $composableBuilder(
      column: $table.flightNumber, builder: (column) => column);

  GeneratedColumn<String> get airline =>
      $composableBuilder(column: $table.airline, builder: (column) => column);

  GeneratedColumn<String> get equipment =>
      $composableBuilder(column: $table.equipment, builder: (column) => column);

  GeneratedColumn<String> get aircraftRegister => $composableBuilder(
      column: $table.aircraftRegister, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$LogDataTableTableManager extends RootTableManager<
    _$AppDatabase,
    $LogDataTable,
    LogDataData,
    $$LogDataTableFilterComposer,
    $$LogDataTableOrderingComposer,
    $$LogDataTableAnnotationComposer,
    $$LogDataTableCreateCompanionBuilder,
    $$LogDataTableUpdateCompanionBuilder,
    (LogDataData, BaseReferences<_$AppDatabase, $LogDataTable, LogDataData>),
    LogDataData,
    PrefetchHooks Function()> {
  $$LogDataTableTableManager(_$AppDatabase db, $LogDataTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$LogDataTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$LogDataTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$LogDataTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> departure = const Value.absent(),
            Value<String> arrival = const Value.absent(),
            Value<DateTime> departureTime = const Value.absent(),
            Value<DateTime> arrivalTime = const Value.absent(),
            Value<String> flightNumber = const Value.absent(),
            Value<String> airline = const Value.absent(),
            Value<String> equipment = const Value.absent(),
            Value<String> aircraftRegister = const Value.absent(),
            Value<DateTime?> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
          }) =>
              LogDataCompanion(
            id: id,
            departure: departure,
            arrival: arrival,
            departureTime: departureTime,
            arrivalTime: arrivalTime,
            flightNumber: flightNumber,
            airline: airline,
            equipment: equipment,
            aircraftRegister: aircraftRegister,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String departure,
            required String arrival,
            required DateTime departureTime,
            required DateTime arrivalTime,
            required String flightNumber,
            required String airline,
            required String equipment,
            required String aircraftRegister,
            Value<DateTime?> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
          }) =>
              LogDataCompanion.insert(
            id: id,
            departure: departure,
            arrival: arrival,
            departureTime: departureTime,
            arrivalTime: arrivalTime,
            flightNumber: flightNumber,
            airline: airline,
            equipment: equipment,
            aircraftRegister: aircraftRegister,
            createdAt: createdAt,
            updatedAt: updatedAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$LogDataTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $LogDataTable,
    LogDataData,
    $$LogDataTableFilterComposer,
    $$LogDataTableOrderingComposer,
    $$LogDataTableAnnotationComposer,
    $$LogDataTableCreateCompanionBuilder,
    $$LogDataTableUpdateCompanionBuilder,
    (LogDataData, BaseReferences<_$AppDatabase, $LogDataTable, LogDataData>),
    LogDataData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$LogDataTableTableManager get logData =>
      $$LogDataTableTableManager(_db, _db.logData);
}
