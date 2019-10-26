// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_stats;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserStats> _$userStatsSerializer = new _$UserStatsSerializer();

class _$UserStatsSerializer implements StructuredSerializer<UserStats> {
  @override
  final Iterable<Type> types = const [UserStats, _$UserStats];
  @override
  final String wireName = 'UserStats';

  @override
  Iterable<Object> serialize(Serializers serializers, UserStats object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mean_score',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'completed',
      serializers.serialize(object.completed,
          specifiedType: const FullType(int)),
      'on_hold',
      serializers.serialize(object.onHold, specifiedType: const FullType(int)),
      'dropped',
      serializers.serialize(object.dropped, specifiedType: const FullType(int)),
      'total_entries',
      serializers.serialize(object.totalEntries,
          specifiedType: const FullType(int)),
    ];
    if (object.daysWatched != null) {
      result
        ..add('days_watched')
        ..add(serializers.serialize(object.daysWatched,
            specifiedType: const FullType(double)));
    }
    if (object.daysRead != null) {
      result
        ..add('days_read')
        ..add(serializers.serialize(object.daysRead,
            specifiedType: const FullType(double)));
    }
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
    if (object.rewatched != null) {
      result
        ..add('rewatched')
        ..add(serializers.serialize(object.rewatched,
            specifiedType: const FullType(int)));
    }
    if (object.reread != null) {
      result
        ..add('reread')
        ..add(serializers.serialize(object.reread,
            specifiedType: const FullType(int)));
    }
    if (object.episodesWatched != null) {
      result
        ..add('episodes_watched')
        ..add(serializers.serialize(object.episodesWatched,
            specifiedType: const FullType(int)));
    }
    if (object.chaptersRead != null) {
      result
        ..add('chapters_read')
        ..add(serializers.serialize(object.chaptersRead,
            specifiedType: const FullType(int)));
    }
    if (object.volumesRead != null) {
      result
        ..add('volumes_read')
        ..add(serializers.serialize(object.volumesRead,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  UserStats deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserStatsBuilder();

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
        case 'days_read':
          result.daysRead = serializers.deserialize(value,
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
        case 'total_entries':
          result.totalEntries = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rewatched':
          result.rewatched = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reread':
          result.reread = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'episodes_watched':
          result.episodesWatched = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'chapters_read':
          result.chaptersRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'volumes_read':
          result.volumesRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$UserStats extends UserStats {
  @override
  final double daysWatched;
  @override
  final double daysRead;
  @override
  final double meanScore;
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
  final int totalEntries;
  @override
  final int rewatched;
  @override
  final int reread;
  @override
  final int episodesWatched;
  @override
  final int chaptersRead;
  @override
  final int volumesRead;

  factory _$UserStats([void Function(UserStatsBuilder) updates]) =>
      (new UserStatsBuilder()..update(updates)).build();

  _$UserStats._(
      {this.daysWatched,
      this.daysRead,
      this.meanScore,
      this.watching,
      this.reading,
      this.completed,
      this.onHold,
      this.dropped,
      this.planToWatch,
      this.planToRead,
      this.totalEntries,
      this.rewatched,
      this.reread,
      this.episodesWatched,
      this.chaptersRead,
      this.volumesRead})
      : super._() {
    if (meanScore == null) {
      throw new BuiltValueNullFieldError('UserStats', 'meanScore');
    }
    if (completed == null) {
      throw new BuiltValueNullFieldError('UserStats', 'completed');
    }
    if (onHold == null) {
      throw new BuiltValueNullFieldError('UserStats', 'onHold');
    }
    if (dropped == null) {
      throw new BuiltValueNullFieldError('UserStats', 'dropped');
    }
    if (totalEntries == null) {
      throw new BuiltValueNullFieldError('UserStats', 'totalEntries');
    }
  }

  @override
  UserStats rebuild(void Function(UserStatsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserStatsBuilder toBuilder() => new UserStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserStats &&
        daysWatched == other.daysWatched &&
        daysRead == other.daysRead &&
        meanScore == other.meanScore &&
        watching == other.watching &&
        reading == other.reading &&
        completed == other.completed &&
        onHold == other.onHold &&
        dropped == other.dropped &&
        planToWatch == other.planToWatch &&
        planToRead == other.planToRead &&
        totalEntries == other.totalEntries &&
        rewatched == other.rewatched &&
        reread == other.reread &&
        episodesWatched == other.episodesWatched &&
        chaptersRead == other.chaptersRead &&
        volumesRead == other.volumesRead;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    daysWatched
                                                                        .hashCode),
                                                                daysRead
                                                                    .hashCode),
                                                            meanScore.hashCode),
                                                        watching.hashCode),
                                                    reading.hashCode),
                                                completed.hashCode),
                                            onHold.hashCode),
                                        dropped.hashCode),
                                    planToWatch.hashCode),
                                planToRead.hashCode),
                            totalEntries.hashCode),
                        rewatched.hashCode),
                    reread.hashCode),
                episodesWatched.hashCode),
            chaptersRead.hashCode),
        volumesRead.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserStats')
          ..add('daysWatched', daysWatched)
          ..add('daysRead', daysRead)
          ..add('meanScore', meanScore)
          ..add('watching', watching)
          ..add('reading', reading)
          ..add('completed', completed)
          ..add('onHold', onHold)
          ..add('dropped', dropped)
          ..add('planToWatch', planToWatch)
          ..add('planToRead', planToRead)
          ..add('totalEntries', totalEntries)
          ..add('rewatched', rewatched)
          ..add('reread', reread)
          ..add('episodesWatched', episodesWatched)
          ..add('chaptersRead', chaptersRead)
          ..add('volumesRead', volumesRead))
        .toString();
  }
}

class UserStatsBuilder implements Builder<UserStats, UserStatsBuilder> {
  _$UserStats _$v;

  double _daysWatched;
  double get daysWatched => _$this._daysWatched;
  set daysWatched(double daysWatched) => _$this._daysWatched = daysWatched;

  double _daysRead;
  double get daysRead => _$this._daysRead;
  set daysRead(double daysRead) => _$this._daysRead = daysRead;

  double _meanScore;
  double get meanScore => _$this._meanScore;
  set meanScore(double meanScore) => _$this._meanScore = meanScore;

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

  int _totalEntries;
  int get totalEntries => _$this._totalEntries;
  set totalEntries(int totalEntries) => _$this._totalEntries = totalEntries;

  int _rewatched;
  int get rewatched => _$this._rewatched;
  set rewatched(int rewatched) => _$this._rewatched = rewatched;

  int _reread;
  int get reread => _$this._reread;
  set reread(int reread) => _$this._reread = reread;

  int _episodesWatched;
  int get episodesWatched => _$this._episodesWatched;
  set episodesWatched(int episodesWatched) =>
      _$this._episodesWatched = episodesWatched;

  int _chaptersRead;
  int get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int chaptersRead) => _$this._chaptersRead = chaptersRead;

  int _volumesRead;
  int get volumesRead => _$this._volumesRead;
  set volumesRead(int volumesRead) => _$this._volumesRead = volumesRead;

  UserStatsBuilder();

  UserStatsBuilder get _$this {
    if (_$v != null) {
      _daysWatched = _$v.daysWatched;
      _daysRead = _$v.daysRead;
      _meanScore = _$v.meanScore;
      _watching = _$v.watching;
      _reading = _$v.reading;
      _completed = _$v.completed;
      _onHold = _$v.onHold;
      _dropped = _$v.dropped;
      _planToWatch = _$v.planToWatch;
      _planToRead = _$v.planToRead;
      _totalEntries = _$v.totalEntries;
      _rewatched = _$v.rewatched;
      _reread = _$v.reread;
      _episodesWatched = _$v.episodesWatched;
      _chaptersRead = _$v.chaptersRead;
      _volumesRead = _$v.volumesRead;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserStats other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserStats;
  }

  @override
  void update(void Function(UserStatsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserStats build() {
    final _$result = _$v ??
        new _$UserStats._(
            daysWatched: daysWatched,
            daysRead: daysRead,
            meanScore: meanScore,
            watching: watching,
            reading: reading,
            completed: completed,
            onHold: onHold,
            dropped: dropped,
            planToWatch: planToWatch,
            planToRead: planToRead,
            totalEntries: totalEntries,
            rewatched: rewatched,
            reread: reread,
            episodesWatched: episodesWatched,
            chaptersRead: chaptersRead,
            volumesRead: volumesRead);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
