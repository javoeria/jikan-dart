// GENERATED CODE - DO NOT MODIFY BY HAND

part of history_result_item_dto;

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

Serializer<HistoryResultItemDto> _$historyResultItemDtoSerializer =
    new _$HistoryResultItemDtoSerializer();

class _$HistoryResultItemDtoSerializer
    implements StructuredSerializer<HistoryResultItemDto> {
  @override
  final Iterable<Type> types = const [
    HistoryResultItemDto,
    _$HistoryResultItemDto
  ];
  @override
  final String wireName = 'HistoryResultItemDto';

  @override
  Iterable serialize(Serializers serializers, HistoryResultItemDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'meta',
      serializers.serialize(object.meta,
          specifiedType: const FullType(MetaDto)),
      'increment',
      serializers.serialize(object.increment,
          specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  HistoryResultItemDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryResultItemDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(MetaDto)) as MetaDto);
          break;
        case 'increment':
          result.increment = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HistoryResultItemDto extends HistoryResultItemDto {
  @override
  final MetaDto meta;
  @override
  final int increment;
  @override
  final String date;

  factory _$HistoryResultItemDto(
          [void updates(HistoryResultItemDtoBuilder b)]) =>
      (new HistoryResultItemDtoBuilder()..update(updates)).build();

  _$HistoryResultItemDto._({this.meta, this.increment, this.date}) : super._() {
    if (meta == null) {
      throw new BuiltValueNullFieldError('HistoryResultItemDto', 'meta');
    }
    if (increment == null) {
      throw new BuiltValueNullFieldError('HistoryResultItemDto', 'increment');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('HistoryResultItemDto', 'date');
    }
  }

  @override
  HistoryResultItemDto rebuild(void updates(HistoryResultItemDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryResultItemDtoBuilder toBuilder() =>
      new HistoryResultItemDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryResultItemDto &&
        meta == other.meta &&
        increment == other.increment &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, meta.hashCode), increment.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistoryResultItemDto')
          ..add('meta', meta)
          ..add('increment', increment)
          ..add('date', date))
        .toString();
  }
}

class HistoryResultItemDtoBuilder
    implements Builder<HistoryResultItemDto, HistoryResultItemDtoBuilder> {
  _$HistoryResultItemDto _$v;

  MetaDtoBuilder _meta;
  MetaDtoBuilder get meta => _$this._meta ??= new MetaDtoBuilder();
  set meta(MetaDtoBuilder meta) => _$this._meta = meta;

  int _increment;
  int get increment => _$this._increment;
  set increment(int increment) => _$this._increment = increment;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  HistoryResultItemDtoBuilder();

  HistoryResultItemDtoBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _increment = _$v.increment;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryResultItemDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HistoryResultItemDto;
  }

  @override
  void update(void updates(HistoryResultItemDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryResultItemDto build() {
    _$HistoryResultItemDto _$result;
    try {
      _$result = _$v ??
          new _$HistoryResultItemDto._(
              meta: meta.build(), increment: increment, date: date);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        meta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HistoryResultItemDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
