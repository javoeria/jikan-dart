// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_catches_without_on_clauses
// ignore_for_file: avoid_returning_this
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first
// ignore_for_file: unnecessary_const
// ignore_for_file: unnecessary_new
// ignore_for_file: test_types_in_equals

Serializer<Schedule> _$scheduleSerializer = new _$ScheduleSerializer();

class _$ScheduleSerializer implements StructuredSerializer<Schedule> {
  @override
  final Iterable<Type> types = const [Schedule, _$Schedule];
  @override
  final String wireName = 'Schedule';

  @override
  Iterable serialize(Serializers serializers, Schedule object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.monday != null) {
      result
        ..add('monday')
        ..add(serializers.serialize(object.monday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    if (object.tuesday != null) {
      result
        ..add('tuesday')
        ..add(serializers.serialize(object.tuesday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    if (object.wednesday != null) {
      result
        ..add('wednesday')
        ..add(serializers.serialize(object.wednesday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    if (object.thursday != null) {
      result
        ..add('thursday')
        ..add(serializers.serialize(object.thursday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    if (object.friday != null) {
      result
        ..add('friday')
        ..add(serializers.serialize(object.friday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    if (object.saturday != null) {
      result
        ..add('saturday')
        ..add(serializers.serialize(object.saturday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    if (object.sunday != null) {
      result
        ..add('sunday')
        ..add(serializers.serialize(object.sunday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    if (object.other != null) {
      result
        ..add('other')
        ..add(serializers.serialize(object.other,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }
    if (object.unknown != null) {
      result
        ..add('unknown')
        ..add(serializers.serialize(object.unknown,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Anime)])));
    }

    return result;
  }

  @override
  Schedule deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScheduleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'monday':
          result.monday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
        case 'tuesday':
          result.tuesday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
        case 'wednesday':
          result.wednesday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
        case 'thursday':
          result.thursday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
        case 'friday':
          result.friday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
        case 'saturday':
          result.saturday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
        case 'sunday':
          result.sunday.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
        case 'other':
          result.other.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
        case 'unknown':
          result.unknown.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Anime)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$Schedule extends Schedule {
  @override
  final BuiltList<Anime> monday;
  @override
  final BuiltList<Anime> tuesday;
  @override
  final BuiltList<Anime> wednesday;
  @override
  final BuiltList<Anime> thursday;
  @override
  final BuiltList<Anime> friday;
  @override
  final BuiltList<Anime> saturday;
  @override
  final BuiltList<Anime> sunday;
  @override
  final BuiltList<Anime> other;
  @override
  final BuiltList<Anime> unknown;

  factory _$Schedule([void updates(ScheduleBuilder b)]) =>
      (new ScheduleBuilder()..update(updates)).build();

  _$Schedule._(
      {this.monday,
      this.tuesday,
      this.wednesday,
      this.thursday,
      this.friday,
      this.saturday,
      this.sunday,
      this.other,
      this.unknown})
      : super._();

  @override
  Schedule rebuild(void updates(ScheduleBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleBuilder toBuilder() => new ScheduleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Schedule &&
        monday == other.monday &&
        tuesday == other.tuesday &&
        wednesday == other.wednesday &&
        thursday == other.thursday &&
        friday == other.friday &&
        saturday == other.saturday &&
        sunday == other.sunday &&
        other == other.other &&
        unknown == other.unknown;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, monday.hashCode), tuesday.hashCode),
                                wednesday.hashCode),
                            thursday.hashCode),
                        friday.hashCode),
                    saturday.hashCode),
                sunday.hashCode),
            other.hashCode),
        unknown.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Schedule')
          ..add('monday', monday)
          ..add('tuesday', tuesday)
          ..add('wednesday', wednesday)
          ..add('thursday', thursday)
          ..add('friday', friday)
          ..add('saturday', saturday)
          ..add('sunday', sunday)
          ..add('other', other)
          ..add('unknown', unknown))
        .toString();
  }
}

class ScheduleBuilder implements Builder<Schedule, ScheduleBuilder> {
  _$Schedule _$v;

  ListBuilder<Anime> _monday;
  ListBuilder<Anime> get monday => _$this._monday ??= new ListBuilder<Anime>();
  set monday(ListBuilder<Anime> monday) => _$this._monday = monday;

  ListBuilder<Anime> _tuesday;
  ListBuilder<Anime> get tuesday =>
      _$this._tuesday ??= new ListBuilder<Anime>();
  set tuesday(ListBuilder<Anime> tuesday) => _$this._tuesday = tuesday;

  ListBuilder<Anime> _wednesday;
  ListBuilder<Anime> get wednesday =>
      _$this._wednesday ??= new ListBuilder<Anime>();
  set wednesday(ListBuilder<Anime> wednesday) => _$this._wednesday = wednesday;

  ListBuilder<Anime> _thursday;
  ListBuilder<Anime> get thursday =>
      _$this._thursday ??= new ListBuilder<Anime>();
  set thursday(ListBuilder<Anime> thursday) => _$this._thursday = thursday;

  ListBuilder<Anime> _friday;
  ListBuilder<Anime> get friday => _$this._friday ??= new ListBuilder<Anime>();
  set friday(ListBuilder<Anime> friday) => _$this._friday = friday;

  ListBuilder<Anime> _saturday;
  ListBuilder<Anime> get saturday =>
      _$this._saturday ??= new ListBuilder<Anime>();
  set saturday(ListBuilder<Anime> saturday) => _$this._saturday = saturday;

  ListBuilder<Anime> _sunday;
  ListBuilder<Anime> get sunday => _$this._sunday ??= new ListBuilder<Anime>();
  set sunday(ListBuilder<Anime> sunday) => _$this._sunday = sunday;

  ListBuilder<Anime> _other;
  ListBuilder<Anime> get other => _$this._other ??= new ListBuilder<Anime>();
  set other(ListBuilder<Anime> other) => _$this._other = other;

  ListBuilder<Anime> _unknown;
  ListBuilder<Anime> get unknown =>
      _$this._unknown ??= new ListBuilder<Anime>();
  set unknown(ListBuilder<Anime> unknown) => _$this._unknown = unknown;

  ScheduleBuilder();

  ScheduleBuilder get _$this {
    if (_$v != null) {
      _monday = _$v.monday?.toBuilder();
      _tuesday = _$v.tuesday?.toBuilder();
      _wednesday = _$v.wednesday?.toBuilder();
      _thursday = _$v.thursday?.toBuilder();
      _friday = _$v.friday?.toBuilder();
      _saturday = _$v.saturday?.toBuilder();
      _sunday = _$v.sunday?.toBuilder();
      _other = _$v.other?.toBuilder();
      _unknown = _$v.unknown?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Schedule other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Schedule;
  }

  @override
  void update(void updates(ScheduleBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Schedule build() {
    _$Schedule _$result;
    try {
      _$result = _$v ??
          new _$Schedule._(
              monday: _monday?.build(),
              tuesday: _tuesday?.build(),
              wednesday: _wednesday?.build(),
              thursday: _thursday?.build(),
              friday: _friday?.build(),
              saturday: _saturday?.build(),
              sunday: _sunday?.build(),
              other: _other?.build(),
              unknown: _unknown?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'monday';
        _monday?.build();
        _$failedField = 'tuesday';
        _tuesday?.build();
        _$failedField = 'wednesday';
        _wednesday?.build();
        _$failedField = 'thursday';
        _thursday?.build();
        _$failedField = 'friday';
        _friday?.build();
        _$failedField = 'saturday';
        _saturday?.build();
        _$failedField = 'sunday';
        _sunday?.build();
        _$failedField = 'other';
        _other?.build();
        _$failedField = 'unknown';
        _unknown?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Schedule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
