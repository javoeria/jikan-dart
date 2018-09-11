// GENERATED CODE - DO NOT MODIFY BY HAND

part of score_dto;

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

Serializer<ScoreDto> _$scoreDtoSerializer = new _$ScoreDtoSerializer();

class _$ScoreDtoSerializer implements StructuredSerializer<ScoreDto> {
  @override
  final Iterable<Type> types = const [ScoreDto, _$ScoreDto];
  @override
  final String wireName = 'ScoreDto';

  @override
  Iterable serialize(Serializers serializers, ScoreDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'votes',
      serializers.serialize(object.votes, specifiedType: const FullType(int)),
      'percentage',
      serializers.serialize(object.percentage,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  ScoreDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScoreDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'votes':
          result.votes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'percentage':
          result.percentage = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ScoreDto extends ScoreDto {
  @override
  final int votes;
  @override
  final double percentage;

  factory _$ScoreDto([void updates(ScoreDtoBuilder b)]) =>
      (new ScoreDtoBuilder()..update(updates)).build();

  _$ScoreDto._({this.votes, this.percentage}) : super._() {
    if (votes == null) {
      throw new BuiltValueNullFieldError('ScoreDto', 'votes');
    }
    if (percentage == null) {
      throw new BuiltValueNullFieldError('ScoreDto', 'percentage');
    }
  }

  @override
  ScoreDto rebuild(void updates(ScoreDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScoreDtoBuilder toBuilder() => new ScoreDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScoreDto &&
        votes == other.votes &&
        percentage == other.percentage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, votes.hashCode), percentage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScoreDto')
          ..add('votes', votes)
          ..add('percentage', percentage))
        .toString();
  }
}

class ScoreDtoBuilder implements Builder<ScoreDto, ScoreDtoBuilder> {
  _$ScoreDto _$v;

  int _votes;
  int get votes => _$this._votes;
  set votes(int votes) => _$this._votes = votes;

  double _percentage;
  double get percentage => _$this._percentage;
  set percentage(double percentage) => _$this._percentage = percentage;

  ScoreDtoBuilder();

  ScoreDtoBuilder get _$this {
    if (_$v != null) {
      _votes = _$v.votes;
      _percentage = _$v.percentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScoreDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScoreDto;
  }

  @override
  void update(void updates(ScoreDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScoreDto build() {
    final _$result =
        _$v ?? new _$ScoreDto._(votes: votes, percentage: percentage);
    replace(_$result);
    return _$result;
  }
}
