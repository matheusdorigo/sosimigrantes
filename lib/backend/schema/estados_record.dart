import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'estados_record.g.dart';

abstract class EstadosRecord
    implements Built<EstadosRecord, EstadosRecordBuilder> {
  static Serializer<EstadosRecord> get serializer => _$estadosRecordSerializer;

  int? get id;

  String? get estado;

  String? get sigla;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(EstadosRecordBuilder builder) => builder
    ..id = 0
    ..estado = ''
    ..sigla = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('estados');

  static Stream<EstadosRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<EstadosRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  EstadosRecord._();
  factory EstadosRecord([void Function(EstadosRecordBuilder) updates]) =
      _$EstadosRecord;

  static EstadosRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createEstadosRecordData({
  int? id,
  String? estado,
  String? sigla,
}) {
  final firestoreData = serializers.toFirestore(
    EstadosRecord.serializer,
    EstadosRecord(
      (e) => e
        ..id = id
        ..estado = estado
        ..sigla = sigla,
    ),
  );

  return firestoreData;
}
