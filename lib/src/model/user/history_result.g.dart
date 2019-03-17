// GENERATED CODE - DO NOT MODIFY BY HAND

part of history_result;

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

Serializer<HistoryResult> _$historyResultSerializer =
    new _$HistoryResultSerializer();

class _$HistoryResultSerializer implements StructuredSerializer<HistoryResult> {
  @override
  final Iterable<Type> types = const [HistoryResult, _$HistoryResult];
  @override
  final String wireName = 'HistoryResult';

  @override
  Iterable serialize(Serializers serializers, HistoryResult object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'history',
      serializers.serialize(object.history,
          specifiedType: const FullType(
              BuiltList, const [const FullType(HistoryResultItem)])),
    ];

    return result;
  }

  @override
  HistoryResult deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryResultBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'history':
          result.history.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HistoryResultItem)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$HistoryResult extends HistoryResult {
  @override
  final BuiltList<HistoryResultItem> history;

  factory _$HistoryResult([void updates(HistoryResultBuilder b)]) =>
      (new HistoryResultBuilder()..update(updates)).build();

  _$HistoryResult._({this.history}) : super._() {
    if (history == null) {
      throw new BuiltValueNullFieldError('HistoryResult', 'history');
    }
  }

  @override
  HistoryResult rebuild(void updates(HistoryResultBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryResultBuilder toBuilder() => new HistoryResultBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryResult && history == other.history;
  }

  @override
  int get hashCode {
    return $jf($jc(0, history.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistoryResult')
          ..add('history', history))
        .toString();
  }
}

class HistoryResultBuilder
    implements Builder<HistoryResult, HistoryResultBuilder> {
  _$HistoryResult _$v;

  ListBuilder<HistoryResultItem> _history;
  ListBuilder<HistoryResultItem> get history =>
      _$this._history ??= new ListBuilder<HistoryResultItem>();
  set history(ListBuilder<HistoryResultItem> history) =>
      _$this._history = history;

  HistoryResultBuilder();

  HistoryResultBuilder get _$this {
    if (_$v != null) {
      _history = _$v.history?.toBuilder();
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
  void update(void updates(HistoryResultBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryResult build() {
    _$HistoryResult _$result;
    try {
      _$result = _$v ?? new _$HistoryResult._(history: history.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'history';
        history.build();
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
