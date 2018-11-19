// GENERATED CODE - DO NOT MODIFY BY HAND

part of anime_stats_dto;

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

Serializer<AnimeStatsDto> _$animeStatsDtoSerializer =
    new _$AnimeStatsDtoSerializer();

class _$AnimeStatsDtoSerializer implements StructuredSerializer<AnimeStatsDto> {
  @override
  final Iterable<Type> types = const [AnimeStatsDto, _$AnimeStatsDto];
  @override
  final String wireName = 'AnimeStatsDto';

  @override
  Iterable serialize(Serializers serializers, AnimeStatsDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'days_watched',
      serializers.serialize(object.daysWatched,
          specifiedType: const FullType(double)),
      'mean_score',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'watching',
      serializers.serialize(object.watching,
          specifiedType: const FullType(int)),
      'completed',
      serializers.serialize(object.completed,
          specifiedType: const FullType(int)),
      'on_hold',
      serializers.serialize(object.onHold, specifiedType: const FullType(int)),
      'dropped',
      serializers.serialize(object.dropped, specifiedType: const FullType(int)),
      'plan_to_watch',
      serializers.serialize(object.planToWatch,
          specifiedType: const FullType(int)),
      'total_entries',
      serializers.serialize(object.totalEntries,
          specifiedType: const FullType(int)),
      'rewatched',
      serializers.serialize(object.rewatched,
          specifiedType: const FullType(int)),
      'episodes_watched',
      serializers.serialize(object.episodesWatched,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  AnimeStatsDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AnimeStatsDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'days_watched':
          result.daysWatched = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'mean_score':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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
        case 'total_entries':
          result.totalEntries = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rewatched':
          result.rewatched = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'episodes_watched':
          result.episodesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AnimeStatsDto extends AnimeStatsDto {
  @override
  final double daysWatched;
  @override
  final double meanScore;
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
  final int totalEntries;
  @override
  final int rewatched;
  @override
  final int episodesWatched;

  factory _$AnimeStatsDto([void updates(AnimeStatsDtoBuilder b)]) =>
      (new AnimeStatsDtoBuilder()..update(updates)).build();

  _$AnimeStatsDto._(
      {this.daysWatched,
      this.meanScore,
      this.watching,
      this.completed,
      this.onHold,
      this.dropped,
      this.planToWatch,
      this.totalEntries,
      this.rewatched,
      this.episodesWatched})
      : super._() {
    if (daysWatched == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'daysWatched');
    }
    if (meanScore == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'meanScore');
    }
    if (watching == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'watching');
    }
    if (completed == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'completed');
    }
    if (onHold == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'onHold');
    }
    if (dropped == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'dropped');
    }
    if (planToWatch == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'planToWatch');
    }
    if (totalEntries == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'totalEntries');
    }
    if (rewatched == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'rewatched');
    }
    if (episodesWatched == null) {
      throw new BuiltValueNullFieldError('AnimeStatsDto', 'episodesWatched');
    }
  }

  @override
  AnimeStatsDto rebuild(void updates(AnimeStatsDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  AnimeStatsDtoBuilder toBuilder() => new AnimeStatsDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AnimeStatsDto &&
        daysWatched == other.daysWatched &&
        meanScore == other.meanScore &&
        watching == other.watching &&
        completed == other.completed &&
        onHold == other.onHold &&
        dropped == other.dropped &&
        planToWatch == other.planToWatch &&
        totalEntries == other.totalEntries &&
        rewatched == other.rewatched &&
        episodesWatched == other.episodesWatched;
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
                                    $jc($jc(0, daysWatched.hashCode),
                                        meanScore.hashCode),
                                    watching.hashCode),
                                completed.hashCode),
                            onHold.hashCode),
                        dropped.hashCode),
                    planToWatch.hashCode),
                totalEntries.hashCode),
            rewatched.hashCode),
        episodesWatched.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AnimeStatsDto')
          ..add('daysWatched', daysWatched)
          ..add('meanScore', meanScore)
          ..add('watching', watching)
          ..add('completed', completed)
          ..add('onHold', onHold)
          ..add('dropped', dropped)
          ..add('planToWatch', planToWatch)
          ..add('totalEntries', totalEntries)
          ..add('rewatched', rewatched)
          ..add('episodesWatched', episodesWatched))
        .toString();
  }
}

class AnimeStatsDtoBuilder
    implements Builder<AnimeStatsDto, AnimeStatsDtoBuilder> {
  _$AnimeStatsDto _$v;

  double _daysWatched;
  double get daysWatched => _$this._daysWatched;
  set daysWatched(double daysWatched) => _$this._daysWatched = daysWatched;

  double _meanScore;
  double get meanScore => _$this._meanScore;
  set meanScore(double meanScore) => _$this._meanScore = meanScore;

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

  int _totalEntries;
  int get totalEntries => _$this._totalEntries;
  set totalEntries(int totalEntries) => _$this._totalEntries = totalEntries;

  int _rewatched;
  int get rewatched => _$this._rewatched;
  set rewatched(int rewatched) => _$this._rewatched = rewatched;

  int _episodesWatched;
  int get episodesWatched => _$this._episodesWatched;
  set episodesWatched(int episodesWatched) =>
      _$this._episodesWatched = episodesWatched;

  AnimeStatsDtoBuilder();

  AnimeStatsDtoBuilder get _$this {
    if (_$v != null) {
      _daysWatched = _$v.daysWatched;
      _meanScore = _$v.meanScore;
      _watching = _$v.watching;
      _completed = _$v.completed;
      _onHold = _$v.onHold;
      _dropped = _$v.dropped;
      _planToWatch = _$v.planToWatch;
      _totalEntries = _$v.totalEntries;
      _rewatched = _$v.rewatched;
      _episodesWatched = _$v.episodesWatched;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AnimeStatsDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AnimeStatsDto;
  }

  @override
  void update(void updates(AnimeStatsDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$AnimeStatsDto build() {
    final _$result = _$v ??
        new _$AnimeStatsDto._(
            daysWatched: daysWatched,
            meanScore: meanScore,
            watching: watching,
            completed: completed,
            onHold: onHold,
            dropped: dropped,
            planToWatch: planToWatch,
            totalEntries: totalEntries,
            rewatched: rewatched,
            episodesWatched: episodesWatched);
    replace(_$result);
    return _$result;
  }
}
