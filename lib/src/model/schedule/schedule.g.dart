// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Schedule> _$scheduleSerializer = new _$ScheduleSerializer();

class _$ScheduleSerializer implements StructuredSerializer<Schedule> {
  @override
  final Iterable<Type> types = const [Schedule, _$Schedule];
  @override
  final String wireName = 'Schedule';

  @override
  Iterable<Object> serialize(Serializers serializers, Schedule object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.monday != null) {
      result
        ..add('monday')
        ..add(serializers.serialize(object.monday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.tuesday != null) {
      result
        ..add('tuesday')
        ..add(serializers.serialize(object.tuesday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.wednesday != null) {
      result
        ..add('wednesday')
        ..add(serializers.serialize(object.wednesday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.thursday != null) {
      result
        ..add('thursday')
        ..add(serializers.serialize(object.thursday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.friday != null) {
      result
        ..add('friday')
        ..add(serializers.serialize(object.friday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.saturday != null) {
      result
        ..add('saturday')
        ..add(serializers.serialize(object.saturday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.sunday != null) {
      result
        ..add('sunday')
        ..add(serializers.serialize(object.sunday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.other != null) {
      result
        ..add('other')
        ..add(serializers.serialize(object.other,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    if (object.unknown != null) {
      result
        ..add('unknown')
        ..add(serializers.serialize(object.unknown,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeItem)])));
    }
    return result;
  }

  @override
  Schedule deserialize(Serializers serializers, Iterable<Object> serialized,
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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'tuesday':
          result.tuesday.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'wednesday':
          result.wednesday.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'thursday':
          result.thursday.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'friday':
          result.friday.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'saturday':
          result.saturday.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'sunday':
          result.sunday.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'other':
          result.other.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
        case 'unknown':
          result.unknown.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Schedule extends Schedule {
  @override
  final BuiltList<AnimeItem> monday;
  @override
  final BuiltList<AnimeItem> tuesday;
  @override
  final BuiltList<AnimeItem> wednesday;
  @override
  final BuiltList<AnimeItem> thursday;
  @override
  final BuiltList<AnimeItem> friday;
  @override
  final BuiltList<AnimeItem> saturday;
  @override
  final BuiltList<AnimeItem> sunday;
  @override
  final BuiltList<AnimeItem> other;
  @override
  final BuiltList<AnimeItem> unknown;

  factory _$Schedule([void Function(ScheduleBuilder) updates]) =>
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
  Schedule rebuild(void Function(ScheduleBuilder) updates) =>
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
        this.other == other.other &&
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

  ListBuilder<AnimeItem> _monday;
  ListBuilder<AnimeItem> get monday =>
      _$this._monday ??= new ListBuilder<AnimeItem>();
  set monday(ListBuilder<AnimeItem> monday) => _$this._monday = monday;

  ListBuilder<AnimeItem> _tuesday;
  ListBuilder<AnimeItem> get tuesday =>
      _$this._tuesday ??= new ListBuilder<AnimeItem>();
  set tuesday(ListBuilder<AnimeItem> tuesday) => _$this._tuesday = tuesday;

  ListBuilder<AnimeItem> _wednesday;
  ListBuilder<AnimeItem> get wednesday =>
      _$this._wednesday ??= new ListBuilder<AnimeItem>();
  set wednesday(ListBuilder<AnimeItem> wednesday) =>
      _$this._wednesday = wednesday;

  ListBuilder<AnimeItem> _thursday;
  ListBuilder<AnimeItem> get thursday =>
      _$this._thursday ??= new ListBuilder<AnimeItem>();
  set thursday(ListBuilder<AnimeItem> thursday) => _$this._thursday = thursday;

  ListBuilder<AnimeItem> _friday;
  ListBuilder<AnimeItem> get friday =>
      _$this._friday ??= new ListBuilder<AnimeItem>();
  set friday(ListBuilder<AnimeItem> friday) => _$this._friday = friday;

  ListBuilder<AnimeItem> _saturday;
  ListBuilder<AnimeItem> get saturday =>
      _$this._saturday ??= new ListBuilder<AnimeItem>();
  set saturday(ListBuilder<AnimeItem> saturday) => _$this._saturday = saturday;

  ListBuilder<AnimeItem> _sunday;
  ListBuilder<AnimeItem> get sunday =>
      _$this._sunday ??= new ListBuilder<AnimeItem>();
  set sunday(ListBuilder<AnimeItem> sunday) => _$this._sunday = sunday;

  ListBuilder<AnimeItem> _other;
  ListBuilder<AnimeItem> get other =>
      _$this._other ??= new ListBuilder<AnimeItem>();
  set other(ListBuilder<AnimeItem> other) => _$this._other = other;

  ListBuilder<AnimeItem> _unknown;
  ListBuilder<AnimeItem> get unknown =>
      _$this._unknown ??= new ListBuilder<AnimeItem>();
  set unknown(ListBuilder<AnimeItem> unknown) => _$this._unknown = unknown;

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
  void update(void Function(ScheduleBuilder) updates) {
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

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
