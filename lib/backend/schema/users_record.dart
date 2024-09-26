import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "userDisplayName" field.
  String? _userDisplayName;
  String get userDisplayName => _userDisplayName ?? '';
  bool hasUserDisplayName() => _userDisplayName != null;

  // "userJobTitle" field.
  String? _userJobTitle;
  String get userJobTitle => _userJobTitle ?? '';
  bool hasUserJobTitle() => _userJobTitle != null;

  // "userCompany" field.
  String? _userCompany;
  String get userCompany => _userCompany ?? '';
  bool hasUserCompany() => _userCompany != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  bool hasUserEmail() => _userEmail != null;

  // "userMobile" field.
  String? _userMobile;
  String get userMobile => _userMobile ?? '';
  bool hasUserMobile() => _userMobile != null;

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
  String? _dateEditedTimestamp;
  String get dateEditedTimestamp => _dateEditedTimestamp ?? '';
  bool hasDateEditedTimestamp() => _dateEditedTimestamp != null;

  // "editedBy" field.
  String? _editedBy;
  String get editedBy => _editedBy ?? '';
  bool hasEditedBy() => _editedBy != null;

  // "lastLogin" field.
  DateTime? _lastLogin;
  DateTime? get lastLogin => _lastLogin;
  bool hasLastLogin() => _lastLogin != null;

  // "isAuthenticated" field.
  bool? _isAuthenticated;
  bool get isAuthenticated => _isAuthenticated ?? false;
  bool hasIsAuthenticated() => _isAuthenticated != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  void _initializeFields() {
    _userName = snapshotData['userName'] as String?;
    _userDisplayName = snapshotData['userDisplayName'] as String?;
    _userJobTitle = snapshotData['userJobTitle'] as String?;
    _userCompany = snapshotData['userCompany'] as String?;
    _userEmail = snapshotData['userEmail'] as String?;
    _userMobile = snapshotData['userMobile'] as String?;
    _deleted = snapshotData['deleted'] as bool?;
    _dateDeletedTimestamp = snapshotData['dateDeletedTimestamp'] as DateTime?;
    _deletedBy = snapshotData['deletedBy'] as String?;
    _dateCreatedTimestamp = snapshotData['dateCreatedTimestamp'] as DateTime?;
    _createdBy = snapshotData['createdBy'] as String?;
    _dateEditedTimestamp = snapshotData['dateEditedTimestamp'] as String?;
    _editedBy = snapshotData['editedBy'] as String?;
    _lastLogin = snapshotData['lastLogin'] as DateTime?;
    _isAuthenticated = snapshotData['isAuthenticated'] as bool?;
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _uid = snapshotData['uid'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _phoneNumber = snapshotData['phone_number'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? userName,
  String? userDisplayName,
  String? userJobTitle,
  String? userCompany,
  String? userEmail,
  String? userMobile,
  bool? deleted,
  DateTime? dateDeletedTimestamp,
  String? deletedBy,
  DateTime? dateCreatedTimestamp,
  String? createdBy,
  String? dateEditedTimestamp,
  String? editedBy,
  DateTime? lastLogin,
  bool? isAuthenticated,
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'userName': userName,
      'userDisplayName': userDisplayName,
      'userJobTitle': userJobTitle,
      'userCompany': userCompany,
      'userEmail': userEmail,
      'userMobile': userMobile,
      'deleted': deleted,
      'dateDeletedTimestamp': dateDeletedTimestamp,
      'deletedBy': deletedBy,
      'dateCreatedTimestamp': dateCreatedTimestamp,
      'createdBy': createdBy,
      'dateEditedTimestamp': dateEditedTimestamp,
      'editedBy': editedBy,
      'lastLogin': lastLogin,
      'isAuthenticated': isAuthenticated,
      'email': email,
      'display_name': displayName,
      'photo_url': photoUrl,
      'uid': uid,
      'created_time': createdTime,
      'phone_number': phoneNumber,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.userName == e2?.userName &&
        e1?.userDisplayName == e2?.userDisplayName &&
        e1?.userJobTitle == e2?.userJobTitle &&
        e1?.userCompany == e2?.userCompany &&
        e1?.userEmail == e2?.userEmail &&
        e1?.userMobile == e2?.userMobile &&
        e1?.deleted == e2?.deleted &&
        e1?.dateDeletedTimestamp == e2?.dateDeletedTimestamp &&
        e1?.deletedBy == e2?.deletedBy &&
        e1?.dateCreatedTimestamp == e2?.dateCreatedTimestamp &&
        e1?.createdBy == e2?.createdBy &&
        e1?.dateEditedTimestamp == e2?.dateEditedTimestamp &&
        e1?.editedBy == e2?.editedBy &&
        e1?.lastLogin == e2?.lastLogin &&
        e1?.isAuthenticated == e2?.isAuthenticated &&
        e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.uid == e2?.uid &&
        e1?.createdTime == e2?.createdTime &&
        e1?.phoneNumber == e2?.phoneNumber;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.userName,
        e?.userDisplayName,
        e?.userJobTitle,
        e?.userCompany,
        e?.userEmail,
        e?.userMobile,
        e?.deleted,
        e?.dateDeletedTimestamp,
        e?.deletedBy,
        e?.dateCreatedTimestamp,
        e?.createdBy,
        e?.dateEditedTimestamp,
        e?.editedBy,
        e?.lastLogin,
        e?.isAuthenticated,
        e?.email,
        e?.displayName,
        e?.photoUrl,
        e?.uid,
        e?.createdTime,
        e?.phoneNumber
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
