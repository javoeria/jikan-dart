// GENERATED CODE - DO NOT MODIFY BY HAND

part of history;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<History> _$historySerializer = new _$HistorySerializer();

class _$HistorySerializer implements StructuredSerializer<History> {
  @override
  final Iterable<Type> types = const [History, _$History];
  @override
  final String wireName = 'History';

  @override
  Iterable<Object?> serialize(Serializers serializers, History object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'meta',
      serializers.serialize(object.meta, specifiedType: const FullType(Meta)),
      'increment',
      serializers.serialize(object.increment,
          specifiedType: const FullType(int)),
      'date',
      serializers.serialize(object.date, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  History deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(Meta))! as Meta);
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

class _$History extends History {
  @override
  final Meta meta;
  @override
  final int increment;
  @override
  final String date;

  factory _$History([void Function(HistoryBuilder)? updates]) =>
      (new HistoryBuilder()..update(updates)).build();

  _$History._({required this.meta, required this.increment, required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(meta, 'History', 'meta');
    BuiltValueNullFieldError.checkNotNull(increment, 'History', 'increment');
    BuiltValueNullFieldError.checkNotNull(date, 'History', 'date');
  }

  @override
  History rebuild(void Function(HistoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryBuilder toBuilder() => new HistoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is History &&
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
    return (newBuiltValueToStringHelper('History')
          ..add('meta', meta)
          ..add('increment', increment)
          ..add('date', date))
        .toString();
  }
}

class HistoryBuilder implements Builder<History, HistoryBuilder> {
  _$History? _$v;

  MetaBuilder? _meta;
  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();
  set meta(MetaBuilder? meta) => _$this._meta = meta;

  int? _increment;
  int? get increment => _$this._increment;
  set increment(int? increment) => _$this._increment = increment;

  String? _date;
  String? get date => _$this._date;
  set date(String? date) => _$this._date = date;

  HistoryBuilder();

  HistoryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _meta = $v.meta.toBuilder();
      _increment = $v.increment;
      _date = $v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(History other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$History;
  }

  @override
  void update(void Function(HistoryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$History build() {
    _$History _$result;
    try {
      _$result = _$v ??
          new _$History._(
              meta: meta.build(),
              increment: BuiltValueNullFieldError.checkNotNull(
                  increment, 'History', 'increment'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, 'History', 'date'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'meta';
        meta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'History', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
