import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TasklistRecord extends FirestoreRecord {
  TasklistRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "task_id" field.
  String? _taskId;
  String get taskId => _taskId ?? '';
  bool hasTaskId() => _taskId != null;

  // "task_title" field.
  String? _taskTitle;
  String get taskTitle => _taskTitle ?? '';
  bool hasTaskTitle() => _taskTitle != null;

  // "task_dec" field.
  String? _taskDec;
  String get taskDec => _taskDec ?? '';
  bool hasTaskDec() => _taskDec != null;

  // "task_priority" field.
  bool? _taskPriority;
  bool get taskPriority => _taskPriority ?? false;
  bool hasTaskPriority() => _taskPriority != null;

  // "task_completed" field.
  bool? _taskCompleted;
  bool get taskCompleted => _taskCompleted ?? false;
  bool hasTaskCompleted() => _taskCompleted != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _taskId = snapshotData['task_id'] as String?;
    _taskTitle = snapshotData['task_title'] as String?;
    _taskDec = snapshotData['task_dec'] as String?;
    _taskPriority = snapshotData['task_priority'] as bool?;
    _taskCompleted = snapshotData['task_completed'] as bool?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('tasklist')
          : FirebaseFirestore.instance.collectionGroup('tasklist');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('tasklist').doc(id);

  static Stream<TasklistRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TasklistRecord.fromSnapshot(s));

  static Future<TasklistRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TasklistRecord.fromSnapshot(s));

  static TasklistRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TasklistRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TasklistRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TasklistRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TasklistRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TasklistRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTasklistRecordData({
  String? taskId,
  String? taskTitle,
  String? taskDec,
  bool? taskPriority,
  bool? taskCompleted,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'task_id': taskId,
      'task_title': taskTitle,
      'task_dec': taskDec,
      'task_priority': taskPriority,
      'task_completed': taskCompleted,
    }.withoutNulls,
  );

  return firestoreData;
}

class TasklistRecordDocumentEquality implements Equality<TasklistRecord> {
  const TasklistRecordDocumentEquality();

  @override
  bool equals(TasklistRecord? e1, TasklistRecord? e2) {
    return e1?.taskId == e2?.taskId &&
        e1?.taskTitle == e2?.taskTitle &&
        e1?.taskDec == e2?.taskDec &&
        e1?.taskPriority == e2?.taskPriority &&
        e1?.taskCompleted == e2?.taskCompleted;
  }

  @override
  int hash(TasklistRecord? e) => const ListEquality().hash(
      [e?.taskId, e?.taskTitle, e?.taskDec, e?.taskPriority, e?.taskCompleted]);

  @override
  bool isValidKey(Object? o) => o is TasklistRecord;
}
