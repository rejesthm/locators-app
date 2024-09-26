import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RackinspectionRecord extends FirestoreRecord {
  RackinspectionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "rackInspectionID" field.
  String? _rackInspectionID;
  String get rackInspectionID => _rackInspectionID ?? '';
  bool hasRackInspectionID() => _rackInspectionID != null;

  // "rackInspectionName" field.
  String? _rackInspectionName;
  String get rackInspectionName => _rackInspectionName ?? '';
  bool hasRackInspectionName() => _rackInspectionName != null;

  // "create_time" field.
  DateTime? _createTime;
  DateTime? get createTime => _createTime;
  bool hasCreateTime() => _createTime != null;

  // "business_module" field.
  String? _businessModule;
  String get businessModule => _businessModule ?? '';
  bool hasBusinessModule() => _businessModule != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _rackInspectionID = snapshotData['rackInspectionID'] as String?;
    _rackInspectionName = snapshotData['rackInspectionName'] as String?;
    _createTime = snapshotData['create_time'] as DateTime?;
    _businessModule = snapshotData['business_module'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('rackinspection')
          : FirebaseFirestore.instance.collectionGroup('rackinspection');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('rackinspection').doc(id);

  static Stream<RackinspectionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => RackinspectionRecord.fromSnapshot(s));

  static Future<RackinspectionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => RackinspectionRecord.fromSnapshot(s));

  static RackinspectionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      RackinspectionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static RackinspectionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      RackinspectionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'RackinspectionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is RackinspectionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createRackinspectionRecordData({
  String? rackInspectionID,
  String? rackInspectionName,
  DateTime? createTime,
  String? businessModule,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'rackInspectionID': rackInspectionID,
      'rackInspectionName': rackInspectionName,
      'create_time': createTime,
      'business_module': businessModule,
    }.withoutNulls,
  );

  return firestoreData;
}

class RackinspectionRecordDocumentEquality
    implements Equality<RackinspectionRecord> {
  const RackinspectionRecordDocumentEquality();

  @override
  bool equals(RackinspectionRecord? e1, RackinspectionRecord? e2) {
    return e1?.rackInspectionID == e2?.rackInspectionID &&
        e1?.rackInspectionName == e2?.rackInspectionName &&
        e1?.createTime == e2?.createTime &&
        e1?.businessModule == e2?.businessModule;
  }

  @override
  int hash(RackinspectionRecord? e) => const ListEquality().hash([
        e?.rackInspectionID,
        e?.rackInspectionName,
        e?.createTime,
        e?.businessModule
      ]);

  @override
  bool isValidKey(Object? o) => o is RackinspectionRecord;
}
