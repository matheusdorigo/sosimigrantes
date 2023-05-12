import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'localizacao_record.g.dart';

abstract class LocalizacaoRecord
    implements Built<LocalizacaoRecord, LocalizacaoRecordBuilder> {
  static Serializer<LocalizacaoRecord> get serializer =>
      _$localizacaoRecordSerializer;

  LatLng? get location;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(LocalizacaoRecordBuilder builder) => builder;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Localizacao');

  static Stream<LocalizacaoRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<LocalizacaoRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  LocalizacaoRecord._();
  factory LocalizacaoRecord([void Function(LocalizacaoRecordBuilder) updates]) =
      _$LocalizacaoRecord;

  static LocalizacaoRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createLocalizacaoRecordData({
  LatLng? location,
}) {
  final firestoreData = serializers.toFirestore(
    LocalizacaoRecord.serializer,
    LocalizacaoRecord(
      (l) => l..location = location,
    ),
  );

  return firestoreData;
}
