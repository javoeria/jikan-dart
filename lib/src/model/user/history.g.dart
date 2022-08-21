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
      'entry',
      serializers.serialize(object.entry, specifiedType: const FullType(Meta)),
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
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'entry':
          result.entry.replace(serializers.deserialize(value,
              specifiedType: const FullType(Meta))! as Meta);
          break;
        case 'increment':
          result.increment = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$History extends History {
  @override
  final Meta entry;
  @override
  final int increment;
  @override
  final String date;

  factory _$History([void Function(HistoryBuilder)? updates]) =>
      (new HistoryBuilder()..update(updates))._build();

  _$History._(
      {required this.entry, required this.increment, required this.date})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(entry, r'History', 'entry');
    BuiltValueNullFieldError.checkNotNull(increment, r'History', 'increment');
    BuiltValueNullFieldError.checkNotNull(date, r'History', 'date');
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
        entry == other.entry &&
        increment == other.increment &&
        date == other.date;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, entry.hashCode), increment.hashCode), date.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'History')
          ..add('entry', entry)
          ..add('increment', increment)
          ..add('date', date))
        .toString();
  }
}

class HistoryBuilder implements Builder<History, HistoryBuilder> {
  _$History? _$v;

  MetaBuilder? _entry;
  MetaBuilder get entry => _$this._entry ??= new MetaBuilder();
  set entry(MetaBuilder? entry) => _$this._entry = entry;

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
      _entry = $v.entry.toBuilder();
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
  History build() => _build();

  _$History _build() {
    _$History _$result;
    try {
      _$result = _$v ??
          new _$History._(
              entry: entry.build(),
              increment: BuiltValueNullFieldError.checkNotNull(
                  increment, r'History', 'increment'),
              date: BuiltValueNullFieldError.checkNotNull(
                  date, r'History', 'date'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'entry';
        entry.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'History', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
