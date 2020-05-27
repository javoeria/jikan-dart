// GENERATED CODE - DO NOT MODIFY BY HAND

part of club;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Club> _$clubSerializer = new _$ClubSerializer();

class _$ClubSerializer implements StructuredSerializer<Club> {
  @override
  final Iterable<Type> types = const [Club, _$Club];
  @override
  final String wireName = 'Club';

  @override
  Iterable<Object> serialize(Serializers serializers, Club object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'members_count',
      serializers.serialize(object.membersCount,
          specifiedType: const FullType(int)),
      'pictures_count',
      serializers.serialize(object.picturesCount,
          specifiedType: const FullType(int)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'created',
      serializers.serialize(object.created,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'staff',
      serializers.serialize(object.staff,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'anime_relations',
      serializers.serialize(object.animeRelations,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'manga_relations',
      serializers.serialize(object.mangaRelations,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
      'character_relations',
      serializers.serialize(object.characterRelations,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Meta)])),
    ];

    return result;
  }

  @override
  Club deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ClubBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'mal_id':
          result.malId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image_url':
          result.imageUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members_count':
          result.membersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'pictures_count':
          result.picturesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created':
          result.created = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'staff':
          result.staff.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))
              as BuiltList<Object>);
          break;
        case 'anime_relations':
          result.animeRelations.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))
              as BuiltList<Object>);
          break;
        case 'manga_relations':
          result.mangaRelations.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))
              as BuiltList<Object>);
          break;
        case 'character_relations':
          result.characterRelations.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Meta)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Club extends Club {
  @override
  final int malId;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String title;
  @override
  final int membersCount;
  @override
  final int picturesCount;
  @override
  final String category;
  @override
  final String created;
  @override
  final String type;
  @override
  final BuiltList<Meta> staff;
  @override
  final BuiltList<Meta> animeRelations;
  @override
  final BuiltList<Meta> mangaRelations;
  @override
  final BuiltList<Meta> characterRelations;

  factory _$Club([void Function(ClubBuilder) updates]) =>
      (new ClubBuilder()..update(updates)).build();

  _$Club._(
      {this.malId,
      this.url,
      this.imageUrl,
      this.title,
      this.membersCount,
      this.picturesCount,
      this.category,
      this.created,
      this.type,
      this.staff,
      this.animeRelations,
      this.mangaRelations,
      this.characterRelations})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('Club', 'malId');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('Club', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('Club', 'imageUrl');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('Club', 'title');
    }
    if (membersCount == null) {
      throw new BuiltValueNullFieldError('Club', 'membersCount');
    }
    if (picturesCount == null) {
      throw new BuiltValueNullFieldError('Club', 'picturesCount');
    }
    if (category == null) {
      throw new BuiltValueNullFieldError('Club', 'category');
    }
    if (created == null) {
      throw new BuiltValueNullFieldError('Club', 'created');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('Club', 'type');
    }
    if (staff == null) {
      throw new BuiltValueNullFieldError('Club', 'staff');
    }
    if (animeRelations == null) {
      throw new BuiltValueNullFieldError('Club', 'animeRelations');
    }
    if (mangaRelations == null) {
      throw new BuiltValueNullFieldError('Club', 'mangaRelations');
    }
    if (characterRelations == null) {
      throw new BuiltValueNullFieldError('Club', 'characterRelations');
    }
  }

  @override
  Club rebuild(void Function(ClubBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ClubBuilder toBuilder() => new ClubBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Club &&
        malId == other.malId &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        title == other.title &&
        membersCount == other.membersCount &&
        picturesCount == other.picturesCount &&
        category == other.category &&
        created == other.created &&
        type == other.type &&
        staff == other.staff &&
        animeRelations == other.animeRelations &&
        mangaRelations == other.mangaRelations &&
        characterRelations == other.characterRelations;
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
                                                $jc($jc(0, malId.hashCode),
                                                    url.hashCode),
                                                imageUrl.hashCode),
                                            title.hashCode),
                                        membersCount.hashCode),
                                    picturesCount.hashCode),
                                category.hashCode),
                            created.hashCode),
                        type.hashCode),
                    staff.hashCode),
                animeRelations.hashCode),
            mangaRelations.hashCode),
        characterRelations.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Club')
          ..add('malId', malId)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('title', title)
          ..add('membersCount', membersCount)
          ..add('picturesCount', picturesCount)
          ..add('category', category)
          ..add('created', created)
          ..add('type', type)
          ..add('staff', staff)
          ..add('animeRelations', animeRelations)
          ..add('mangaRelations', mangaRelations)
          ..add('characterRelations', characterRelations))
        .toString();
  }
}

class ClubBuilder implements Builder<Club, ClubBuilder> {
  _$Club _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  int _membersCount;
  int get membersCount => _$this._membersCount;
  set membersCount(int membersCount) => _$this._membersCount = membersCount;

  int _picturesCount;
  int get picturesCount => _$this._picturesCount;
  set picturesCount(int picturesCount) => _$this._picturesCount = picturesCount;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _created;
  String get created => _$this._created;
  set created(String created) => _$this._created = created;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ListBuilder<Meta> _staff;
  ListBuilder<Meta> get staff => _$this._staff ??= new ListBuilder<Meta>();
  set staff(ListBuilder<Meta> staff) => _$this._staff = staff;

  ListBuilder<Meta> _animeRelations;
  ListBuilder<Meta> get animeRelations =>
      _$this._animeRelations ??= new ListBuilder<Meta>();
  set animeRelations(ListBuilder<Meta> animeRelations) =>
      _$this._animeRelations = animeRelations;

  ListBuilder<Meta> _mangaRelations;
  ListBuilder<Meta> get mangaRelations =>
      _$this._mangaRelations ??= new ListBuilder<Meta>();
  set mangaRelations(ListBuilder<Meta> mangaRelations) =>
      _$this._mangaRelations = mangaRelations;

  ListBuilder<Meta> _characterRelations;
  ListBuilder<Meta> get characterRelations =>
      _$this._characterRelations ??= new ListBuilder<Meta>();
  set characterRelations(ListBuilder<Meta> characterRelations) =>
      _$this._characterRelations = characterRelations;

  ClubBuilder();

  ClubBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _title = _$v.title;
      _membersCount = _$v.membersCount;
      _picturesCount = _$v.picturesCount;
      _category = _$v.category;
      _created = _$v.created;
      _type = _$v.type;
      _staff = _$v.staff?.toBuilder();
      _animeRelations = _$v.animeRelations?.toBuilder();
      _mangaRelations = _$v.mangaRelations?.toBuilder();
      _characterRelations = _$v.characterRelations?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Club other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Club;
  }

  @override
  void update(void Function(ClubBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Club build() {
    _$Club _$result;
    try {
      _$result = _$v ??
          new _$Club._(
              malId: malId,
              url: url,
              imageUrl: imageUrl,
              title: title,
              membersCount: membersCount,
              picturesCount: picturesCount,
              category: category,
              created: created,
              type: type,
              staff: staff.build(),
              animeRelations: animeRelations.build(),
              mangaRelations: mangaRelations.build(),
              characterRelations: characterRelations.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'staff';
        staff.build();
        _$failedField = 'animeRelations';
        animeRelations.build();
        _$failedField = 'mangaRelations';
        mangaRelations.build();
        _$failedField = 'characterRelations';
        characterRelations.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Club', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
