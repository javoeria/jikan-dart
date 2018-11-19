// GENERATED CODE - DO NOT MODIFY BY HAND

part of history_result_dto;

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

Serializer<HistoryResultDto> _$historyResultDtoSerializer =
    new _$HistoryResultDtoSerializer();

class _$HistoryResultDtoSerializer
    implements StructuredSerializer<HistoryResultDto> {
  @override
  final Iterable<Type> types = const [HistoryResultDto, _$HistoryResultDto];
  @override
  final String wireName = 'HistoryResultDto';

  @override
  Iterable serialize(Serializers serializers, HistoryResultDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'history',
      serializers.serialize(object.history,
          specifiedType: const FullType(
              BuiltList, const [const FullType(HistoryResultItemDto)])),
    ];

    return result;
  }

  @override
  HistoryResultDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HistoryResultDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'history':
          result.history.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HistoryResultItemDto)]))
              as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$HistoryResultDto extends HistoryResultDto {
  @override
  final BuiltList<HistoryResultItemDto> history;

  factory _$HistoryResultDto([void updates(HistoryResultDtoBuilder b)]) =>
      (new HistoryResultDtoBuilder()..update(updates)).build();

  _$HistoryResultDto._({this.history}) : super._() {
    if (history == null) {
      throw new BuiltValueNullFieldError('HistoryResultDto', 'history');
    }
  }

  @override
  HistoryResultDto rebuild(void updates(HistoryResultDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  HistoryResultDtoBuilder toBuilder() =>
      new HistoryResultDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HistoryResultDto && history == other.history;
  }

  @override
  int get hashCode {
    return $jf($jc(0, history.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HistoryResultDto')
          ..add('history', history))
        .toString();
  }
}

class HistoryResultDtoBuilder
    implements Builder<HistoryResultDto, HistoryResultDtoBuilder> {
  _$HistoryResultDto _$v;

  ListBuilder<HistoryResultItemDto> _history;
  ListBuilder<HistoryResultItemDto> get history =>
      _$this._history ??= new ListBuilder<HistoryResultItemDto>();
  set history(ListBuilder<HistoryResultItemDto> history) =>
      _$this._history = history;

  HistoryResultDtoBuilder();

  HistoryResultDtoBuilder get _$this {
    if (_$v != null) {
      _history = _$v.history?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HistoryResultDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HistoryResultDto;
  }

  @override
  void update(void updates(HistoryResultDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$HistoryResultDto build() {
    _$HistoryResultDto _$result;
    try {
      _$result = _$v ?? new _$HistoryResultDto._(history: history.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'history';
        history.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'HistoryResultDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
