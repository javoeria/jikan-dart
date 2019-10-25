// GENERATED CODE - DO NOT MODIFY BY HAND

part of stats;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Stats> _$statsSerializer = new _$StatsSerializer();

class _$StatsSerializer implements StructuredSerializer<Stats> {
  @override
  final Iterable<Type> types = const [Stats, _$Stats];
  @override
  final String wireName = 'Stats';

  @override
  Iterable<Object> serialize(Serializers serializers, Stats object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'completed',
      serializers.serialize(object.completed,
          specifiedType: const FullType(int)),
      'on_hold',
      serializers.serialize(object.onHold, specifiedType: const FullType(int)),
      'dropped',
      serializers.serialize(object.dropped, specifiedType: const FullType(int)),
      'total',
      serializers.serialize(object.total, specifiedType: const FullType(int)),
      'scores',
      serializers.serialize(object.scores,
          specifiedType: const FullType(Scores)),
    ];
    if (object.watching != null) {
      result
        ..add('watching')
        ..add(serializers.serialize(object.watching,
            specifiedType: const FullType(int)));
    }
    if (object.reading != null) {
      result
        ..add('reading')
        ..add(serializers.serialize(object.reading,
            specifiedType: const FullType(int)));
    }
    if (object.planToWatch != null) {
      result
        ..add('plan_to_watch')
        ..add(serializers.serialize(object.planToWatch,
            specifiedType: const FullType(int)));
    }
    if (object.planToRead != null) {
      result
        ..add('plan_to_read')
        ..add(serializers.serialize(object.planToRead,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Stats deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'watching':
          result.watching = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reading':
          result.reading = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'completed':
          result.completed = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'on_hold':
          result.onHold = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'dropped':
          result.dropped = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'plan_to_watch':
          result.planToWatch = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'plan_to_read':
          result.planToRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'scores':
          result.scores.replace(serializers.deserialize(value,
              specifiedType: const FullType(Scores)) as Scores);
          break;
      }
    }

    return result.build();
  }
}

class _$Stats extends Stats {
  @override
  final int watching;
  @override
  final int reading;
  @override
  final int completed;
  @override
  final int onHold;
  @override
  final int dropped;
  @override
  final int planToWatch;
  @override
  final int planToRead;
  @override
  final int total;
  @override
  final Scores scores;

  factory _$Stats([void Function(StatsBuilder) updates]) =>
      (new StatsBuilder()..update(updates)).build();

  _$Stats._(
      {this.watching,
      this.reading,
      this.completed,
      this.onHold,
      this.dropped,
      this.planToWatch,
      this.planToRead,
      this.total,
      this.scores})
      : super._() {
    if (completed == null) {
      throw new BuiltValueNullFieldError('Stats', 'completed');
    }
    if (onHold == null) {
      throw new BuiltValueNullFieldError('Stats', 'onHold');
    }
    if (dropped == null) {
      throw new BuiltValueNullFieldError('Stats', 'dropped');
    }
    if (total == null) {
      throw new BuiltValueNullFieldError('Stats', 'total');
    }
    if (scores == null) {
      throw new BuiltValueNullFieldError('Stats', 'scores');
    }
  }

  @override
  Stats rebuild(void Function(StatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsBuilder toBuilder() => new StatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stats &&
        watching == other.watching &&
        reading == other.reading &&
        completed == other.completed &&
        onHold == other.onHold &&
        dropped == other.dropped &&
        planToWatch == other.planToWatch &&
        planToRead == other.planToRead &&
        total == other.total &&
        scores == other.scores;
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
                                $jc($jc(0, watching.hashCode),
                                    reading.hashCode),
                                completed.hashCode),
                            onHold.hashCode),
                        dropped.hashCode),
                    planToWatch.hashCode),
                planToRead.hashCode),
            total.hashCode),
        scores.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Stats')
          ..add('watching', watching)
          ..add('reading', reading)
          ..add('completed', completed)
          ..add('onHold', onHold)
          ..add('dropped', dropped)
          ..add('planToWatch', planToWatch)
          ..add('planToRead', planToRead)
          ..add('total', total)
          ..add('scores', scores))
        .toString();
  }
}

class StatsBuilder implements Builder<Stats, StatsBuilder> {
  _$Stats _$v;

  int _watching;
  int get watching => _$this._watching;
  set watching(int watching) => _$this._watching = watching;

  int _reading;
  int get reading => _$this._reading;
  set reading(int reading) => _$this._reading = reading;

  int _completed;
  int get completed => _$this._completed;
  set completed(int completed) => _$this._completed = completed;

  int _onHold;
  int get onHold => _$this._onHold;
  set onHold(int onHold) => _$this._onHold = onHold;

  int _dropped;
  int get dropped => _$this._dropped;
  set dropped(int dropped) => _$this._dropped = dropped;

  int _planToWatch;
  int get planToWatch => _$this._planToWatch;
  set planToWatch(int planToWatch) => _$this._planToWatch = planToWatch;

  int _planToRead;
  int get planToRead => _$this._planToRead;
  set planToRead(int planToRead) => _$this._planToRead = planToRead;

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  ScoresBuilder _scores;
  ScoresBuilder get scores => _$this._scores ??= new ScoresBuilder();
  set scores(ScoresBuilder scores) => _$this._scores = scores;

  StatsBuilder();

  StatsBuilder get _$this {
    if (_$v != null) {
      _watching = _$v.watching;
      _reading = _$v.reading;
      _completed = _$v.completed;
      _onHold = _$v.onHold;
      _dropped = _$v.dropped;
      _planToWatch = _$v.planToWatch;
      _planToRead = _$v.planToRead;
      _total = _$v.total;
      _scores = _$v.scores?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stats other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Stats;
  }

  @override
  void update(void Function(StatsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Stats build() {
    _$Stats _$result;
    try {
      _$result = _$v ??
          new _$Stats._(
              watching: watching,
              reading: reading,
              completed: completed,
              onHold: onHold,
              dropped: dropped,
              planToWatch: planToWatch,
              planToRead: planToRead,
              total: total,
              scores: scores.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scores';
        scores.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Stats', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
