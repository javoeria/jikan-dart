// GENERATED CODE - DO NOT MODIFY BY HAND

part of schedule_dto;

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

Serializer<ScheduleDto> _$scheduleDtoSerializer = new _$ScheduleDtoSerializer();

class _$ScheduleDtoSerializer implements StructuredSerializer<ScheduleDto> {
  @override
  final Iterable<Type> types = const [ScheduleDto, _$ScheduleDto];
  @override
  final String wireName = 'ScheduleDto';

  @override
  Iterable serialize(Serializers serializers, ScheduleDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.monday != null) {
      result
        ..add('monday')
        ..add(serializers.serialize(object.monday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.tuesday != null) {
      result
        ..add('tuesday')
        ..add(serializers.serialize(object.tuesday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.wednesday != null) {
      result
        ..add('wednesday')
        ..add(serializers.serialize(object.wednesday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.thursday != null) {
      result
        ..add('thursday')
        ..add(serializers.serialize(object.thursday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.friday != null) {
      result
        ..add('friday')
        ..add(serializers.serialize(object.friday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.saturday != null) {
      result
        ..add('saturday')
        ..add(serializers.serialize(object.saturday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.sunday != null) {
      result
        ..add('sunday')
        ..add(serializers.serialize(object.sunday,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.other != null) {
      result
        ..add('other')
        ..add(serializers.serialize(object.other,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }
    if (object.unknown != null) {
      result
        ..add('unknown')
        ..add(serializers.serialize(object.unknown,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }

    return result;
  }

  @override
  ScheduleDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScheduleDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'monday':
          result.monday.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'tuesday':
          result.tuesday.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'wednesday':
          result.wednesday.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'thursday':
          result.thursday.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'friday':
          result.friday.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'saturday':
          result.saturday.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'sunday':
          result.sunday.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'other':
          result.other.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
        case 'unknown':
          result.unknown.replace(serializers.deserialize(value,
              specifiedType: const FullType(
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$ScheduleDto extends ScheduleDto {
  @override
  final BuiltList<AnimeDto> monday;
  @override
  final BuiltList<AnimeDto> tuesday;
  @override
  final BuiltList<AnimeDto> wednesday;
  @override
  final BuiltList<AnimeDto> thursday;
  @override
  final BuiltList<AnimeDto> friday;
  @override
  final BuiltList<AnimeDto> saturday;
  @override
  final BuiltList<AnimeDto> sunday;
  @override
  final BuiltList<AnimeDto> other;
  @override
  final BuiltList<AnimeDto> unknown;

  factory _$ScheduleDto([void updates(ScheduleDtoBuilder b)]) =>
      (new ScheduleDtoBuilder()..update(updates)).build();

  _$ScheduleDto._(
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
  ScheduleDto rebuild(void updates(ScheduleDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScheduleDtoBuilder toBuilder() => new ScheduleDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScheduleDto &&
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
    return (newBuiltValueToStringHelper('ScheduleDto')
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

class ScheduleDtoBuilder implements Builder<ScheduleDto, ScheduleDtoBuilder> {
  _$ScheduleDto _$v;

  ListBuilder<AnimeDto> _monday;
  ListBuilder<AnimeDto> get monday =>
      _$this._monday ??= new ListBuilder<AnimeDto>();
  set monday(ListBuilder<AnimeDto> monday) => _$this._monday = monday;

  ListBuilder<AnimeDto> _tuesday;
  ListBuilder<AnimeDto> get tuesday =>
      _$this._tuesday ??= new ListBuilder<AnimeDto>();
  set tuesday(ListBuilder<AnimeDto> tuesday) => _$this._tuesday = tuesday;

  ListBuilder<AnimeDto> _wednesday;
  ListBuilder<AnimeDto> get wednesday =>
      _$this._wednesday ??= new ListBuilder<AnimeDto>();
  set wednesday(ListBuilder<AnimeDto> wednesday) =>
      _$this._wednesday = wednesday;

  ListBuilder<AnimeDto> _thursday;
  ListBuilder<AnimeDto> get thursday =>
      _$this._thursday ??= new ListBuilder<AnimeDto>();
  set thursday(ListBuilder<AnimeDto> thursday) => _$this._thursday = thursday;

  ListBuilder<AnimeDto> _friday;
  ListBuilder<AnimeDto> get friday =>
      _$this._friday ??= new ListBuilder<AnimeDto>();
  set friday(ListBuilder<AnimeDto> friday) => _$this._friday = friday;

  ListBuilder<AnimeDto> _saturday;
  ListBuilder<AnimeDto> get saturday =>
      _$this._saturday ??= new ListBuilder<AnimeDto>();
  set saturday(ListBuilder<AnimeDto> saturday) => _$this._saturday = saturday;

  ListBuilder<AnimeDto> _sunday;
  ListBuilder<AnimeDto> get sunday =>
      _$this._sunday ??= new ListBuilder<AnimeDto>();
  set sunday(ListBuilder<AnimeDto> sunday) => _$this._sunday = sunday;

  ListBuilder<AnimeDto> _other;
  ListBuilder<AnimeDto> get other =>
      _$this._other ??= new ListBuilder<AnimeDto>();
  set other(ListBuilder<AnimeDto> other) => _$this._other = other;

  ListBuilder<AnimeDto> _unknown;
  ListBuilder<AnimeDto> get unknown =>
      _$this._unknown ??= new ListBuilder<AnimeDto>();
  set unknown(ListBuilder<AnimeDto> unknown) => _$this._unknown = unknown;

  ScheduleDtoBuilder();

  ScheduleDtoBuilder get _$this {
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
  void replace(ScheduleDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScheduleDto;
  }

  @override
  void update(void updates(ScheduleDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScheduleDto build() {
    _$ScheduleDto _$result;
    try {
      _$result = _$v ??
          new _$ScheduleDto._(
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
            'ScheduleDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
