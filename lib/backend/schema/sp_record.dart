import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'sp_record.g.dart';

abstract class SpRecord implements Built<SpRecord, SpRecordBuilder> {
  static Serializer<SpRecord> get serializer => _$spRecordSerializer;

  String? get utilidade;

  String? get telefone;

  String? get tipo;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(SpRecordBuilder builder) => builder
    ..utilidade = ''
    ..telefone = ''
    ..tipo = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SP');

  static Stream<SpRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<SpRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  SpRecord._();
  factory SpRecord([void Function(SpRecordBuilder) updates]) = _$SpRecord;

  static SpRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createSpRecordData({
  String? utilidade,
  String? telefone,
  String? tipo,
}) {
  final firestoreData = serializers.toFirestore(
    SpRecord.serializer,
    SpRecord(
      (s) => s
        ..utilidade = utilidade
        ..telefone = telefone
        ..tipo = tipo,
    ),
  );

  return firestoreData;
}
