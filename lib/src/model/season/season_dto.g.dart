// GENERATED CODE - DO NOT MODIFY BY HAND

part of season_dto;

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

Serializer<SeasonDto> _$seasonDtoSerializer = new _$SeasonDtoSerializer();

class _$SeasonDtoSerializer implements StructuredSerializer<SeasonDto> {
  @override
  final Iterable<Type> types = const [SeasonDto, _$SeasonDto];
  @override
  final String wireName = 'SeasonDto';

  @override
  Iterable serialize(Serializers serializers, SeasonDto object,
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
      'season_name',
      serializers.serialize(object.seasonName,
          specifiedType: const FullType(String)),
      'season_year',
      serializers.serialize(object.seasonYear,
          specifiedType: const FullType(int)),
      'anime',
      serializers.serialize(object.anime,
          specifiedType:
              const FullType(BuiltList, const [const FullType(AnimeDto)])),
    ];

    return result;
  }

  @override
  SeasonDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SeasonDtoBuilder();

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
                  BuiltList, const [const FullType(AnimeDto)])) as BuiltList);
          break;
      }
    }

    return result.build();
  }
}

class _$SeasonDto extends SeasonDto {
  @override
  final String requestHash;
  @override
  final bool requestCached;
  @override
  final int requestCacheExpiry;
  @override
  final String seasonName;
  @override
  final int seasonYear;
  @override
  final BuiltList<AnimeDto> anime;

  factory _$SeasonDto([void updates(SeasonDtoBuilder b)]) =>
      (new SeasonDtoBuilder()..update(updates)).build();

  _$SeasonDto._(
      {this.requestHash,
      this.requestCached,
      this.requestCacheExpiry,
      this.seasonName,
      this.seasonYear,
      this.anime})
      : super._() {
    if (requestHash == null) {
      throw new BuiltValueNullFieldError('SeasonDto', 'requestHash');
    }
    if (requestCached == null) {
      throw new BuiltValueNullFieldError('SeasonDto', 'requestCached');
    }
    if (requestCacheExpiry == null) {
      throw new BuiltValueNullFieldError('SeasonDto', 'requestCacheExpiry');
    }
    if (seasonName == null) {
      throw new BuiltValueNullFieldError('SeasonDto', 'seasonName');
    }
    if (seasonYear == null) {
      throw new BuiltValueNullFieldError('SeasonDto', 'seasonYear');
    }
    if (anime == null) {
      throw new BuiltValueNullFieldError('SeasonDto', 'anime');
    }
  }

  @override
  SeasonDto rebuild(void updates(SeasonDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  SeasonDtoBuilder toBuilder() => new SeasonDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SeasonDto &&
        requestHash == other.requestHash &&
        requestCached == other.requestCached &&
        requestCacheExpiry == other.requestCacheExpiry &&
        seasonName == other.seasonName &&
        seasonYear == other.seasonYear &&
        anime == other.anime;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, requestHash.hashCode), requestCached.hashCode),
                    requestCacheExpiry.hashCode),
                seasonName.hashCode),
            seasonYear.hashCode),
        anime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SeasonDto')
          ..add('requestHash', requestHash)
          ..add('requestCached', requestCached)
          ..add('requestCacheExpiry', requestCacheExpiry)
          ..add('seasonName', seasonName)
          ..add('seasonYear', seasonYear)
          ..add('anime', anime))
        .toString();
  }
}

class SeasonDtoBuilder implements Builder<SeasonDto, SeasonDtoBuilder> {
  _$SeasonDto _$v;

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

  String _seasonName;
  String get seasonName => _$this._seasonName;
  set seasonName(String seasonName) => _$this._seasonName = seasonName;

  int _seasonYear;
  int get seasonYear => _$this._seasonYear;
  set seasonYear(int seasonYear) => _$this._seasonYear = seasonYear;

  ListBuilder<AnimeDto> _anime;
  ListBuilder<AnimeDto> get anime =>
      _$this._anime ??= new ListBuilder<AnimeDto>();
  set anime(ListBuilder<AnimeDto> anime) => _$this._anime = anime;

  SeasonDtoBuilder();

  SeasonDtoBuilder get _$this {
    if (_$v != null) {
      _requestHash = _$v.requestHash;
      _requestCached = _$v.requestCached;
      _requestCacheExpiry = _$v.requestCacheExpiry;
      _seasonName = _$v.seasonName;
      _seasonYear = _$v.seasonYear;
      _anime = _$v.anime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SeasonDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SeasonDto;
  }

  @override
  void update(void updates(SeasonDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$SeasonDto build() {
    _$SeasonDto _$result;
    try {
      _$result = _$v ??
          new _$SeasonDto._(
              requestHash: requestHash,
              requestCached: requestCached,
              requestCacheExpiry: requestCacheExpiry,
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
            'SeasonDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
