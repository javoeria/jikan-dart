// GENERATED CODE - DO NOT MODIFY BY HAND

part of producers_dto;

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

Serializer<ProducersDto> _$producersDtoSerializer =
    new _$ProducersDtoSerializer();

class _$ProducersDtoSerializer implements StructuredSerializer<ProducersDto> {
  @override
  final Iterable<Type> types = const [ProducersDto, _$ProducersDto];
  @override
  final String wireName = 'ProducersDto';

  @override
  Iterable serialize(Serializers serializers, ProducersDto object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.meta != null) {
      result
        ..add('meta')
        ..add(serializers.serialize(object.meta,
            specifiedType: const FullType(ProducerMetaDto)));
    }
    if (object.anime != null) {
      result
        ..add('anime')
        ..add(serializers.serialize(object.anime,
            specifiedType:
                const FullType(BuiltList, const [const FullType(AnimeDto)])));
    }

    return result;
  }

  @override
  ProducersDto deserialize(Serializers serializers, Iterable serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProducersDtoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'meta':
          result.meta.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ProducerMetaDto))
              as ProducerMetaDto);
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

class _$ProducersDto extends ProducersDto {
  @override
  final ProducerMetaDto meta;
  @override
  final BuiltList<AnimeDto> anime;

  factory _$ProducersDto([void updates(ProducersDtoBuilder b)]) =>
      (new ProducersDtoBuilder()..update(updates)).build();

  _$ProducersDto._({this.meta, this.anime}) : super._();

  @override
  ProducersDto rebuild(void updates(ProducersDtoBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  ProducersDtoBuilder toBuilder() => new ProducersDtoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProducersDto && meta == other.meta && anime == other.anime;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, meta.hashCode), anime.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProducersDto')
          ..add('meta', meta)
          ..add('anime', anime))
        .toString();
  }
}

class ProducersDtoBuilder
    implements Builder<ProducersDto, ProducersDtoBuilder> {
  _$ProducersDto _$v;

  ProducerMetaDtoBuilder _meta;
  ProducerMetaDtoBuilder get meta =>
      _$this._meta ??= new ProducerMetaDtoBuilder();
  set meta(ProducerMetaDtoBuilder meta) => _$this._meta = meta;

  ListBuilder<AnimeDto> _anime;
  ListBuilder<AnimeDto> get anime =>
      _$this._anime ??= new ListBuilder<AnimeDto>();
  set anime(ListBuilder<AnimeDto> anime) => _$this._anime = anime;

  ProducersDtoBuilder();

  ProducersDtoBuilder get _$this {
    if (_$v != null) {
      _meta = _$v.meta?.toBuilder();
      _anime = _$v.anime?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProducersDto other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProducersDto;
  }

  @override
  void update(void updates(ProducersDtoBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$ProducersDto build() {
    _$ProducersDto _$result;
    try {
      _$result = _$v ??
          new _$ProducersDto._(meta: _meta?.build(), anime: _anime?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'meta';
        _meta?.build();
        _$failedField = 'anime';
        _anime?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ProducersDto', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}
