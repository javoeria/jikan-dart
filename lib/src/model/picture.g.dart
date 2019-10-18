// GENERATED CODE - DO NOT MODIFY BY HAND

part of picture;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Picture> _$pictureSerializer = new _$PictureSerializer();

class _$PictureSerializer implements StructuredSerializer<Picture> {
  @override
  final Iterable<Type> types = const [Picture, _$Picture];
  @override
  final String wireName = 'Picture';

  @override
  Iterable<Object> serialize(Serializers serializers, Picture object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'large',
      serializers.serialize(object.large,
          specifiedType: const FullType(String)),
      'small',
      serializers.serialize(object.small,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Picture deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PictureBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'large':
          result.large = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'small':
          result.small = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Picture extends Picture {
  @override
  final String large;
  @override
  final String small;

  factory _$Picture([void Function(PictureBuilder) updates]) =>
      (new PictureBuilder()..update(updates)).build();

  _$Picture._({this.large, this.small}) : super._() {
    if (large == null) {
      throw new BuiltValueNullFieldError('Picture', 'large');
    }
    if (small == null) {
      throw new BuiltValueNullFieldError('Picture', 'small');
    }
  }

  @override
  Picture rebuild(void Function(PictureBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PictureBuilder toBuilder() => new PictureBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Picture && large == other.large && small == other.small;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, large.hashCode), small.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Picture')
          ..add('large', large)
          ..add('small', small))
        .toString();
  }
}

class PictureBuilder implements Builder<Picture, PictureBuilder> {
  _$Picture _$v;

  String _large;
  String get large => _$this._large;
  set large(String large) => _$this._large = large;

  String _small;
  String get small => _$this._small;
  set small(String small) => _$this._small = small;

  PictureBuilder();

  PictureBuilder get _$this {
    if (_$v != null) {
      _large = _$v.large;
      _small = _$v.small;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Picture other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Picture;
  }

  @override
  void update(void Function(PictureBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Picture build() {
    final _$result = _$v ?? new _$Picture._(large: large, small: small);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
