// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends FFFirebaseStruct {
  UserStruct({
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
    DateTime? createdBy,
    DateTime? dateEditedTimestamp,
    DateTime? editedBy,
    DateTime? lastLogin,
    bool? isAuthenticated,
    String? userID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _userName = userName,
        _userDisplayName = userDisplayName,
        _userJobTitle = userJobTitle,
        _userCompany = userCompany,
        _userEmail = userEmail,
        _userMobile = userMobile,
        _deleted = deleted,
        _dateDeletedTimestamp = dateDeletedTimestamp,
        _deletedBy = deletedBy,
        _dateCreatedTimestamp = dateCreatedTimestamp,
        _createdBy = createdBy,
        _dateEditedTimestamp = dateEditedTimestamp,
        _editedBy = editedBy,
        _lastLogin = lastLogin,
        _isAuthenticated = isAuthenticated,
        _userID = userID,
        super(firestoreUtilData);

  // "userName" field.
  String? _userName;
  String get userName => _userName ?? '';
  set userName(String? val) => _userName = val;

  bool hasUserName() => _userName != null;

  // "userDisplayName" field.
  String? _userDisplayName;
  String get userDisplayName => _userDisplayName ?? '';
  set userDisplayName(String? val) => _userDisplayName = val;

  bool hasUserDisplayName() => _userDisplayName != null;

  // "userJobTitle" field.
  String? _userJobTitle;
  String get userJobTitle => _userJobTitle ?? '';
  set userJobTitle(String? val) => _userJobTitle = val;

  bool hasUserJobTitle() => _userJobTitle != null;

  // "userCompany" field.
  String? _userCompany;
  String get userCompany => _userCompany ?? '';
  set userCompany(String? val) => _userCompany = val;

  bool hasUserCompany() => _userCompany != null;

  // "userEmail" field.
  String? _userEmail;
  String get userEmail => _userEmail ?? '';
  set userEmail(String? val) => _userEmail = val;

  bool hasUserEmail() => _userEmail != null;

  // "userMobile" field.
  String? _userMobile;
  String get userMobile => _userMobile ?? '';
  set userMobile(String? val) => _userMobile = val;

  bool hasUserMobile() => _userMobile != null;

  // "deleted" field.
  bool? _deleted;
  bool get deleted => _deleted ?? false;
  set deleted(bool? val) => _deleted = val;

  bool hasDeleted() => _deleted != null;

  // "dateDeletedTimestamp" field.
  DateTime? _dateDeletedTimestamp;
  DateTime? get dateDeletedTimestamp => _dateDeletedTimestamp;
  set dateDeletedTimestamp(DateTime? val) => _dateDeletedTimestamp = val;

  bool hasDateDeletedTimestamp() => _dateDeletedTimestamp != null;

  // "deletedBy" field.
  String? _deletedBy;
  String get deletedBy => _deletedBy ?? '';
  set deletedBy(String? val) => _deletedBy = val;

  bool hasDeletedBy() => _deletedBy != null;

  // "dateCreatedTimestamp" field.
  DateTime? _dateCreatedTimestamp;
  DateTime? get dateCreatedTimestamp => _dateCreatedTimestamp;
  set dateCreatedTimestamp(DateTime? val) => _dateCreatedTimestamp = val;

  bool hasDateCreatedTimestamp() => _dateCreatedTimestamp != null;

  // "createdBy" field.
  DateTime? _createdBy;
  DateTime? get createdBy => _createdBy;
  set createdBy(DateTime? val) => _createdBy = val;

  bool hasCreatedBy() => _createdBy != null;

  // "dateEditedTimestamp" field.
  DateTime? _dateEditedTimestamp;
  DateTime? get dateEditedTimestamp => _dateEditedTimestamp;
  set dateEditedTimestamp(DateTime? val) => _dateEditedTimestamp = val;

  bool hasDateEditedTimestamp() => _dateEditedTimestamp != null;

  // "editedBy" field.
  DateTime? _editedBy;
  DateTime? get editedBy => _editedBy;
  set editedBy(DateTime? val) => _editedBy = val;

  bool hasEditedBy() => _editedBy != null;

  // "lastLogin" field.
  DateTime? _lastLogin;
  DateTime? get lastLogin => _lastLogin;
  set lastLogin(DateTime? val) => _lastLogin = val;

  bool hasLastLogin() => _lastLogin != null;

  // "isAuthenticated" field.
  bool? _isAuthenticated;
  bool get isAuthenticated => _isAuthenticated ?? false;
  set isAuthenticated(bool? val) => _isAuthenticated = val;

  bool hasIsAuthenticated() => _isAuthenticated != null;

  // "userID" field.
  String? _userID;
  String get userID => _userID ?? '';
  set userID(String? val) => _userID = val;

  bool hasUserID() => _userID != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        userName: data['userName'] as String?,
        userDisplayName: data['userDisplayName'] as String?,
        userJobTitle: data['userJobTitle'] as String?,
        userCompany: data['userCompany'] as String?,
        userEmail: data['userEmail'] as String?,
        userMobile: data['userMobile'] as String?,
        deleted: data['deleted'] as bool?,
        dateDeletedTimestamp: data['dateDeletedTimestamp'] as DateTime?,
        deletedBy: data['deletedBy'] as String?,
        dateCreatedTimestamp: data['dateCreatedTimestamp'] as DateTime?,
        createdBy: data['createdBy'] as DateTime?,
        dateEditedTimestamp: data['dateEditedTimestamp'] as DateTime?,
        editedBy: data['editedBy'] as DateTime?,
        lastLogin: data['lastLogin'] as DateTime?,
        isAuthenticated: data['isAuthenticated'] as bool?,
        userID: data['userID'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'userName': _userName,
        'userDisplayName': _userDisplayName,
        'userJobTitle': _userJobTitle,
        'userCompany': _userCompany,
        'userEmail': _userEmail,
        'userMobile': _userMobile,
        'deleted': _deleted,
        'dateDeletedTimestamp': _dateDeletedTimestamp,
        'deletedBy': _deletedBy,
        'dateCreatedTimestamp': _dateCreatedTimestamp,
        'createdBy': _createdBy,
        'dateEditedTimestamp': _dateEditedTimestamp,
        'editedBy': _editedBy,
        'lastLogin': _lastLogin,
        'isAuthenticated': _isAuthenticated,
        'userID': _userID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'userName': serializeParam(
          _userName,
          ParamType.String,
        ),
        'userDisplayName': serializeParam(
          _userDisplayName,
          ParamType.String,
        ),
        'userJobTitle': serializeParam(
          _userJobTitle,
          ParamType.String,
        ),
        'userCompany': serializeParam(
          _userCompany,
          ParamType.String,
        ),
        'userEmail': serializeParam(
          _userEmail,
          ParamType.String,
        ),
        'userMobile': serializeParam(
          _userMobile,
          ParamType.String,
        ),
        'deleted': serializeParam(
          _deleted,
          ParamType.bool,
        ),
        'dateDeletedTimestamp': serializeParam(
          _dateDeletedTimestamp,
          ParamType.DateTime,
        ),
        'deletedBy': serializeParam(
          _deletedBy,
          ParamType.String,
        ),
        'dateCreatedTimestamp': serializeParam(
          _dateCreatedTimestamp,
          ParamType.DateTime,
        ),
        'createdBy': serializeParam(
          _createdBy,
          ParamType.DateTime,
        ),
        'dateEditedTimestamp': serializeParam(
          _dateEditedTimestamp,
          ParamType.DateTime,
        ),
        'editedBy': serializeParam(
          _editedBy,
          ParamType.DateTime,
        ),
        'lastLogin': serializeParam(
          _lastLogin,
          ParamType.DateTime,
        ),
        'isAuthenticated': serializeParam(
          _isAuthenticated,
          ParamType.bool,
        ),
        'userID': serializeParam(
          _userID,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        userName: deserializeParam(
          data['userName'],
          ParamType.String,
          false,
        ),
        userDisplayName: deserializeParam(
          data['userDisplayName'],
          ParamType.String,
          false,
        ),
        userJobTitle: deserializeParam(
          data['userJobTitle'],
          ParamType.String,
          false,
        ),
        userCompany: deserializeParam(
          data['userCompany'],
          ParamType.String,
          false,
        ),
        userEmail: deserializeParam(
          data['userEmail'],
          ParamType.String,
          false,
        ),
        userMobile: deserializeParam(
          data['userMobile'],
          ParamType.String,
          false,
        ),
        deleted: deserializeParam(
          data['deleted'],
          ParamType.bool,
          false,
        ),
        dateDeletedTimestamp: deserializeParam(
          data['dateDeletedTimestamp'],
          ParamType.DateTime,
          false,
        ),
        deletedBy: deserializeParam(
          data['deletedBy'],
          ParamType.String,
          false,
        ),
        dateCreatedTimestamp: deserializeParam(
          data['dateCreatedTimestamp'],
          ParamType.DateTime,
          false,
        ),
        createdBy: deserializeParam(
          data['createdBy'],
          ParamType.DateTime,
          false,
        ),
        dateEditedTimestamp: deserializeParam(
          data['dateEditedTimestamp'],
          ParamType.DateTime,
          false,
        ),
        editedBy: deserializeParam(
          data['editedBy'],
          ParamType.DateTime,
          false,
        ),
        lastLogin: deserializeParam(
          data['lastLogin'],
          ParamType.DateTime,
          false,
        ),
        isAuthenticated: deserializeParam(
          data['isAuthenticated'],
          ParamType.bool,
          false,
        ),
        userID: deserializeParam(
          data['userID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        userName == other.userName &&
        userDisplayName == other.userDisplayName &&
        userJobTitle == other.userJobTitle &&
        userCompany == other.userCompany &&
        userEmail == other.userEmail &&
        userMobile == other.userMobile &&
        deleted == other.deleted &&
        dateDeletedTimestamp == other.dateDeletedTimestamp &&
        deletedBy == other.deletedBy &&
        dateCreatedTimestamp == other.dateCreatedTimestamp &&
        createdBy == other.createdBy &&
        dateEditedTimestamp == other.dateEditedTimestamp &&
        editedBy == other.editedBy &&
        lastLogin == other.lastLogin &&
        isAuthenticated == other.isAuthenticated &&
        userID == other.userID;
  }

  @override
  int get hashCode => const ListEquality().hash([
        userName,
        userDisplayName,
        userJobTitle,
        userCompany,
        userEmail,
        userMobile,
        deleted,
        dateDeletedTimestamp,
        deletedBy,
        dateCreatedTimestamp,
        createdBy,
        dateEditedTimestamp,
        editedBy,
        lastLogin,
        isAuthenticated,
        userID
      ]);
}

UserStruct createUserStruct({
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
  DateTime? createdBy,
  DateTime? dateEditedTimestamp,
  DateTime? editedBy,
  DateTime? lastLogin,
  bool? isAuthenticated,
  String? userID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    UserStruct(
      userName: userName,
      userDisplayName: userDisplayName,
      userJobTitle: userJobTitle,
      userCompany: userCompany,
      userEmail: userEmail,
      userMobile: userMobile,
      deleted: deleted,
      dateDeletedTimestamp: dateDeletedTimestamp,
      deletedBy: deletedBy,
      dateCreatedTimestamp: dateCreatedTimestamp,
      createdBy: createdBy,
      dateEditedTimestamp: dateEditedTimestamp,
      editedBy: editedBy,
      lastLogin: lastLogin,
      isAuthenticated: isAuthenticated,
      userID: userID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

UserStruct? updateUserStruct(
  UserStruct? user, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    user
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addUserStructData(
  Map<String, dynamic> firestoreData,
  UserStruct? user,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (user == null) {
    return;
  }
  if (user.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields = !forFieldValue && user.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final userData = getUserFirestoreData(user, forFieldValue);
  final nestedData = userData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = user.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getUserFirestoreData(
  UserStruct? user, [
  bool forFieldValue = false,
]) {
  if (user == null) {
    return {};
  }
  final firestoreData = mapToFirestore(user.toMap());

  // Add any Firestore field values
  user.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getUserListFirestoreData(
  List<UserStruct>? users,
) =>
    users?.map((e) => getUserFirestoreData(e, true)).toList() ?? [];
