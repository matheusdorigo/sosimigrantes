// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sp_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SpRecord> _$spRecordSerializer = new _$SpRecordSerializer();

class _$SpRecordSerializer implements StructuredSerializer<SpRecord> {
  @override
  final Iterable<Type> types = const [SpRecord, _$SpRecord];
  @override
  final String wireName = 'SpRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, SpRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.utilidade;
    if (value != null) {
      result
        ..add('utilidade')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.telefone;
    if (value != null) {
      result
        ..add('telefone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tipo;
    if (value != null) {
      result
        ..add('tipo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
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
  SpRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SpRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'utilidade':
          result.utilidade = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'telefone':
          result.telefone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tipo':
          result.tipo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
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

class _$SpRecord extends SpRecord {
  @override
  final String? utilidade;
  @override
  final String? telefone;
  @override
  final String? tipo;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$SpRecord([void Function(SpRecordBuilder)? updates]) =>
      (new SpRecordBuilder()..update(updates))._build();

  _$SpRecord._({this.utilidade, this.telefone, this.tipo, this.ffRef})
      : super._();

  @override
  SpRecord rebuild(void Function(SpRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SpRecordBuilder toBuilder() => new SpRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SpRecord &&
        utilidade == other.utilidade &&
        telefone == other.telefone &&
        tipo == other.tipo &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, utilidade.hashCode);
    _$hash = $jc(_$hash, telefone.hashCode);
    _$hash = $jc(_$hash, tipo.hashCode);
    _$hash = $jc(_$hash, ffRef.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SpRecord')
          ..add('utilidade', utilidade)
          ..add('telefone', telefone)
          ..add('tipo', tipo)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class SpRecordBuilder implements Builder<SpRecord, SpRecordBuilder> {
  _$SpRecord? _$v;

  String? _utilidade;
  String? get utilidade => _$this._utilidade;
  set utilidade(String? utilidade) => _$this._utilidade = utilidade;

  String? _telefone;
  String? get telefone => _$this._telefone;
  set telefone(String? telefone) => _$this._telefone = telefone;

  String? _tipo;
  String? get tipo => _$this._tipo;
  set tipo(String? tipo) => _$this._tipo = tipo;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  SpRecordBuilder() {
    SpRecord._initializeBuilder(this);
  }

  SpRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _utilidade = $v.utilidade;
      _telefone = $v.telefone;
      _tipo = $v.tipo;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SpRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SpRecord;
  }

  @override
  void update(void Function(SpRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SpRecord build() => _build();

  _$SpRecord _build() {
    final _$result = _$v ??
        new _$SpRecord._(
            utilidade: utilidade, telefone: telefone, tipo: tipo, ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
