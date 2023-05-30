import 'dart:async';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LocalizacaoRecord extends FirestoreRecord {
  LocalizacaoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  void _initializeFields() {
    _location = snapshotData['location'] as LatLng?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Localizacao');

  static Stream<LocalizacaoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LocalizacaoRecord.fromSnapshot(s));

  static Future<LocalizacaoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LocalizacaoRecord.fromSnapshot(s));

  static LocalizacaoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LocalizacaoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LocalizacaoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LocalizacaoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LocalizacaoRecord(reference: ${reference.path}, data: $snapshotData)';
}

Map<String, dynamic> createLocalizacaoRecordData({
  LatLng? location,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
    }.withoutNulls,
  );

  return firestoreData;
}
