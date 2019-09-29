// GENERATED CODE - DO NOT MODIFY BY HAND

part of manga_item;

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

Serializer<MangaItem> _$mangaItemSerializer = new _$MangaItemSerializer();

class _$MangaItemSerializer implements StructuredSerializer<MangaItem> {
  @override
  final Iterable<Type> types = const [MangaItem, _$MangaItem];
  @override
  final String wireName = 'MangaItem';

  @override
  Iterable serialize(Serializers serializers, MangaItem object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mal_id',
      serializers.serialize(object.malId, specifiedType: const FullType(int)),
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'url',
      serializers.serialize(object.url, specifiedType: const FullType(String)),
      'image_url',
      serializers.serialize(object.imageUrl,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'score',
      serializers.serialize(object.score, specifiedType: const FullType(int)),
      'read_chapters',
      serializers.serialize(object.readChapters,
          specifiedType: const FullType(int)),
      'read_volumes',
      serializers.serialize(object.readVolumes,
          specifiedType: const FullType(int)),
      'total_chapters',
      serializers.serialize(object.totalChapters,
          specifiedType: const FullType(int)),
      'total_volumes',
      serializers.serialize(object.totalVolumes,
          specifiedType: const FullType(int)),
      'reading_status',
      serializers.serialize(object.readingStatus,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  MangaItem deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MangaItemBuilder();

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
        case 'title':
          result.title = serializers.deserialize(value,
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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'score':
          result.score = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'read_chapters':
          result.readChapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'read_volumes':
          result.readVolumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_chapters':
          result.totalChapters = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_volumes':
          result.totalVolumes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'reading_status':
          result.readingStatus = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$MangaItem extends MangaItem {
  @override
  final int malId;
  @override
  final String title;
  @override
  final String url;
  @override
  final String imageUrl;
  @override
  final String type;
  @override
  final int score;
  @override
  final int readChapters;
  @override
  final int readVolumes;
  @override
  final int totalChapters;
  @override
  final int totalVolumes;
  @override
  final int readingStatus;

  factory _$MangaItem([void updates(MangaItemBuilder b)]) =>
      (new MangaItemBuilder()..update(updates)).build();

  _$MangaItem._(
      {this.malId,
      this.title,
      this.url,
      this.imageUrl,
      this.type,
      this.score,
      this.readChapters,
      this.readVolumes,
      this.totalChapters,
      this.totalVolumes,
      this.readingStatus})
      : super._() {
    if (malId == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'malId');
    }
    if (title == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'title');
    }
    if (url == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'url');
    }
    if (imageUrl == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'imageUrl');
    }
    if (type == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'type');
    }
    if (score == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'score');
    }
    if (readChapters == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'readChapters');
    }
    if (readVolumes == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'readVolumes');
    }
    if (totalChapters == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'totalChapters');
    }
    if (totalVolumes == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'totalVolumes');
    }
    if (readingStatus == null) {
      throw new BuiltValueNullFieldError('MangaItem', 'readingStatus');
    }
  }

  @override
  MangaItem rebuild(void updates(MangaItemBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  MangaItemBuilder toBuilder() => new MangaItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MangaItem &&
        malId == other.malId &&
        title == other.title &&
        url == other.url &&
        imageUrl == other.imageUrl &&
        type == other.type &&
        score == other.score &&
        readChapters == other.readChapters &&
        readVolumes == other.readVolumes &&
        totalChapters == other.totalChapters &&
        totalVolumes == other.totalVolumes &&
        readingStatus == other.readingStatus;
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
                                        $jc($jc(0, malId.hashCode),
                                            title.hashCode),
                                        url.hashCode),
                                    imageUrl.hashCode),
                                type.hashCode),
                            score.hashCode),
                        readChapters.hashCode),
                    readVolumes.hashCode),
                totalChapters.hashCode),
            totalVolumes.hashCode),
        readingStatus.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MangaItem')
          ..add('malId', malId)
          ..add('title', title)
          ..add('url', url)
          ..add('imageUrl', imageUrl)
          ..add('type', type)
          ..add('score', score)
          ..add('readChapters', readChapters)
          ..add('readVolumes', readVolumes)
          ..add('totalChapters', totalChapters)
          ..add('totalVolumes', totalVolumes)
          ..add('readingStatus', readingStatus))
        .toString();
  }
}

class MangaItemBuilder implements Builder<MangaItem, MangaItemBuilder> {
  _$MangaItem _$v;

  int _malId;
  int get malId => _$this._malId;
  set malId(int malId) => _$this._malId = malId;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _imageUrl;
  String get imageUrl => _$this._imageUrl;
  set imageUrl(String imageUrl) => _$this._imageUrl = imageUrl;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _score;
  int get score => _$this._score;
  set score(int score) => _$this._score = score;

  int _readChapters;
  int get readChapters => _$this._readChapters;
  set readChapters(int readChapters) => _$this._readChapters = readChapters;

  int _readVolumes;
  int get readVolumes => _$this._readVolumes;
  set readVolumes(int readVolumes) => _$this._readVolumes = readVolumes;

  int _totalChapters;
  int get totalChapters => _$this._totalChapters;
  set totalChapters(int totalChapters) => _$this._totalChapters = totalChapters;

  int _totalVolumes;
  int get totalVolumes => _$this._totalVolumes;
  set totalVolumes(int totalVolumes) => _$this._totalVolumes = totalVolumes;

  int _readingStatus;
  int get readingStatus => _$this._readingStatus;
  set readingStatus(int readingStatus) => _$this._readingStatus = readingStatus;

  MangaItemBuilder();

  MangaItemBuilder get _$this {
    if (_$v != null) {
      _malId = _$v.malId;
      _title = _$v.title;
      _url = _$v.url;
      _imageUrl = _$v.imageUrl;
      _type = _$v.type;
      _score = _$v.score;
      _readChapters = _$v.readChapters;
      _readVolumes = _$v.readVolumes;
      _totalChapters = _$v.totalChapters;
      _totalVolumes = _$v.totalVolumes;
      _readingStatus = _$v.readingStatus;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MangaItem other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MangaItem;
  }

  @override
  void update(void updates(MangaItemBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$MangaItem build() {
    final _$result = _$v ??
        new _$MangaItem._(
            malId: malId,
            title: title,
            url: url,
            imageUrl: imageUrl,
            type: type,
            score: score,
            readChapters: readChapters,
            readVolumes: readVolumes,
            totalChapters: totalChapters,
            totalVolumes: totalVolumes,
            readingStatus: readingStatus);
    replace(_$result);
    return _$result;
  }
}
