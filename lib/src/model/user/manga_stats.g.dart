// GENERATED CODE - DO NOT MODIFY BY HAND

part of manga_stats;

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

Serializer<MangaStats> _$mangaStatsSerializer = new _$MangaStatsSerializer();

class _$MangaStatsSerializer implements StructuredSerializer<MangaStats> {
  @override
  final Iterable<Type> types = const [MangaStats, _$MangaStats];
  @override
  final String wireName = 'MangaStats';

  @override
  Iterable serialize(Serializers serializers, MangaStats object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'days_read',
      serializers.serialize(object.daysRead,
          specifiedType: const FullType(double)),
      'mean_score',
      serializers.serialize(object.meanScore,
          specifiedType: const FullType(double)),
      'reading',
      serializers.serialize(object.reading, specifiedType: const FullType(int)),
      'completed',
      serializers.serialize(object.completed,
          specifiedType: const FullType(int)),
      'on_hold',
      serializers.serialize(object.onHold, specifiedType: const FullType(int)),
      'dropped',
      serializers.serialize(object.dropped, specifiedType: const FullType(int)),
      'plan_to_read',
      serializers.serialize(object.planToRead,
          specifiedType: const FullType(int)),
      'total_entries',
      serializers.serialize(object.totalEntries,
          specifiedType: const FullType(int)),
      'reread',
      serializers.serialize(object.reread, specifiedType: const FullType(int)),
      'chapters_read',
      serializers.serialize(object.chaptersRead,
          specifiedType: const FullType(int)),
      'volumes_read',
      serializers.serialize(object.volumesRead,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MangaStats deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MangaStatsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'days_read':
          result.daysRead = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
        case 'mean_score':
          result.meanScore = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
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
        case 'plan_to_read':
          result.planToRead = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_entries':
          result.totalEntries = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reread':
          result.reread = serializers.deserialize(value,
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

class _$MangaStats extends MangaStats {
  @override
  final double daysRead;
  @override
  final double meanScore;
  @override
  final int reading;
  @override
  final int completed;
  @override
  final int onHold;
  @override
  final int dropped;
  @override
  final int planToRead;
  @override
  final int totalEntries;
  @override
  final int reread;
  @override
  final int chaptersRead;
  @override
  final int volumesRead;

  factory _$MangaStats([void updates(MangaStatsBuilder b)]) =>
      (new MangaStatsBuilder()..update(updates)).build();

  _$MangaStats._(
      {this.daysRead,
      this.meanScore,
      this.reading,
      this.completed,
      this.onHold,
      this.dropped,
      this.planToRead,
      this.totalEntries,
      this.reread,
      this.chaptersRead,
      this.volumesRead})
      : super._() {
    if (daysRead == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'daysRead');
    }
    if (meanScore == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'meanScore');
    }
    if (reading == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'reading');
    }
    if (completed == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'completed');
    }
    if (onHold == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'onHold');
    }
    if (dropped == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'dropped');
    }
    if (planToRead == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'planToRead');
    }
    if (totalEntries == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'totalEntries');
    }
    if (reread == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'reread');
    }
    if (chaptersRead == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'chaptersRead');
    }
    if (volumesRead == null) {
      throw new BuiltValueNullFieldError('MangaStats', 'volumesRead');
    }
  }

  @override
  MangaStats rebuild(void updates(MangaStatsBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MangaStatsBuilder toBuilder() => new MangaStatsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MangaStats &&
        daysRead == other.daysRead &&
        meanScore == other.meanScore &&
        reading == other.reading &&
        completed == other.completed &&
        onHold == other.onHold &&
        dropped == other.dropped &&
        planToRead == other.planToRead &&
        totalEntries == other.totalEntries &&
        reread == other.reread &&
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
                                        $jc($jc(0, daysRead.hashCode),
                                            meanScore.hashCode),
                                        reading.hashCode),
                                    completed.hashCode),
                                onHold.hashCode),
                            dropped.hashCode),
                        planToRead.hashCode),
                    totalEntries.hashCode),
                reread.hashCode),
            chaptersRead.hashCode),
        volumesRead.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MangaStats')
          ..add('daysRead', daysRead)
          ..add('meanScore', meanScore)
          ..add('reading', reading)
          ..add('completed', completed)
          ..add('onHold', onHold)
          ..add('dropped', dropped)
          ..add('planToRead', planToRead)
          ..add('totalEntries', totalEntries)
          ..add('reread', reread)
          ..add('chaptersRead', chaptersRead)
          ..add('volumesRead', volumesRead))
        .toString();
  }
}

class MangaStatsBuilder implements Builder<MangaStats, MangaStatsBuilder> {
  _$MangaStats _$v;

  double _daysRead;
  double get daysRead => _$this._daysRead;
  set daysRead(double daysRead) => _$this._daysRead = daysRead;

  double _meanScore;
  double get meanScore => _$this._meanScore;
  set meanScore(double meanScore) => _$this._meanScore = meanScore;

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

  int _planToRead;
  int get planToRead => _$this._planToRead;
  set planToRead(int planToRead) => _$this._planToRead = planToRead;

  int _totalEntries;
  int get totalEntries => _$this._totalEntries;
  set totalEntries(int totalEntries) => _$this._totalEntries = totalEntries;

  int _reread;
  int get reread => _$this._reread;
  set reread(int reread) => _$this._reread = reread;

  int _chaptersRead;
  int get chaptersRead => _$this._chaptersRead;
  set chaptersRead(int chaptersRead) => _$this._chaptersRead = chaptersRead;

  int _volumesRead;
  int get volumesRead => _$this._volumesRead;
  set volumesRead(int volumesRead) => _$this._volumesRead = volumesRead;

  MangaStatsBuilder();

  MangaStatsBuilder get _$this {
    if (_$v != null) {
      _daysRead = _$v.daysRead;
      _meanScore = _$v.meanScore;
      _reading = _$v.reading;
      _completed = _$v.completed;
      _onHold = _$v.onHold;
      _dropped = _$v.dropped;
      _planToRead = _$v.planToRead;
      _totalEntries = _$v.totalEntries;
      _reread = _$v.reread;
      _chaptersRead = _$v.chaptersRead;
      _volumesRead = _$v.volumesRead;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MangaStats other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MangaStats;
  }

  @override
  void update(void updates(MangaStatsBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MangaStats build() {
    final _$result = _$v ??
        new _$MangaStats._(
            daysRead: daysRead,
            meanScore: meanScore,
            reading: reading,
            completed: completed,
            onHold: onHold,
            dropped: dropped,
            planToRead: planToRead,
            totalEntries: totalEntries,
            reread: reread,
            chaptersRead: chaptersRead,
            volumesRead: volumesRead);
    replace(_$result);
    return _$result;
  }
}
