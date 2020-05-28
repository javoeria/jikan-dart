// GENERATED CODE - DO NOT MODIFY BY HAND

part of related;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Related> _$relatedSerializer = new _$RelatedSerializer();

class _$RelatedSerializer implements StructuredSerializer<Related> {
  @override
  final Iterable<Type> types = const [Related, _$Related];
  @override
  final String wireName = 'Related';

  @override
  Iterable<Object> serialize(Serializers serializers, Related object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.adaptation != null) {
      result
        ..add('Adaptation')
        ..add(serializers.serialize(object.adaptation,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.alternativeSetting != null) {
      result
        ..add('Alternative setting')
        ..add(serializers.serialize(object.alternativeSetting,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.alternativeVersion != null) {
      result
        ..add('Alternative version')
        ..add(serializers.serialize(object.alternativeVersion,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.character != null) {
      result
        ..add('Character')
        ..add(serializers.serialize(object.character,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.fullStory != null) {
      result
        ..add('Full story')
        ..add(serializers.serialize(object.fullStory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.other != null) {
      result
        ..add('Other')
        ..add(serializers.serialize(object.other,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.parentStory != null) {
      result
        ..add('Parent story')
        ..add(serializers.serialize(object.parentStory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.prequel != null) {
      result
        ..add('Prequel')
        ..add(serializers.serialize(object.prequel,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.sequel != null) {
      result
        ..add('Sequel')
        ..add(serializers.serialize(object.sequel,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.sideStory != null) {
      result
        ..add('Side story')
        ..add(serializers.serialize(object.sideStory,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.spinOff != null) {
      result
        ..add('Spin-off')
        ..add(serializers.serialize(object.spinOff,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    if (object.summary != null) {
      result
        ..add('Summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(
                BuiltList, const [const FullType(GenericInfo)])));
    }
    return result;
  }

  @override
  Related deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RelatedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'Adaptation':
          result.adaptation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Alternative setting':
          result.alternativeSetting.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Alternative version':
          result.alternativeVersion.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Character':
          result.character.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Full story':
          result.fullStory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Other':
          result.other.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Parent story':
          result.parentStory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Prequel':
          result.prequel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Sequel':
          result.sequel.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Side story':
          result.sideStory.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Spin-off':
          result.spinOff.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
        case 'Summary':
          result.summary.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(GenericInfo)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Related extends Related {
  @override
  final BuiltList<GenericInfo> adaptation;
  @override
  final BuiltList<GenericInfo> alternativeSetting;
  @override
  final BuiltList<GenericInfo> alternativeVersion;
  @override
  final BuiltList<GenericInfo> character;
  @override
  final BuiltList<GenericInfo> fullStory;
  @override
  final BuiltList<GenericInfo> other;
  @override
  final BuiltList<GenericInfo> parentStory;
  @override
  final BuiltList<GenericInfo> prequel;
  @override
  final BuiltList<GenericInfo> sequel;
  @override
  final BuiltList<GenericInfo> sideStory;
  @override
  final BuiltList<GenericInfo> spinOff;
  @override
  final BuiltList<GenericInfo> summary;

  factory _$Related([void Function(RelatedBuilder) updates]) =>
      (new RelatedBuilder()..update(updates)).build();

  _$Related._(
      {this.adaptation,
      this.alternativeSetting,
      this.alternativeVersion,
      this.character,
      this.fullStory,
      this.other,
      this.parentStory,
      this.prequel,
      this.sequel,
      this.sideStory,
      this.spinOff,
      this.summary})
      : super._();

  @override
  Related rebuild(void Function(RelatedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RelatedBuilder toBuilder() => new RelatedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Related &&
        adaptation == other.adaptation &&
        alternativeSetting == other.alternativeSetting &&
        alternativeVersion == other.alternativeVersion &&
        character == other.character &&
        fullStory == other.fullStory &&
        this.other == other.other &&
        parentStory == other.parentStory &&
        prequel == other.prequel &&
        sequel == other.sequel &&
        sideStory == other.sideStory &&
        spinOff == other.spinOff &&
        summary == other.summary;
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
                                            $jc($jc(0, adaptation.hashCode),
                                                alternativeSetting.hashCode),
                                            alternativeVersion.hashCode),
                                        character.hashCode),
                                    fullStory.hashCode),
                                other.hashCode),
                            parentStory.hashCode),
                        prequel.hashCode),
                    sequel.hashCode),
                sideStory.hashCode),
            spinOff.hashCode),
        summary.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Related')
          ..add('adaptation', adaptation)
          ..add('alternativeSetting', alternativeSetting)
          ..add('alternativeVersion', alternativeVersion)
          ..add('character', character)
          ..add('fullStory', fullStory)
          ..add('other', other)
          ..add('parentStory', parentStory)
          ..add('prequel', prequel)
          ..add('sequel', sequel)
          ..add('sideStory', sideStory)
          ..add('spinOff', spinOff)
          ..add('summary', summary))
        .toString();
  }
}

class RelatedBuilder implements Builder<Related, RelatedBuilder> {
  _$Related _$v;

  ListBuilder<GenericInfo> _adaptation;
  ListBuilder<GenericInfo> get adaptation =>
      _$this._adaptation ??= new ListBuilder<GenericInfo>();
  set adaptation(ListBuilder<GenericInfo> adaptation) =>
      _$this._adaptation = adaptation;

  ListBuilder<GenericInfo> _alternativeSetting;
  ListBuilder<GenericInfo> get alternativeSetting =>
      _$this._alternativeSetting ??= new ListBuilder<GenericInfo>();
  set alternativeSetting(ListBuilder<GenericInfo> alternativeSetting) =>
      _$this._alternativeSetting = alternativeSetting;

  ListBuilder<GenericInfo> _alternativeVersion;
  ListBuilder<GenericInfo> get alternativeVersion =>
      _$this._alternativeVersion ??= new ListBuilder<GenericInfo>();
  set alternativeVersion(ListBuilder<GenericInfo> alternativeVersion) =>
      _$this._alternativeVersion = alternativeVersion;

  ListBuilder<GenericInfo> _character;
  ListBuilder<GenericInfo> get character =>
      _$this._character ??= new ListBuilder<GenericInfo>();
  set character(ListBuilder<GenericInfo> character) =>
      _$this._character = character;

  ListBuilder<GenericInfo> _fullStory;
  ListBuilder<GenericInfo> get fullStory =>
      _$this._fullStory ??= new ListBuilder<GenericInfo>();
  set fullStory(ListBuilder<GenericInfo> fullStory) =>
      _$this._fullStory = fullStory;

  ListBuilder<GenericInfo> _other;
  ListBuilder<GenericInfo> get other =>
      _$this._other ??= new ListBuilder<GenericInfo>();
  set other(ListBuilder<GenericInfo> other) => _$this._other = other;

  ListBuilder<GenericInfo> _parentStory;
  ListBuilder<GenericInfo> get parentStory =>
      _$this._parentStory ??= new ListBuilder<GenericInfo>();
  set parentStory(ListBuilder<GenericInfo> parentStory) =>
      _$this._parentStory = parentStory;

  ListBuilder<GenericInfo> _prequel;
  ListBuilder<GenericInfo> get prequel =>
      _$this._prequel ??= new ListBuilder<GenericInfo>();
  set prequel(ListBuilder<GenericInfo> prequel) => _$this._prequel = prequel;

  ListBuilder<GenericInfo> _sequel;
  ListBuilder<GenericInfo> get sequel =>
      _$this._sequel ??= new ListBuilder<GenericInfo>();
  set sequel(ListBuilder<GenericInfo> sequel) => _$this._sequel = sequel;

  ListBuilder<GenericInfo> _sideStory;
  ListBuilder<GenericInfo> get sideStory =>
      _$this._sideStory ??= new ListBuilder<GenericInfo>();
  set sideStory(ListBuilder<GenericInfo> sideStory) =>
      _$this._sideStory = sideStory;

  ListBuilder<GenericInfo> _spinOff;
  ListBuilder<GenericInfo> get spinOff =>
      _$this._spinOff ??= new ListBuilder<GenericInfo>();
  set spinOff(ListBuilder<GenericInfo> spinOff) => _$this._spinOff = spinOff;

  ListBuilder<GenericInfo> _summary;
  ListBuilder<GenericInfo> get summary =>
      _$this._summary ??= new ListBuilder<GenericInfo>();
  set summary(ListBuilder<GenericInfo> summary) => _$this._summary = summary;

  RelatedBuilder();

  RelatedBuilder get _$this {
    if (_$v != null) {
      _adaptation = _$v.adaptation?.toBuilder();
      _alternativeSetting = _$v.alternativeSetting?.toBuilder();
      _alternativeVersion = _$v.alternativeVersion?.toBuilder();
      _character = _$v.character?.toBuilder();
      _fullStory = _$v.fullStory?.toBuilder();
      _other = _$v.other?.toBuilder();
      _parentStory = _$v.parentStory?.toBuilder();
      _prequel = _$v.prequel?.toBuilder();
      _sequel = _$v.sequel?.toBuilder();
      _sideStory = _$v.sideStory?.toBuilder();
      _spinOff = _$v.spinOff?.toBuilder();
      _summary = _$v.summary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Related other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Related;
  }

  @override
  void update(void Function(RelatedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Related build() {
    _$Related _$result;
    try {
      _$result = _$v ??
          new _$Related._(
              adaptation: _adaptation?.build(),
              alternativeSetting: _alternativeSetting?.build(),
              alternativeVersion: _alternativeVersion?.build(),
              character: _character?.build(),
              fullStory: _fullStory?.build(),
              other: _other?.build(),
              parentStory: _parentStory?.build(),
              prequel: _prequel?.build(),
              sequel: _sequel?.build(),
              sideStory: _sideStory?.build(),
              spinOff: _spinOff?.build(),
              summary: _summary?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'adaptation';
        _adaptation?.build();
        _$failedField = 'alternativeSetting';
        _alternativeSetting?.build();
        _$failedField = 'alternativeVersion';
        _alternativeVersion?.build();
        _$failedField = 'character';
        _character?.build();
        _$failedField = 'fullStory';
        _fullStory?.build();
        _$failedField = 'other';
        _other?.build();
        _$failedField = 'parentStory';
        _parentStory?.build();
        _$failedField = 'prequel';
        _prequel?.build();
        _$failedField = 'sequel';
        _sequel?.build();
        _$failedField = 'sideStory';
        _sideStory?.build();
        _$failedField = 'spinOff';
        _spinOff?.build();
        _$failedField = 'summary';
        _summary?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Related', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
