// GENERATED CODE - DO NOT MODIFY BY HAND

part of score;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Score> _$scoreSerializer = new _$ScoreSerializer();

class _$ScoreSerializer implements StructuredSerializer<Score> {
  @override
  final Iterable<Type> types = const [Score, _$Score];
  @override
  final String wireName = 'Score';

  @override
  Iterable<Object> serialize(Serializers serializers, Score object,
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
  Score deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScoreBuilder();

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

class _$Score extends Score {
  @override
  final int votes;
  @override
  final double percentage;

  factory _$Score([void Function(ScoreBuilder) updates]) =>
      (new ScoreBuilder()..update(updates)).build();

  _$Score._({this.votes, this.percentage}) : super._() {
    if (votes == null) {
      throw new BuiltValueNullFieldError('Score', 'votes');
    }
    if (percentage == null) {
      throw new BuiltValueNullFieldError('Score', 'percentage');
    }
  }

  @override
  Score rebuild(void Function(ScoreBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScoreBuilder toBuilder() => new ScoreBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Score &&
        votes == other.votes &&
        percentage == other.percentage;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, votes.hashCode), percentage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Score')
          ..add('votes', votes)
          ..add('percentage', percentage))
        .toString();
  }
}

class ScoreBuilder implements Builder<Score, ScoreBuilder> {
  _$Score _$v;

  int _votes;
  int get votes => _$this._votes;
  set votes(int votes) => _$this._votes = votes;

  double _percentage;
  double get percentage => _$this._percentage;
  set percentage(double percentage) => _$this._percentage = percentage;

  ScoreBuilder();

  ScoreBuilder get _$this {
    if (_$v != null) {
      _votes = _$v.votes;
      _percentage = _$v.percentage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Score other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Score;
  }

  @override
  void update(void Function(ScoreBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Score build() {
    final _$result = _$v ?? new _$Score._(votes: votes, percentage: percentage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
