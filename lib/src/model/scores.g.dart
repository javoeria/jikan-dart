// GENERATED CODE - DO NOT MODIFY BY HAND

part of scores;

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

Serializer<Scores> _$scoresSerializer = new _$ScoresSerializer();

class _$ScoresSerializer implements StructuredSerializer<Scores> {
  @override
  final Iterable<Type> types = const [Scores, _$Scores];
  @override
  final String wireName = 'Scores';

  @override
  Iterable serialize(Serializers serializers, Scores object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.score10 != null) {
      result
        ..add('10')
        ..add(serializers.serialize(object.score10,
            specifiedType: const FullType(Score)));
    }
    if (object.score9 != null) {
      result
        ..add('9')
        ..add(serializers.serialize(object.score9,
            specifiedType: const FullType(Score)));
    }
    if (object.score8 != null) {
      result
        ..add('8')
        ..add(serializers.serialize(object.score8,
            specifiedType: const FullType(Score)));
    }
    if (object.score7 != null) {
      result
        ..add('7')
        ..add(serializers.serialize(object.score7,
            specifiedType: const FullType(Score)));
    }
    if (object.score6 != null) {
      result
        ..add('6')
        ..add(serializers.serialize(object.score6,
            specifiedType: const FullType(Score)));
    }
    if (object.score5 != null) {
      result
        ..add('5')
        ..add(serializers.serialize(object.score5,
            specifiedType: const FullType(Score)));
    }
    if (object.score4 != null) {
      result
        ..add('4')
        ..add(serializers.serialize(object.score4,
            specifiedType: const FullType(Score)));
    }
    if (object.score3 != null) {
      result
        ..add('3')
        ..add(serializers.serialize(object.score3,
            specifiedType: const FullType(Score)));
    }
    if (object.score2 != null) {
      result
        ..add('2')
        ..add(serializers.serialize(object.score2,
            specifiedType: const FullType(Score)));
    }
    if (object.score1 != null) {
      result
        ..add('1')
        ..add(serializers.serialize(object.score1,
            specifiedType: const FullType(Score)));
    }

    return result;
  }

  @override
  Scores deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScoresBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '10':
          result.score10.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '9':
          result.score9.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '8':
          result.score8.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '7':
          result.score7.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '6':
          result.score6.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '5':
          result.score5.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '4':
          result.score4.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '3':
          result.score3.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '2':
          result.score2.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
        case '1':
          result.score1.replace(serializers.deserialize(value,
              specifiedType: const FullType(Score)) as Score);
          break;
      }
    }

    return result.build();
  }
}

class _$Scores extends Scores {
  @override
  final Score score10;
  @override
  final Score score9;
  @override
  final Score score8;
  @override
  final Score score7;
  @override
  final Score score6;
  @override
  final Score score5;
  @override
  final Score score4;
  @override
  final Score score3;
  @override
  final Score score2;
  @override
  final Score score1;

  factory _$Scores([void updates(ScoresBuilder b)]) =>
      (new ScoresBuilder()..update(updates)).build();

  _$Scores._(
      {this.score10,
      this.score9,
      this.score8,
      this.score7,
      this.score6,
      this.score5,
      this.score4,
      this.score3,
      this.score2,
      this.score1})
      : super._();

  @override
  Scores rebuild(void updates(ScoresBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScoresBuilder toBuilder() => new ScoresBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Scores &&
        score10 == other.score10 &&
        score9 == other.score9 &&
        score8 == other.score8 &&
        score7 == other.score7 &&
        score6 == other.score6 &&
        score5 == other.score5 &&
        score4 == other.score4 &&
        score3 == other.score3 &&
        score2 == other.score2 &&
        score1 == other.score1;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, score10.hashCode),
                                        score9.hashCode),
                                    score8.hashCode),
                                score7.hashCode),
                            score6.hashCode),
                        score5.hashCode),
                    score4.hashCode),
                score3.hashCode),
            score2.hashCode),
        score1.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Scores')
          ..add('score10', score10)
          ..add('score9', score9)
          ..add('score8', score8)
          ..add('score7', score7)
          ..add('score6', score6)
          ..add('score5', score5)
          ..add('score4', score4)
          ..add('score3', score3)
          ..add('score2', score2)
          ..add('score1', score1))
        .toString();
  }
}

class ScoresBuilder implements Builder<Scores, ScoresBuilder> {
  _$Scores _$v;

  ScoreBuilder _score10;
  ScoreBuilder get score10 => _$this._score10 ??= new ScoreBuilder();
  set score10(ScoreBuilder score10) => _$this._score10 = score10;

  ScoreBuilder _score9;
  ScoreBuilder get score9 => _$this._score9 ??= new ScoreBuilder();
  set score9(ScoreBuilder score9) => _$this._score9 = score9;

  ScoreBuilder _score8;
  ScoreBuilder get score8 => _$this._score8 ??= new ScoreBuilder();
  set score8(ScoreBuilder score8) => _$this._score8 = score8;

  ScoreBuilder _score7;
  ScoreBuilder get score7 => _$this._score7 ??= new ScoreBuilder();
  set score7(ScoreBuilder score7) => _$this._score7 = score7;

  ScoreBuilder _score6;
  ScoreBuilder get score6 => _$this._score6 ??= new ScoreBuilder();
  set score6(ScoreBuilder score6) => _$this._score6 = score6;

  ScoreBuilder _score5;
  ScoreBuilder get score5 => _$this._score5 ??= new ScoreBuilder();
  set score5(ScoreBuilder score5) => _$this._score5 = score5;

  ScoreBuilder _score4;
  ScoreBuilder get score4 => _$this._score4 ??= new ScoreBuilder();
  set score4(ScoreBuilder score4) => _$this._score4 = score4;

  ScoreBuilder _score3;
  ScoreBuilder get score3 => _$this._score3 ??= new ScoreBuilder();
  set score3(ScoreBuilder score3) => _$this._score3 = score3;

  ScoreBuilder _score2;
  ScoreBuilder get score2 => _$this._score2 ??= new ScoreBuilder();
  set score2(ScoreBuilder score2) => _$this._score2 = score2;

  ScoreBuilder _score1;
  ScoreBuilder get score1 => _$this._score1 ??= new ScoreBuilder();
  set score1(ScoreBuilder score1) => _$this._score1 = score1;

  ScoresBuilder();

  ScoresBuilder get _$this {
    if (_$v != null) {
      _score10 = _$v.score10?.toBuilder();
      _score9 = _$v.score9?.toBuilder();
      _score8 = _$v.score8?.toBuilder();
      _score7 = _$v.score7?.toBuilder();
      _score6 = _$v.score6?.toBuilder();
      _score5 = _$v.score5?.toBuilder();
      _score4 = _$v.score4?.toBuilder();
      _score3 = _$v.score3?.toBuilder();
      _score2 = _$v.score2?.toBuilder();
      _score1 = _$v.score1?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Scores other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Scores;
  }

  @override
  void update(void updates(ScoresBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$Scores build() {
    _$Scores _$result;
    try {
      _$result = _$v ??
          new _$Scores._(
              score10: _score10?.build(),
              score9: _score9?.build(),
              score8: _score8?.build(),
              score7: _score7?.build(),
              score6: _score6?.build(),
              score5: _score5?.build(),
              score4: _score4?.build(),
              score3: _score3?.build(),
              score2: _score2?.build(),
              score1: _score1?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'score10';
        _score10?.build();
        _$failedField = 'score9';
        _score9?.build();
        _$failedField = 'score8';
        _score8?.build();
        _$failedField = 'score7';
        _score7?.build();
        _$failedField = 'score6';
        _score6?.build();
        _$failedField = 'score5';
        _score5?.build();
        _$failedField = 'score4';
        _score4?.build();
        _$failedField = 'score3';
        _score3?.build();
        _$failedField = 'score2';
        _score2?.build();
        _$failedField = 'score1';
        _score1?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Scores', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
