import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasksRecord extends FirestoreRecord {
  TasksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "taskTitle" field.
  String? _taskTitle;
  String get taskTitle => _taskTitle ?? '';
  bool hasTaskTitle() => _taskTitle != null;

  // "taskDetails" field.
  String? _taskDetails;
  String get taskDetails => _taskDetails ?? '';
  bool hasTaskDetails() => _taskDetails != null;

  // "taskPriority" field.
  bool? _taskPriority;
  bool get taskPriority => _taskPriority ?? false;
  bool hasTaskPriority() => _taskPriority != null;

  // "taskComplete" field.
  bool? _taskComplete;
  bool get taskComplete => _taskComplete ?? false;
  bool hasTaskComplete() => _taskComplete != null;

  // "taskOwner" field.
  String? _taskOwner;
  String get taskOwner => _taskOwner ?? '';
  bool hasTaskOwner() => _taskOwner != null;

  // "siteTask" field.
  bool? _siteTask;
  bool get siteTask => _siteTask ?? false;
  bool hasSiteTask() => _siteTask != null;

  // "siteRating" field.
  int? _siteRating;
  int get siteRating => _siteRating ?? 0;
  bool hasSiteRating() => _siteRating != null;

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

  void _initializeFields() {
    _taskTitle = snapshotData['taskTitle'] as String?;
    _taskDetails = snapshotData['taskDetails'] as String?;
    _taskPriority = snapshotData['taskPriority'] as bool?;
    _taskComplete = snapshotData['taskComplete'] as bool?;
    _taskOwner = snapshotData['taskOwner'] as String?;
    _siteTask = snapshotData['siteTask'] as bool?;
    _siteRating = castToType<int>(snapshotData['siteRating']);
    _deleted = snapshotData['deleted'] as bool?;
    _dateDeletedTimestamp = snapshotData['dateDeletedTimestamp'] as DateTime?;
    _deletedBy = snapshotData['deletedBy'] as String?;
    _dateCreatedTimestamp = snapshotData['dateCreatedTimestamp'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _dateEditedTimestamp = snapshotData['dateEditedTimestamp'] as DateTime?;
    _editedBy = snapshotData['editedBy'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tasks');

  static Stream<TasksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasksRecord.fromSnapshot(s));

  static Future<TasksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasksRecord.fromSnapshot(s));

  static TasksRecord fromSnapshot(DocumentSnapshot snapshot) => TasksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasksRecordData({
  String? taskTitle,
  String? taskDetails,
  bool? taskPriority,
  bool? taskComplete,
  String? taskOwner,
  bool? siteTask,
  int? siteRating,
  bool? deleted,
  DateTime? dateDeletedTimestamp,
  String? deletedBy,
  DateTime? dateCreatedTimestamp,
  String? createdBy,
  DateTime? dateEditedTimestamp,
  String? editedBy,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'taskTitle': taskTitle,
      'taskDetails': taskDetails,
      'taskPriority': taskPriority,
      'taskComplete': taskComplete,
      'taskOwner': taskOwner,
      'siteTask': siteTask,
      'siteRating': siteRating,
      'deleted': deleted,
      'dateDeletedTimestamp': dateDeletedTimestamp,
      'deletedBy': deletedBy,
      'dateCreatedTimestamp': dateCreatedTimestamp,
      'createdBy': createdBy,
      'dateEditedTimestamp': dateEditedTimestamp,
      'editedBy': editedBy,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasksRecordDocumentEquality implements Equality<TasksRecord> {
  const TasksRecordDocumentEquality();

  @override
  bool equals(TasksRecord? e1, TasksRecord? e2) {
    return e1?.taskTitle == e2?.taskTitle &&
        e1?.taskDetails == e2?.taskDetails &&
        e1?.taskPriority == e2?.taskPriority &&
        e1?.taskComplete == e2?.taskComplete &&
        e1?.taskOwner == e2?.taskOwner &&
        e1?.siteTask == e2?.siteTask &&
        e1?.siteRating == e2?.siteRating &&
        e1?.deleted == e2?.deleted &&
        e1?.dateDeletedTimestamp == e2?.dateDeletedTimestamp &&
        e1?.deletedBy == e2?.deletedBy &&
        e1?.dateCreatedTimestamp == e2?.dateCreatedTimestamp &&
        e1?.createdBy == e2?.createdBy &&
        e1?.dateEditedTimestamp == e2?.dateEditedTimestamp &&
        e1?.editedBy == e2?.editedBy;
  }

  @override
  int hash(TasksRecord? e) => const ListEquality().hash([
        e?.taskTitle,
        e?.taskDetails,
        e?.taskPriority,
        e?.taskComplete,
        e?.taskOwner,
        e?.siteTask,
        e?.siteRating,
        e?.deleted,
        e?.dateDeletedTimestamp,
        e?.deletedBy,
        e?.dateCreatedTimestamp,
        e?.createdBy,
        e?.dateEditedTimestamp,
        e?.editedBy
      ]);

  @override
  bool isValidKey(Object? o) => o is TasksRecord;
}
