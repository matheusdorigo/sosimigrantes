// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'localizacao_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocalizacaoRecord> _$localizacaoRecordSerializer =
    new _$LocalizacaoRecordSerializer();

class _$LocalizacaoRecordSerializer
    implements StructuredSerializer<LocalizacaoRecord> {
  @override
  final Iterable<Type> types = const [LocalizacaoRecord, _$LocalizacaoRecord];
  @override
  final String wireName = 'LocalizacaoRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocalizacaoRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  LocalizacaoRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocalizacaoRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$LocalizacaoRecord extends LocalizacaoRecord {
  @override
  final LatLng? location;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$LocalizacaoRecord(
          [void Function(LocalizacaoRecordBuilder)? updates]) =>
      (new LocalizacaoRecordBuilder()..update(updates))._build();

  _$LocalizacaoRecord._({this.location, this.ffRef}) : super._();

  @override
  LocalizacaoRecord rebuild(void Function(LocalizacaoRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocalizacaoRecordBuilder toBuilder() =>
      new LocalizacaoRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocalizacaoRecord &&
        location == other.location &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, location.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocalizacaoRecord')
          ..add('location', location)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class LocalizacaoRecordBuilder
    implements Builder<LocalizacaoRecord, LocalizacaoRecordBuilder> {
  _$LocalizacaoRecord? _$v;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  LocalizacaoRecordBuilder() {
    LocalizacaoRecord._initializeBuilder(this);
  }

  LocalizacaoRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _location = $v.location;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocalizacaoRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocalizacaoRecord;
  }

  @override
  void update(void Function(LocalizacaoRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocalizacaoRecord build() => _build();

  _$LocalizacaoRecord _build() {
    final _$result =
        _$v ?? new _$LocalizacaoRecord._(location: location, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
