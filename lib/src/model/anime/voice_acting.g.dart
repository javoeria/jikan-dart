// GENERATED CODE - DO NOT MODIFY BY HAND

part of voice_acting;

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

Serializer<VoiceActing> _$voiceActingSerializer = new _$VoiceActingSerializer();

class _$VoiceActingSerializer implements StructuredSerializer<VoiceActing> {
  @override
  final Iterable<Type> types = const [VoiceActing, _$VoiceActing];
  @override
  final String wireName = 'VoiceActing';

  @override
  Iterable serialize(Serializers serializers, VoiceActing object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'role',
      serializers.serialize(object.role, specifiedType: const FullType(String)),
      'anime',
      serializers.serialize(object.anime,
          specifiedType: const FullType(GenericInfo)),
      'character',
      serializers.serialize(object.character,
          specifiedType: const FullType(GenericInfo)),
    ];

    return result;
  }

  @override
  VoiceActing deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VoiceActingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'anime':
          result.anime.replace(serializers.deserialize(value,
              specifiedType: const FullType(GenericInfo)) as GenericInfo);
          break;
        case 'character':
          result.character.replace(serializers.deserialize(value,
              specifiedType: const FullType(GenericInfo)) as GenericInfo);
          break;
      }
    }

    return result.build();
  }
}

class _$VoiceActing extends VoiceActing {
  @override
  final String role;
  @override
  final GenericInfo anime;
  @override
  final GenericInfo character;

  factory _$VoiceActing([void updates(VoiceActingBuilder b)]) =>
      (new VoiceActingBuilder()..update(updates)).build();

  _$VoiceActing._({this.role, this.anime, this.character}) : super._() {
    if (role == null) {
      throw new BuiltValueNullFieldError('VoiceActing', 'role');
    }
    if (anime == null) {
      throw new BuiltValueNullFieldError('VoiceActing', 'anime');
    }
    if (character == null) {
      throw new BuiltValueNullFieldError('VoiceActing', 'character');
    }
  }

  @override
  VoiceActing rebuild(void updates(VoiceActingBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  VoiceActingBuilder toBuilder() => new VoiceActingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VoiceActing &&
        role == other.role &&
        anime == other.anime &&
        character == other.character;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, role.hashCode), anime.hashCode), character.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('VoiceActing')
          ..add('role', role)
          ..add('anime', anime)
          ..add('character', character))
        .toString();
  }
}

class VoiceActingBuilder implements Builder<VoiceActing, VoiceActingBuilder> {
  _$VoiceActing _$v;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  GenericInfoBuilder _anime;
  GenericInfoBuilder get anime => _$this._anime ??= new GenericInfoBuilder();
  set anime(GenericInfoBuilder anime) => _$this._anime = anime;

  GenericInfoBuilder _character;
  GenericInfoBuilder get character =>
      _$this._character ??= new GenericInfoBuilder();
  set character(GenericInfoBuilder character) => _$this._character = character;

  VoiceActingBuilder();

  VoiceActingBuilder get _$this {
    if (_$v != null) {
      _role = _$v.role;
      _anime = _$v.anime?.toBuilder();
      _character = _$v.character?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VoiceActing other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$VoiceActing;
  }

  @override
  void update(void updates(VoiceActingBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$VoiceActing build() {
    _$VoiceActing _$result;
    try {
      _$result = _$v ??
          new _$VoiceActing._(
              role: role, anime: anime.build(), character: character.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'anime';
        anime.build();
        _$failedField = 'character';
        character.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'VoiceActing', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
