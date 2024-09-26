import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ArealistRecord extends FirestoreRecord {
  ArealistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "area_id" field.
  String? _areaId;
  String get areaId => _areaId ?? '';
  bool hasAreaId() => _areaId != null;

  // "area_name" field.
  String? _areaName;
  String get areaName => _areaName ?? '';
  bool hasAreaName() => _areaName != null;

  // "area_note" field.
  String? _areaNote;
  String get areaNote => _areaNote ?? '';
  bool hasAreaNote() => _areaNote != null;

  // "area_autospec" field.
  bool? _areaAutospec;
  bool get areaAutospec => _areaAutospec ?? false;
  bool hasAreaAutospec() => _areaAutospec != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _areaId = snapshotData['area_id'] as String?;
    _areaName = snapshotData['area_name'] as String?;
    _areaNote = snapshotData['area_note'] as String?;
    _areaAutospec = snapshotData['area_autospec'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('arealist')
          : FirebaseFirestore.instance.collectionGroup('arealist');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('arealist').doc(id);

  static Stream<ArealistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ArealistRecord.fromSnapshot(s));

  static Future<ArealistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ArealistRecord.fromSnapshot(s));

  static ArealistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ArealistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ArealistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ArealistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ArealistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ArealistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createArealistRecordData({
  String? areaId,
  String? areaName,
  String? areaNote,
  bool? areaAutospec,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'area_id': areaId,
      'area_name': areaName,
      'area_note': areaNote,
      'area_autospec': areaAutospec,
    }.withoutNulls,
  );

  return firestoreData;
}

class ArealistRecordDocumentEquality implements Equality<ArealistRecord> {
  const ArealistRecordDocumentEquality();

  @override
  bool equals(ArealistRecord? e1, ArealistRecord? e2) {
    return e1?.areaId == e2?.areaId &&
        e1?.areaName == e2?.areaName &&
        e1?.areaNote == e2?.areaNote &&
        e1?.areaAutospec == e2?.areaAutospec;
  }

  @override
  int hash(ArealistRecord? e) => const ListEquality()
      .hash([e?.areaId, e?.areaName, e?.areaNote, e?.areaAutospec]);

  @override
  bool isValidKey(Object? o) => o is ArealistRecord;
}
