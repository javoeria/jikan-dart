// GENERATED CODE - DO NOT MODIFY BY HAND

part of history_result_item;

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

Serializer<HistoryResultItem> _$historyResultItemSerializer =
    new _$HistoryResultItemSerializer();

class _$HistoryResultItemSerializer
    implements StructuredSerializer<HistoryResultItem> {
  @override
  final Iterable<Type> types = const [HistoryResultItem, _$HistoryResultItem];
  @override
  final String wireName = 'HistoryResultItem';

  @override
  Iterable serialize(Serializers serializers, HistoryResultItem object,
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
  HistoryResultItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryResultItemBuilder();

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

class _$HistoryResultItem extends HistoryResultItem {
  @override
  final Meta meta;
  @override
  final int increment;
  @override
  final String date;

  factory _$HistoryResultItem([void updates(HistoryResultItemBuilder b)]) =>
      (new HistoryResultItemBuilder()..update(updates)).build();

  _$HistoryResultItem._({this.meta, this.increment, this.date}) : super._() {
    if (meta == null) {
      throw new BuiltValueNullFieldError('HistoryResultItem', 'meta');
    }
    if (increment == null) {
      throw new BuiltValueNullFieldError('HistoryResultItem', 'increment');
    }
    if (date == null) {
      throw new BuiltValueNullFieldError('HistoryResultItem', 'date');
    }
  }

  @override
  HistoryResultItem rebuild(void updates(HistoryResultItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryResultItemBuilder toBuilder() =>
      new HistoryResultItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryResultItem &&
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
    return (newBuiltValueToStringHelper('HistoryResultItem')
          ..add('meta', meta)
          ..add('increment', increment)
          ..add('date', date))
        .toString();
  }
}

class HistoryResultItemBuilder
    implements Builder<HistoryResultItem, HistoryResultItemBuilder> {
  _$HistoryResultItem _$v;

  MetaBuilder _meta;
  MetaBuilder get meta => _$this._meta ??= new MetaBuilder();
  set meta(MetaBuilder meta) => _$this._meta = meta;

  int _increment;
  int get increment => _$this._increment;
  set increment(int increment) => _$this._increment = increment;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  HistoryResultItemBuilder();

  HistoryResultItemBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _increment = _$v.increment;
      _date = _$v.date;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryResultItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HistoryResultItem;
  }

  @override
  void update(void updates(HistoryResultItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryResultItem build() {
    _$HistoryResultItem _$result;
    try {
      _$result = _$v ??
          new _$HistoryResultItem._(
              meta: meta.build(), increment: increment, date: date);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        meta.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HistoryResultItem', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
