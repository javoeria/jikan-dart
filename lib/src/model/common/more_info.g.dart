// GENERATED CODE - DO NOT MODIFY BY HAND

part of more_info;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MoreInfo> _$moreInfoSerializer = new _$MoreInfoSerializer();

class _$MoreInfoSerializer implements StructuredSerializer<MoreInfo> {
  @override
  final Iterable<Type> types = const [MoreInfo, _$MoreInfo];
  @override
  final String wireName = 'MoreInfo';

  @override
  Iterable<Object> serialize(Serializers serializers, MoreInfo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.moreinfo != null) {
      result
        ..add('moreinfo')
        ..add(serializers.serialize(object.moreinfo,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MoreInfo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MoreInfoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'moreinfo':
          result.moreinfo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MoreInfo extends MoreInfo {
  @override
  final String moreinfo;

  factory _$MoreInfo([void Function(MoreInfoBuilder) updates]) =>
      (new MoreInfoBuilder()..update(updates)).build();

  _$MoreInfo._({this.moreinfo}) : super._();

  @override
  MoreInfo rebuild(void Function(MoreInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MoreInfoBuilder toBuilder() => new MoreInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MoreInfo && moreinfo == other.moreinfo;
  }

  @override
  int get hashCode {
    return $jf($jc(0, moreinfo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MoreInfo')..add('moreinfo', moreinfo))
        .toString();
  }
}

class MoreInfoBuilder implements Builder<MoreInfo, MoreInfoBuilder> {
  _$MoreInfo _$v;

  String _moreinfo;
  String get moreinfo => _$this._moreinfo;
  set moreinfo(String moreinfo) => _$this._moreinfo = moreinfo;

  MoreInfoBuilder();

  MoreInfoBuilder get _$this {
    if (_$v != null) {
      _moreinfo = _$v.moreinfo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MoreInfo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MoreInfo;
  }

  @override
  void update(void Function(MoreInfoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MoreInfo build() {
    final _$result = _$v ?? new _$MoreInfo._(moreinfo: moreinfo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
