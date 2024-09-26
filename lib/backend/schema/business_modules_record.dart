import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BusinessModulesRecord extends FirestoreRecord {
  BusinessModulesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "moduleType" field.
  String? _moduleType;
  String get moduleType => _moduleType ?? '';
  bool hasModuleType() => _moduleType != null;

  // "projectReference" field.
  String? _projectReference;
  String get projectReference => _projectReference ?? '';
  bool hasProjectReference() => _projectReference != null;

  // "companyName" field.
  String? _companyName;
  String get companyName => _companyName ?? '';
  bool hasCompanyName() => _companyName != null;

  // "siteAddress" field.
  String? _siteAddress;
  String get siteAddress => _siteAddress ?? '';
  bool hasSiteAddress() => _siteAddress != null;

  // "cards" field.
  List<BusinessModuleCardStruct>? _cards;
  List<BusinessModuleCardStruct> get cards => _cards ?? const [];
  bool hasCards() => _cards != null;

  // "user" field.
  UserStruct? _user;
  UserStruct get user => _user ?? UserStruct();
  bool hasUser() => _user != null;

  // "users" field.
  List<String>? _users;
  List<String> get users => _users ?? const [];
  bool hasUsers() => _users != null;

  // "projects" field.
  List<String>? _projects;
  List<String> get projects => _projects ?? const [];
  bool hasProjects() => _projects != null;

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

  // "moduleID" field.
  String? _moduleID;
  String get moduleID => _moduleID ?? '';
  bool hasModuleID() => _moduleID != null;

  void _initializeFields() {
    _moduleType = snapshotData['moduleType'] as String?;
    _projectReference = snapshotData['projectReference'] as String?;
    _companyName = snapshotData['companyName'] as String?;
    _siteAddress = snapshotData['siteAddress'] as String?;
    _cards = getStructList(
      snapshotData['cards'],
      BusinessModuleCardStruct.fromMap,
    );
    _user = UserStruct.maybeFromMap(snapshotData['user']);
    _users = getDataList(snapshotData['users']);
    _projects = getDataList(snapshotData['projects']);
    _deleted = snapshotData['deleted'] as bool?;
    _dateDeletedTimestamp = snapshotData['dateDeletedTimestamp'] as DateTime?;
    _deletedBy = snapshotData['deletedBy'] as String?;
    _dateCreatedTimestamp = snapshotData['dateCreatedTimestamp'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _dateEditedTimestamp = snapshotData['dateEditedTimestamp'] as DateTime?;
    _editedBy = snapshotData['editedBy'] as String?;
    _moduleID = snapshotData['moduleID'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('businessModules');

  static Stream<BusinessModulesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusinessModulesRecord.fromSnapshot(s));

  static Future<BusinessModulesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusinessModulesRecord.fromSnapshot(s));

  static BusinessModulesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BusinessModulesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusinessModulesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusinessModulesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusinessModulesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusinessModulesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusinessModulesRecordData({
  String? moduleType,
  String? projectReference,
  String? companyName,
  String? siteAddress,
  UserStruct? user,
  bool? deleted,
  DateTime? dateDeletedTimestamp,
  String? deletedBy,
  DateTime? dateCreatedTimestamp,
  String? createdBy,
  DateTime? dateEditedTimestamp,
  String? editedBy,
  String? moduleID,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'moduleType': moduleType,
      'projectReference': projectReference,
      'companyName': companyName,
      'siteAddress': siteAddress,
      'user': UserStruct().toMap(),
      'deleted': deleted,
      'dateDeletedTimestamp': dateDeletedTimestamp,
      'deletedBy': deletedBy,
      'dateCreatedTimestamp': dateCreatedTimestamp,
      'createdBy': createdBy,
      'dateEditedTimestamp': dateEditedTimestamp,
      'editedBy': editedBy,
      'moduleID': moduleID,
    }.withoutNulls,
  );

  // Handle nested data for "user" field.
  addUserStructData(firestoreData, user, 'user');

  return firestoreData;
}

class BusinessModulesRecordDocumentEquality
    implements Equality<BusinessModulesRecord> {
  const BusinessModulesRecordDocumentEquality();

  @override
  bool equals(BusinessModulesRecord? e1, BusinessModulesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.moduleType == e2?.moduleType &&
        e1?.projectReference == e2?.projectReference &&
        e1?.companyName == e2?.companyName &&
        e1?.siteAddress == e2?.siteAddress &&
        listEquality.equals(e1?.cards, e2?.cards) &&
        e1?.user == e2?.user &&
        listEquality.equals(e1?.users, e2?.users) &&
        listEquality.equals(e1?.projects, e2?.projects) &&
        e1?.deleted == e2?.deleted &&
        e1?.dateDeletedTimestamp == e2?.dateDeletedTimestamp &&
        e1?.deletedBy == e2?.deletedBy &&
        e1?.dateCreatedTimestamp == e2?.dateCreatedTimestamp &&
        e1?.createdBy == e2?.createdBy &&
        e1?.dateEditedTimestamp == e2?.dateEditedTimestamp &&
        e1?.editedBy == e2?.editedBy &&
        e1?.moduleID == e2?.moduleID;
  }

  @override
  int hash(BusinessModulesRecord? e) => const ListEquality().hash([
        e?.moduleType,
        e?.projectReference,
        e?.companyName,
        e?.siteAddress,
        e?.cards,
        e?.user,
        e?.users,
        e?.projects,
        e?.deleted,
        e?.dateDeletedTimestamp,
        e?.deletedBy,
        e?.dateCreatedTimestamp,
        e?.createdBy,
        e?.dateEditedTimestamp,
        e?.editedBy,
        e?.moduleID
      ]);

  @override
  bool isValidKey(Object? o) => o is BusinessModulesRecord;
}
