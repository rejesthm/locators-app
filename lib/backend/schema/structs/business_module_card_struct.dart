// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class BusinessModuleCardStruct extends FFFirebaseStruct {
  BusinessModuleCardStruct({
    String? reportSection,
    String? cardType,
    String? cardTitle,
    String? cardText,
    String? navigationRoute,
    String? project,
    String? cardID,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _reportSection = reportSection,
        _cardType = cardType,
        _cardTitle = cardTitle,
        _cardText = cardText,
        _navigationRoute = navigationRoute,
        _project = project,
        _cardID = cardID,
        super(firestoreUtilData);

  // "reportSection" field.
  String? _reportSection;
  String get reportSection => _reportSection ?? '';
  set reportSection(String? val) => _reportSection = val;

  bool hasReportSection() => _reportSection != null;

  // "cardType" field.
  String? _cardType;
  String get cardType => _cardType ?? '';
  set cardType(String? val) => _cardType = val;

  bool hasCardType() => _cardType != null;

  // "cardTitle" field.
  String? _cardTitle;
  String get cardTitle => _cardTitle ?? '';
  set cardTitle(String? val) => _cardTitle = val;

  bool hasCardTitle() => _cardTitle != null;

  // "cardText" field.
  String? _cardText;
  String get cardText => _cardText ?? '';
  set cardText(String? val) => _cardText = val;

  bool hasCardText() => _cardText != null;

  // "navigationRoute" field.
  String? _navigationRoute;
  String get navigationRoute => _navigationRoute ?? '';
  set navigationRoute(String? val) => _navigationRoute = val;

  bool hasNavigationRoute() => _navigationRoute != null;

  // "project" field.
  String? _project;
  String get project => _project ?? '';
  set project(String? val) => _project = val;

  bool hasProject() => _project != null;

  // "cardID" field.
  String? _cardID;
  String get cardID => _cardID ?? '';
  set cardID(String? val) => _cardID = val;

  bool hasCardID() => _cardID != null;

  static BusinessModuleCardStruct fromMap(Map<String, dynamic> data) =>
      BusinessModuleCardStruct(
        reportSection: data['reportSection'] as String?,
        cardType: data['cardType'] as String?,
        cardTitle: data['cardTitle'] as String?,
        cardText: data['cardText'] as String?,
        navigationRoute: data['navigationRoute'] as String?,
        project: data['project'] as String?,
        cardID: data['cardID'] as String?,
      );

  static BusinessModuleCardStruct? maybeFromMap(dynamic data) => data is Map
      ? BusinessModuleCardStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'reportSection': _reportSection,
        'cardType': _cardType,
        'cardTitle': _cardTitle,
        'cardText': _cardText,
        'navigationRoute': _navigationRoute,
        'project': _project,
        'cardID': _cardID,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'reportSection': serializeParam(
          _reportSection,
          ParamType.String,
        ),
        'cardType': serializeParam(
          _cardType,
          ParamType.String,
        ),
        'cardTitle': serializeParam(
          _cardTitle,
          ParamType.String,
        ),
        'cardText': serializeParam(
          _cardText,
          ParamType.String,
        ),
        'navigationRoute': serializeParam(
          _navigationRoute,
          ParamType.String,
        ),
        'project': serializeParam(
          _project,
          ParamType.String,
        ),
        'cardID': serializeParam(
          _cardID,
          ParamType.String,
        ),
      }.withoutNulls;

  static BusinessModuleCardStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      BusinessModuleCardStruct(
        reportSection: deserializeParam(
          data['reportSection'],
          ParamType.String,
          false,
        ),
        cardType: deserializeParam(
          data['cardType'],
          ParamType.String,
          false,
        ),
        cardTitle: deserializeParam(
          data['cardTitle'],
          ParamType.String,
          false,
        ),
        cardText: deserializeParam(
          data['cardText'],
          ParamType.String,
          false,
        ),
        navigationRoute: deserializeParam(
          data['navigationRoute'],
          ParamType.String,
          false,
        ),
        project: deserializeParam(
          data['project'],
          ParamType.String,
          false,
        ),
        cardID: deserializeParam(
          data['cardID'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'BusinessModuleCardStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is BusinessModuleCardStruct &&
        reportSection == other.reportSection &&
        cardType == other.cardType &&
        cardTitle == other.cardTitle &&
        cardText == other.cardText &&
        navigationRoute == other.navigationRoute &&
        project == other.project &&
        cardID == other.cardID;
  }

  @override
  int get hashCode => const ListEquality().hash([
        reportSection,
        cardType,
        cardTitle,
        cardText,
        navigationRoute,
        project,
        cardID
      ]);
}

BusinessModuleCardStruct createBusinessModuleCardStruct({
  String? reportSection,
  String? cardType,
  String? cardTitle,
  String? cardText,
  String? navigationRoute,
  String? project,
  String? cardID,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    BusinessModuleCardStruct(
      reportSection: reportSection,
      cardType: cardType,
      cardTitle: cardTitle,
      cardText: cardText,
      navigationRoute: navigationRoute,
      project: project,
      cardID: cardID,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

BusinessModuleCardStruct? updateBusinessModuleCardStruct(
  BusinessModuleCardStruct? businessModuleCard, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    businessModuleCard
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addBusinessModuleCardStructData(
  Map<String, dynamic> firestoreData,
  BusinessModuleCardStruct? businessModuleCard,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (businessModuleCard == null) {
    return;
  }
  if (businessModuleCard.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && businessModuleCard.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final businessModuleCardData =
      getBusinessModuleCardFirestoreData(businessModuleCard, forFieldValue);
  final nestedData =
      businessModuleCardData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields =
      businessModuleCard.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getBusinessModuleCardFirestoreData(
  BusinessModuleCardStruct? businessModuleCard, [
  bool forFieldValue = false,
]) {
  if (businessModuleCard == null) {
    return {};
  }
  final firestoreData = mapToFirestore(businessModuleCard.toMap());

  // Add any Firestore field values
  businessModuleCard.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getBusinessModuleCardListFirestoreData(
  List<BusinessModuleCardStruct>? businessModuleCards,
) =>
    businessModuleCards
        ?.map((e) => getBusinessModuleCardFirestoreData(e, true))
        .toList() ??
    [];
