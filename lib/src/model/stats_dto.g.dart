// GENERATED CODE - DO NOT MODIFY BY HAND

part of stats_dto;

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

Serializer<StatsDto> _$statsDtoSerializer = new _$StatsDtoSerializer();

class _$StatsDtoSerializer implements StructuredSerializer<StatsDto> {
  @override
  final Iterable<Type> types = const [StatsDto, _$StatsDto];
  @override
  final String wireName = 'StatsDto';

  @override
  Iterable serialize(Serializers serializers, StatsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'request_hash',
      serializers.serialize(object.requestHash,
          specifiedType: const FullType(String)),
      'request_cached',
      serializers.serialize(object.requestCached,
          specifiedType: const FullType(bool)),
      'request_cache_expiry',
      serializers.serialize(object.requestCacheExpiry,
          specifiedType: const FullType(int)),
      'scores',
      serializers.serialize(object.scores,
          specifiedType: const FullType(ScoresDto)),
    ];
    if (object.watching != null) {
      result
        ..add('watching')
        ..add(serializers.serialize(object.watching,
            specifiedType: const FullType(int)));
    }
    if (object.completed != null) {
      result
        ..add('completed')
        ..add(serializers.serialize(object.completed,
            specifiedType: const FullType(int)));
    }
    if (object.onHold != null) {
      result
        ..add('on_hold')
        ..add(serializers.serialize(object.onHold,
            specifiedType: const FullType(int)));
    }
    if (object.dropped != null) {
      result
        ..add('dropped')
        ..add(serializers.serialize(object.dropped,
            specifiedType: const FullType(int)));
    }
    if (object.planToWatch != null) {
      result
        ..add('plan_to_watch')
        ..add(serializers.serialize(object.planToWatch,
            specifiedType: const FullType(int)));
    }
    if (object.total != null) {
      result
        ..add('total')
        ..add(serializers.serialize(object.total,
            specifiedType: const FullType(int)));
    }

    return result;
  }

  @override
  StatsDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StatsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'request_hash':
          result.requestHash = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request_cached':
          result.requestCached = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'request_cache_expiry':
          result.requestCacheExpiry = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'watching':
          result.watching = serializers.deserialize(value,
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
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'scores':
          result.scores.replace(serializers.deserialize(value,
              specifiedType: const FullType(ScoresDto)) as ScoresDto);
          break;
      }
    }

    return result.build();
  }
}

class _$StatsDto extends StatsDto {
  @override
  final String requestHash;
  @override
  final bool requestCached;
  @override
  final int requestCacheExpiry;
  @override
  final int watching;
  @override
  final int completed;
  @override
  final int onHold;
  @override
  final int dropped;
  @override
  final int planToWatch;
  @override
  final int total;
  @override
  final ScoresDto scores;

  factory _$StatsDto([void updates(StatsDtoBuilder b)]) =>
      (new StatsDtoBuilder()..update(updates)).build();

  _$StatsDto._(
      {this.requestHash,
      this.requestCached,
      this.requestCacheExpiry,
      this.watching,
      this.completed,
      this.onHold,
      this.dropped,
      this.planToWatch,
      this.total,
      this.scores})
      : super._() {
    if (requestHash == null) {
      throw new BuiltValueNullFieldError('StatsDto', 'requestHash');
    }
    if (requestCached == null) {
      throw new BuiltValueNullFieldError('StatsDto', 'requestCached');
    }
    if (requestCacheExpiry == null) {
      throw new BuiltValueNullFieldError('StatsDto', 'requestCacheExpiry');
    }
    if (scores == null) {
      throw new BuiltValueNullFieldError('StatsDto', 'scores');
    }
  }

  @override
  StatsDto rebuild(void updates(StatsDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StatsDtoBuilder toBuilder() => new StatsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StatsDto &&
        requestHash == other.requestHash &&
        requestCached == other.requestCached &&
        requestCacheExpiry == other.requestCacheExpiry &&
        watching == other.watching &&
        completed == other.completed &&
        onHold == other.onHold &&
        dropped == other.dropped &&
        planToWatch == other.planToWatch &&
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
                                $jc(
                                    $jc($jc(0, requestHash.hashCode),
                                        requestCached.hashCode),
                                    requestCacheExpiry.hashCode),
                                watching.hashCode),
                            completed.hashCode),
                        onHold.hashCode),
                    dropped.hashCode),
                planToWatch.hashCode),
            total.hashCode),
        scores.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StatsDto')
          ..add('requestHash', requestHash)
          ..add('requestCached', requestCached)
          ..add('requestCacheExpiry', requestCacheExpiry)
          ..add('watching', watching)
          ..add('completed', completed)
          ..add('onHold', onHold)
          ..add('dropped', dropped)
          ..add('planToWatch', planToWatch)
          ..add('total', total)
          ..add('scores', scores))
        .toString();
  }
}

class StatsDtoBuilder implements Builder<StatsDto, StatsDtoBuilder> {
  _$StatsDto _$v;

  String _requestHash;
  String get requestHash => _$this._requestHash;
  set requestHash(String requestHash) => _$this._requestHash = requestHash;

  bool _requestCached;
  bool get requestCached => _$this._requestCached;
  set requestCached(bool requestCached) =>
      _$this._requestCached = requestCached;

  int _requestCacheExpiry;
  int get requestCacheExpiry => _$this._requestCacheExpiry;
  set requestCacheExpiry(int requestCacheExpiry) =>
      _$this._requestCacheExpiry = requestCacheExpiry;

  int _watching;
  int get watching => _$this._watching;
  set watching(int watching) => _$this._watching = watching;

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

  int _total;
  int get total => _$this._total;
  set total(int total) => _$this._total = total;

  ScoresDtoBuilder _scores;
  ScoresDtoBuilder get scores => _$this._scores ??= new ScoresDtoBuilder();
  set scores(ScoresDtoBuilder scores) => _$this._scores = scores;

  StatsDtoBuilder();

  StatsDtoBuilder get _$this {
    if (_$v != null) {
      _requestHash = _$v.requestHash;
      _requestCached = _$v.requestCached;
      _requestCacheExpiry = _$v.requestCacheExpiry;
      _watching = _$v.watching;
      _completed = _$v.completed;
      _onHold = _$v.onHold;
      _dropped = _$v.dropped;
      _planToWatch = _$v.planToWatch;
      _total = _$v.total;
      _scores = _$v.scores?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StatsDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StatsDto;
  }

  @override
  void update(void updates(StatsDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$StatsDto build() {
    _$StatsDto _$result;
    try {
      _$result = _$v ??
          new _$StatsDto._(
              requestHash: requestHash,
              requestCached: requestCached,
              requestCacheExpiry: requestCacheExpiry,
              watching: watching,
              completed: completed,
              onHold: onHold,
              dropped: dropped,
              planToWatch: planToWatch,
              total: total,
              scores: scores.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scores';
        scores.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StatsDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
