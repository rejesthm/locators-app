import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProjectsRecord extends FirestoreRecord {
  ProjectsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "projectReference" field.
  String? _projectReference;
  String get projectReference => _projectReference ?? '';
  bool hasProjectReference() => _projectReference != null;

  // "projectTitle" field.
  String? _projectTitle;
  String get projectTitle => _projectTitle ?? '';
  bool hasProjectTitle() => _projectTitle != null;

  // "projectDescription" field.
  String? _projectDescription;
  String get projectDescription => _projectDescription ?? '';
  bool hasProjectDescription() => _projectDescription != null;

  // "projectStatus" field.
  String? _projectStatus;
  String get projectStatus => _projectStatus ?? '';
  bool hasProjectStatus() => _projectStatus != null;

  // "projectTask" field.
  bool? _projectTask;
  bool get projectTask => _projectTask ?? false;
  bool hasProjectTask() => _projectTask != null;

  // "projectValue" field.
  double? _projectValue;
  double get projectValue => _projectValue ?? 0.0;
  bool hasProjectValue() => _projectValue != null;

  // "deleted" field.
  bool? _deleted;
  bool get deleted => _deleted ?? false;
  bool hasDeleted() => _deleted != null;

  // "dateDeletedTimestamp" field.
  DateTime? _dateDeletedTimestamp;
  DateTime? get dateDeletedTimestamp => _dateDeletedTimestamp;
  bool hasDateDeletedTimestamp() => _dateDeletedTimestamp != null;

  // "deletedBy" field.
  String? _deletedBy;
  String get deletedBy => _deletedBy ?? '';
  bool hasDeletedBy() => _deletedBy != null;

  // "dateCreatedTimestamp" field.
  DateTime? _dateCreatedTimestamp;
  DateTime? get dateCreatedTimestamp => _dateCreatedTimestamp;
  bool hasDateCreatedTimestamp() => _dateCreatedTimestamp != null;

  // "createdBy" field.
  String? _createdBy;
  String get createdBy => _createdBy ?? '';
  bool hasCreatedBy() => _createdBy != null;

  // "dateEditedTimestamp" field.
  DateTime? _dateEditedTimestamp;
  DateTime? get dateEditedTimestamp => _dateEditedTimestamp;
  bool hasDateEditedTimestamp() => _dateEditedTimestamp != null;

  // "editedBy" field.
  String? _editedBy;
  String get editedBy => _editedBy ?? '';
  bool hasEditedBy() => _editedBy != null;

  // "projectID" field.
  String? _projectID;
  String get projectID => _projectID ?? '';
  bool hasProjectID() => _projectID != null;

  void _initializeFields() {
    _projectReference = snapshotData['projectReference'] as String?;
    _projectTitle = snapshotData['projectTitle'] as String?;
    _projectDescription = snapshotData['projectDescription'] as String?;
    _projectStatus = snapshotData['projectStatus'] as String?;
    _projectTask = snapshotData['projectTask'] as bool?;
    _projectValue = castToType<double>(snapshotData['projectValue']);
    _deleted = snapshotData['deleted'] as bool?;
    _dateDeletedTimestamp = snapshotData['dateDeletedTimestamp'] as DateTime?;
    _deletedBy = snapshotData['deletedBy'] as String?;
    _dateCreatedTimestamp = snapshotData['dateCreatedTimestamp'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _dateEditedTimestamp = snapshotData['dateEditedTimestamp'] as DateTime?;
    _editedBy = snapshotData['editedBy'] as String?;
    _projectID = snapshotData['projectID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('projects');

  static Stream<ProjectsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProjectsRecord.fromSnapshot(s));

  static Future<ProjectsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProjectsRecord.fromSnapshot(s));

  static ProjectsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProjectsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProjectsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProjectsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProjectsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProjectsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProjectsRecordData({
  String? projectReference,
  String? projectTitle,
  String? projectDescription,
  String? projectStatus,
  bool? projectTask,
  double? projectValue,
  bool? deleted,
  DateTime? dateDeletedTimestamp,
  String? deletedBy,
  DateTime? dateCreatedTimestamp,
  String? createdBy,
  DateTime? dateEditedTimestamp,
  String? editedBy,
  String? projectID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'projectReference': projectReference,
      'projectTitle': projectTitle,
      'projectDescription': projectDescription,
      'projectStatus': projectStatus,
      'projectTask': projectTask,
      'projectValue': projectValue,
      'deleted': deleted,
      'dateDeletedTimestamp': dateDeletedTimestamp,
      'deletedBy': deletedBy,
      'dateCreatedTimestamp': dateCreatedTimestamp,
      'createdBy': createdBy,
      'dateEditedTimestamp': dateEditedTimestamp,
      'editedBy': editedBy,
      'projectID': projectID,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProjectsRecordDocumentEquality implements Equality<ProjectsRecord> {
  const ProjectsRecordDocumentEquality();

  @override
  bool equals(ProjectsRecord? e1, ProjectsRecord? e2) {
    return e1?.projectReference == e2?.projectReference &&
        e1?.projectTitle == e2?.projectTitle &&
        e1?.projectDescription == e2?.projectDescription &&
        e1?.projectStatus == e2?.projectStatus &&
        e1?.projectTask == e2?.projectTask &&
        e1?.projectValue == e2?.projectValue &&
        e1?.deleted == e2?.deleted &&
        e1?.dateDeletedTimestamp == e2?.dateDeletedTimestamp &&
        e1?.deletedBy == e2?.deletedBy &&
        e1?.dateCreatedTimestamp == e2?.dateCreatedTimestamp &&
        e1?.createdBy == e2?.createdBy &&
        e1?.dateEditedTimestamp == e2?.dateEditedTimestamp &&
        e1?.editedBy == e2?.editedBy &&
        e1?.projectID == e2?.projectID;
  }

  @override
  int hash(ProjectsRecord? e) => const ListEquality().hash([
        e?.projectReference,
        e?.projectTitle,
        e?.projectDescription,
        e?.projectStatus,
        e?.projectTask,
        e?.projectValue,
        e?.deleted,
        e?.dateDeletedTimestamp,
        e?.deletedBy,
        e?.dateCreatedTimestamp,
        e?.createdBy,
        e?.dateEditedTimestamp,
        e?.editedBy,
        e?.projectID
      ]);

  @override
  bool isValidKey(Object? o) => o is ProjectsRecord;
}
