// GENERATED CODE - DO NOT MODIFY BY HAND

part of season;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Season> _$seasonSerializer = new _$SeasonSerializer();

class _$SeasonSerializer implements StructuredSerializer<Season> {
  @override
  final Iterable<Type> types = const [Season, _$Season];
  @override
  final String wireName = 'Season';

  @override
  Iterable<Object> serialize(Serializers serializers, Season object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'season_name',
      serializers.serialize(object.seasonName,
          specifiedType: const FullType(String)),
      'anime',
      serializers.serialize(object.anime,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AnimeItem)])),
    ];
    if (object.seasonYear != null) {
      result
        ..add('season_year')
        ..add(serializers.serialize(object.seasonYear,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  Season deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeasonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'season_name':
          result.seasonName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'season_year':
          result.seasonYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(AnimeItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Season extends Season {
  @override
  final String seasonName;
  @override
  final int seasonYear;
  @override
  final BuiltList<AnimeItem> anime;

  factory _$Season([void Function(SeasonBuilder) updates]) =>
      (new SeasonBuilder()..update(updates)).build();

  _$Season._({this.seasonName, this.seasonYear, this.anime}) : super._() {
    if (seasonName == null) {
      throw new BuiltValueNullFieldError('Season', 'seasonName');
    }
    if (anime == null) {
      throw new BuiltValueNullFieldError('Season', 'anime');
    }
  }

  @override
  Season rebuild(void Function(SeasonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonBuilder toBuilder() => new SeasonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Season &&
        seasonName == other.seasonName &&
        seasonYear == other.seasonYear &&
        anime == other.anime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, seasonName.hashCode), seasonYear.hashCode), anime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Season')
          ..add('seasonName', seasonName)
          ..add('seasonYear', seasonYear)
          ..add('anime', anime))
        .toString();
  }
}

class SeasonBuilder implements Builder<Season, SeasonBuilder> {
  _$Season _$v;

  String _seasonName;
  String get seasonName => _$this._seasonName;
  set seasonName(String seasonName) => _$this._seasonName = seasonName;

  int _seasonYear;
  int get seasonYear => _$this._seasonYear;
  set seasonYear(int seasonYear) => _$this._seasonYear = seasonYear;

  ListBuilder<AnimeItem> _anime;
  ListBuilder<AnimeItem> get anime =>
      _$this._anime ??= new ListBuilder<AnimeItem>();
  set anime(ListBuilder<AnimeItem> anime) => _$this._anime = anime;

  SeasonBuilder();

  SeasonBuilder get _$this {
    if (_$v != null) {
      _seasonName = _$v.seasonName;
      _seasonYear = _$v.seasonYear;
      _anime = _$v.anime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Season other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Season;
  }

  @override
  void update(void Function(SeasonBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Season build() {
    _$Season _$result;
    try {
      _$result = _$v ??
          new _$Season._(
              seasonName: seasonName,
              seasonYear: seasonYear,
              anime: anime.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'anime';
        anime.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Season', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
