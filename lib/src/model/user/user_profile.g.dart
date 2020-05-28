// GENERATED CODE - DO NOT MODIFY BY HAND

part of user_profile;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserProfile> _$userProfileSerializer = new _$UserProfileSerializer();

class _$UserProfileSerializer implements StructuredSerializer<UserProfile> {
  @override
  final Iterable<Type> types = const [UserProfile, _$UserProfile];
  @override
  final String wireName = 'UserProfile';

  @override
  Iterable<Object> serialize(Serializers serializers, UserProfile object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'username',
      serializers.serialize(object.username,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'anime_stats',
      serializers.serialize(object.animeStats,
          specifiedType: const FullType(UserStats)),
      'manga_stats',
      serializers.serialize(object.mangaStats,
          specifiedType: const FullType(UserStats)),
      'favorites',
      serializers.serialize(object.favorites,
          specifiedType: const FullType(Favorites)),
    ];
    if (object.userId != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(object.userId,
            specifiedType: const FullType(int)));
    }
    if (object.imageUrl != null) {
      result
        ..add('image_url')
        ..add(serializers.serialize(object.imageUrl,
            specifiedType: const FullType(String)));
    }
    if (object.lastOnline != null) {
      result
        ..add('last_online')
        ..add(serializers.serialize(object.lastOnline,
            specifiedType: const FullType(String)));
    }
    if (object.gender != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(object.gender,
            specifiedType: const FullType(String)));
    }
    if (object.birthday != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(object.birthday,
            specifiedType: const FullType(String)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(String)));
    }
    if (object.joined != null) {
      result
        ..add('joined')
        ..add(serializers.serialize(object.joined,
            specifiedType: const FullType(String)));
    }
    if (object.about != null) {
      result
        ..add('about')
        ..add(serializers.serialize(object.about,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  UserProfile deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserProfileBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'username':
          result.username = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_online':
          result.lastOnline = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'joined':
          result.joined = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'anime_stats':
          result.animeStats.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserStats)) as UserStats);
          break;
        case 'manga_stats':
          result.mangaStats.replace(serializers.deserialize(value,
              specifiedType: const FullType(UserStats)) as UserStats);
          break;
        case 'favorites':
          result.favorites.replace(serializers.deserialize(value,
              specifiedType: const FullType(Favorites)) as Favorites);
          break;
        case 'about':
          result.about = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserProfile extends UserProfile {
  @override
  final int userId;
  @override
  final String username;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String lastOnline;
  @override
  final String gender;
  @override
  final String birthday;
  @override
  final String location;
  @override
  final String joined;
  @override
  final UserStats animeStats;
  @override
  final UserStats mangaStats;
  @override
  final Favorites favorites;
  @override
  final String about;

  factory _$UserProfile([void Function(UserProfileBuilder) updates]) =>
      (new UserProfileBuilder()..update(updates)).build();

  _$UserProfile._(
      {this.userId,
      this.username,
      this.url,
      this.imageUrl,
      this.lastOnline,
      this.gender,
      this.birthday,
      this.location,
      this.joined,
      this.animeStats,
      this.mangaStats,
      this.favorites,
      this.about})
      : super._() {
    if (username == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'username');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'url');
    }
    if (animeStats == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'animeStats');
    }
    if (mangaStats == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'mangaStats');
    }
    if (favorites == null) {
      throw new BuiltValueNullFieldError('UserProfile', 'favorites');
    }
  }

  @override
  UserProfile rebuild(void Function(UserProfileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserProfileBuilder toBuilder() => new UserProfileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserProfile &&
        userId == other.userId &&
        username == other.username &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        lastOnline == other.lastOnline &&
        gender == other.gender &&
        birthday == other.birthday &&
        location == other.location &&
        joined == other.joined &&
        animeStats == other.animeStats &&
        mangaStats == other.mangaStats &&
        favorites == other.favorites &&
        about == other.about;
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
                                                $jc($jc(0, userId.hashCode),
                                                    username.hashCode),
                                                url.hashCode),
                                            imageUrl.hashCode),
                                        lastOnline.hashCode),
                                    gender.hashCode),
                                birthday.hashCode),
                            location.hashCode),
                        joined.hashCode),
                    animeStats.hashCode),
                mangaStats.hashCode),
            favorites.hashCode),
        about.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('UserProfile')
          ..add('userId', userId)
          ..add('username', username)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('lastOnline', lastOnline)
          ..add('gender', gender)
          ..add('birthday', birthday)
          ..add('location', location)
          ..add('joined', joined)
          ..add('animeStats', animeStats)
          ..add('mangaStats', mangaStats)
          ..add('favorites', favorites)
          ..add('about', about))
        .toString();
  }
}

class UserProfileBuilder implements Builder<UserProfile, UserProfileBuilder> {
  _$UserProfile _$v;

  int _userId;
  int get userId => _$this._userId;
  set userId(int userId) => _$this._userId = userId;

  String _username;
  String get username => _$this._username;
  set username(String username) => _$this._username = username;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _lastOnline;
  String get lastOnline => _$this._lastOnline;
  set lastOnline(String lastOnline) => _$this._lastOnline = lastOnline;

  String _gender;
  String get gender => _$this._gender;
  set gender(String gender) => _$this._gender = gender;

  String _birthday;
  String get birthday => _$this._birthday;
  set birthday(String birthday) => _$this._birthday = birthday;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _joined;
  String get joined => _$this._joined;
  set joined(String joined) => _$this._joined = joined;

  UserStatsBuilder _animeStats;
  UserStatsBuilder get animeStats =>
      _$this._animeStats ??= new UserStatsBuilder();
  set animeStats(UserStatsBuilder animeStats) =>
      _$this._animeStats = animeStats;

  UserStatsBuilder _mangaStats;
  UserStatsBuilder get mangaStats =>
      _$this._mangaStats ??= new UserStatsBuilder();
  set mangaStats(UserStatsBuilder mangaStats) =>
      _$this._mangaStats = mangaStats;

  FavoritesBuilder _favorites;
  FavoritesBuilder get favorites =>
      _$this._favorites ??= new FavoritesBuilder();
  set favorites(FavoritesBuilder favorites) => _$this._favorites = favorites;

  String _about;
  String get about => _$this._about;
  set about(String about) => _$this._about = about;

  UserProfileBuilder();

  UserProfileBuilder get _$this {
    if (_$v != null) {
      _userId = _$v.userId;
      _username = _$v.username;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _lastOnline = _$v.lastOnline;
      _gender = _$v.gender;
      _birthday = _$v.birthday;
      _location = _$v.location;
      _joined = _$v.joined;
      _animeStats = _$v.animeStats?.toBuilder();
      _mangaStats = _$v.mangaStats?.toBuilder();
      _favorites = _$v.favorites?.toBuilder();
      _about = _$v.about;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserProfile other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$UserProfile;
  }

  @override
  void update(void Function(UserProfileBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$UserProfile build() {
    _$UserProfile _$result;
    try {
      _$result = _$v ??
          new _$UserProfile._(
              userId: userId,
              username: username,
              url: url,
              imageUrl: imageUrl,
              lastOnline: lastOnline,
              gender: gender,
              birthday: birthday,
              location: location,
              joined: joined,
              animeStats: animeStats.build(),
              mangaStats: mangaStats.build(),
              favorites: favorites.build(),
              about: about);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'animeStats';
        animeStats.build();
        _$failedField = 'mangaStats';
        mangaStats.build();
        _$failedField = 'favorites';
        favorites.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'UserProfile', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
