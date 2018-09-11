// GENERATED CODE - DO NOT MODIFY BY HAND

part of scores_dto;

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

Serializer<ScoresDto> _$scoresDtoSerializer = new _$ScoresDtoSerializer();

class _$ScoresDtoSerializer implements StructuredSerializer<ScoresDto> {
  @override
  final Iterable<Type> types = const [ScoresDto, _$ScoresDto];
  @override
  final String wireName = 'ScoresDto';

  @override
  Iterable serialize(Serializers serializers, ScoresDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.score10 != null) {
      result
        ..add('10')
        ..add(serializers.serialize(object.score10,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score9 != null) {
      result
        ..add('9')
        ..add(serializers.serialize(object.score9,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score8 != null) {
      result
        ..add('8')
        ..add(serializers.serialize(object.score8,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score7 != null) {
      result
        ..add('7')
        ..add(serializers.serialize(object.score7,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score6 != null) {
      result
        ..add('6')
        ..add(serializers.serialize(object.score6,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score5 != null) {
      result
        ..add('5')
        ..add(serializers.serialize(object.score5,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score4 != null) {
      result
        ..add('4')
        ..add(serializers.serialize(object.score4,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score3 != null) {
      result
        ..add('3')
        ..add(serializers.serialize(object.score3,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score2 != null) {
      result
        ..add('2')
        ..add(serializers.serialize(object.score2,
            specifiedType: const FullType(ScoreDto)));
    }
    if (object.score1 != null) {
      result
        ..add('1')
        ..add(serializers.serialize(object.score1,
            specifiedType: const FullType(ScoreDto)));
    }

    return result;
  }

  @override
  ScoresDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScoresDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '10':
          result.score10.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '9':
          result.score9.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '8':
          result.score8.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '7':
          result.score7.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '6':
          result.score6.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '5':
          result.score5.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '4':
          result.score4.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '3':
          result.score3.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '2':
          result.score2.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
        case '1':
          result.score1.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoreDto)) as ScoreDto);
          break;
      }
    }

    return result.build();
  }
}

class _$ScoresDto extends ScoresDto {
  @override
  final ScoreDto score10;
  @override
  final ScoreDto score9;
  @override
  final ScoreDto score8;
  @override
  final ScoreDto score7;
  @override
  final ScoreDto score6;
  @override
  final ScoreDto score5;
  @override
  final ScoreDto score4;
  @override
  final ScoreDto score3;
  @override
  final ScoreDto score2;
  @override
  final ScoreDto score1;

  factory _$ScoresDto([void updates(ScoresDtoBuilder b)]) =>
      (new ScoresDtoBuilder()..update(updates)).build();

  _$ScoresDto._(
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
  ScoresDto rebuild(void updates(ScoresDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ScoresDtoBuilder toBuilder() => new ScoresDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScoresDto &&
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
    return (newBuiltValueToStringHelper('ScoresDto')
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

class ScoresDtoBuilder implements Builder<ScoresDto, ScoresDtoBuilder> {
  _$ScoresDto _$v;

  ScoreDtoBuilder _score10;
  ScoreDtoBuilder get score10 => _$this._score10 ??= new ScoreDtoBuilder();
  set score10(ScoreDtoBuilder score10) => _$this._score10 = score10;

  ScoreDtoBuilder _score9;
  ScoreDtoBuilder get score9 => _$this._score9 ??= new ScoreDtoBuilder();
  set score9(ScoreDtoBuilder score9) => _$this._score9 = score9;

  ScoreDtoBuilder _score8;
  ScoreDtoBuilder get score8 => _$this._score8 ??= new ScoreDtoBuilder();
  set score8(ScoreDtoBuilder score8) => _$this._score8 = score8;

  ScoreDtoBuilder _score7;
  ScoreDtoBuilder get score7 => _$this._score7 ??= new ScoreDtoBuilder();
  set score7(ScoreDtoBuilder score7) => _$this._score7 = score7;

  ScoreDtoBuilder _score6;
  ScoreDtoBuilder get score6 => _$this._score6 ??= new ScoreDtoBuilder();
  set score6(ScoreDtoBuilder score6) => _$this._score6 = score6;

  ScoreDtoBuilder _score5;
  ScoreDtoBuilder get score5 => _$this._score5 ??= new ScoreDtoBuilder();
  set score5(ScoreDtoBuilder score5) => _$this._score5 = score5;

  ScoreDtoBuilder _score4;
  ScoreDtoBuilder get score4 => _$this._score4 ??= new ScoreDtoBuilder();
  set score4(ScoreDtoBuilder score4) => _$this._score4 = score4;

  ScoreDtoBuilder _score3;
  ScoreDtoBuilder get score3 => _$this._score3 ??= new ScoreDtoBuilder();
  set score3(ScoreDtoBuilder score3) => _$this._score3 = score3;

  ScoreDtoBuilder _score2;
  ScoreDtoBuilder get score2 => _$this._score2 ??= new ScoreDtoBuilder();
  set score2(ScoreDtoBuilder score2) => _$this._score2 = score2;

  ScoreDtoBuilder _score1;
  ScoreDtoBuilder get score1 => _$this._score1 ??= new ScoreDtoBuilder();
  set score1(ScoreDtoBuilder score1) => _$this._score1 = score1;

  ScoresDtoBuilder();

  ScoresDtoBuilder get _$this {
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
  void replace(ScoresDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScoresDto;
  }

  @override
  void update(void updates(ScoresDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ScoresDto build() {
    _$ScoresDto _$result;
    try {
      _$result = _$v ??
          new _$ScoresDto._(
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
            'ScoresDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
