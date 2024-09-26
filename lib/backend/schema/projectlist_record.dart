import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectlistRecord extends FirestoreRecord {
  ProjectlistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "projectId" field.
  String? _projectId;
  String get projectId => _projectId ?? '';
  bool hasProjectId() => _projectId != null;

  // "project_Reference" field.
  String? _projectReference;
  String get projectReference => _projectReference ?? '';
  bool hasProjectReference() => _projectReference != null;

  // "project_title" field.
  String? _projectTitle;
  String get projectTitle => _projectTitle ?? '';
  bool hasProjectTitle() => _projectTitle != null;

  // "project_dec" field.
  String? _projectDec;
  String get projectDec => _projectDec ?? '';
  bool hasProjectDec() => _projectDec != null;

  // "project_status" field.
  String? _projectStatus;
  String get projectStatus => _projectStatus ?? '';
  bool hasProjectStatus() => _projectStatus != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _projectId = snapshotData['projectId'] as String?;
    _projectReference = snapshotData['project_Reference'] as String?;
    _projectTitle = snapshotData['project_title'] as String?;
    _projectDec = snapshotData['project_dec'] as String?;
    _projectStatus = snapshotData['project_status'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('projectlist')
          : FirebaseFirestore.instance.collectionGroup('projectlist');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('projectlist').doc(id);

  static Stream<ProjectlistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectlistRecord.fromSnapshot(s));

  static Future<ProjectlistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectlistRecord.fromSnapshot(s));

  static ProjectlistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectlistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectlistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectlistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectlistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectlistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectlistRecordData({
  String? projectId,
  String? projectReference,
  String? projectTitle,
  String? projectDec,
  String? projectStatus,
  DateTime? createdTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projectId': projectId,
      'project_Reference': projectReference,
      'project_title': projectTitle,
      'project_dec': projectDec,
      'project_status': projectStatus,
      'created_time': createdTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectlistRecordDocumentEquality implements Equality<ProjectlistRecord> {
  const ProjectlistRecordDocumentEquality();

  @override
  bool equals(ProjectlistRecord? e1, ProjectlistRecord? e2) {
    return e1?.projectId == e2?.projectId &&
        e1?.projectReference == e2?.projectReference &&
        e1?.projectTitle == e2?.projectTitle &&
        e1?.projectDec == e2?.projectDec &&
        e1?.projectStatus == e2?.projectStatus &&
        e1?.createdTime == e2?.createdTime;
  }

  @override
  int hash(ProjectlistRecord? e) => const ListEquality().hash([
        e?.projectId,
        e?.projectReference,
        e?.projectTitle,
        e?.projectDec,
        e?.projectStatus,
        e?.createdTime
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectlistRecord;
}
