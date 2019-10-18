// GENERATED CODE - DO NOT MODIFY BY HAND

part of history_result;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HistoryResult> _$historyResultSerializer =
    new _$HistoryResultSerializer();

class _$HistoryResultSerializer implements StructuredSerializer<HistoryResult> {
  @override
  final Iterable<Type> types = const [HistoryResult, _$HistoryResult];
  @override
  final String wireName = 'HistoryResult';

  @override
  Iterable<Object> serialize(Serializers serializers, HistoryResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
  HistoryResult deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
              specifiedType: const FullType(Meta)) as Meta);
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

class _$HistoryResult extends HistoryResult {
  @override
  final Meta meta;
  @override
  final int increment;
  @override
  final String date;

  factory _$HistoryResult([void Function(HistoryResultBuilder) updates]) =>
      (new HistoryResultBuilder()..update(updates)).build();

  _$HistoryResult._({this.meta, this.increment, this.date}) : super._() {
    if (meta == null) {
      throw new BuiltValueNullFieldError('HistoryResult', 'meta');
    }
    if (increment == null) {
      throw new BuiltValueNullFieldError('HistoryResult', 'increment');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('HistoryResult', 'date');
    }
  }

  @override
  HistoryResult rebuild(void Function(HistoryResultBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryResultBuilder toBuilder() => new HistoryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryResult &&
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
    return (newBuiltValueToStringHelper('HistoryResult')
          ..add('meta', meta)
          ..add('increment', increment)
          ..add('date', date))
        .toString();
  }
}

class HistoryResultBuilder
    implements Builder<HistoryResult, HistoryResultBuilder> {
  _$HistoryResult _$v;

  MetaBuilder _meta;
  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();
  set meta(MetaBuilder meta) => _$this._meta = meta;

  int _increment;
  int get increment => _$this._increment;
  set increment(int increment) => _$this._increment = increment;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  HistoryResultBuilder();

  HistoryResultBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _increment = _$v.increment;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryResult other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HistoryResult;
  }

  @override
  void update(void Function(HistoryResultBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryResult build() {
    _$HistoryResult _$result;
    try {
      _$result = _$v ??
          new _$HistoryResult._(
              meta: meta.build(), increment: increment, date: date);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        meta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HistoryResult', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
