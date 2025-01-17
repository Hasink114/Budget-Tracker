// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TransactionStruct extends BaseStruct {
  TransactionStruct({
    String? type,
    double? amount,
    int? category,
    DateTime? date,
    String? account,
  })  : _type = type,
        _amount = amount,
        _category = category,
        _date = date,
        _account = account;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  set type(String? val) => _type = val;

  bool hasType() => _type != null;

  // "amount" field.
  double? _amount;
  double get amount => _amount ?? 0.0;
  set amount(double? val) => _amount = val;

  void incrementAmount(double amount) => amount = amount + amount;

  bool hasAmount() => _amount != null;

  // "category" field.
  int? _category;
  int get category => _category ?? 0;
  set category(int? val) => _category = val;

  void incrementCategory(int amount) => category = category + amount;

  bool hasCategory() => _category != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  set date(DateTime? val) => _date = val;

  bool hasDate() => _date != null;

  // "account" field.
  String? _account;
  String get account => _account ?? '';
  set account(String? val) => _account = val;

  bool hasAccount() => _account != null;

  static TransactionStruct fromMap(Map<String, dynamic> data) =>
      TransactionStruct(
        type: data['type'] as String?,
        amount: castToType<double>(data['amount']),
        category: castToType<int>(data['category']),
        date: data['date'] as DateTime?,
        account: data['account'] as String?,
      );

  static TransactionStruct? maybeFromMap(dynamic data) => data is Map
      ? TransactionStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'type': _type,
        'amount': _amount,
        'category': _category,
        'date': _date,
        'account': _account,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'type': serializeParam(
          _type,
          ParamType.String,
        ),
        'amount': serializeParam(
          _amount,
          ParamType.double,
        ),
        'category': serializeParam(
          _category,
          ParamType.int,
        ),
        'date': serializeParam(
          _date,
          ParamType.DateTime,
        ),
        'account': serializeParam(
          _account,
          ParamType.String,
        ),
      }.withoutNulls;

  static TransactionStruct fromSerializableMap(Map<String, dynamic> data) =>
      TransactionStruct(
        type: deserializeParam(
          data['type'],
          ParamType.String,
          false,
        ),
        amount: deserializeParam(
          data['amount'],
          ParamType.double,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.int,
          false,
        ),
        date: deserializeParam(
          data['date'],
          ParamType.DateTime,
          false,
        ),
        account: deserializeParam(
          data['account'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'TransactionStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TransactionStruct &&
        type == other.type &&
        amount == other.amount &&
        category == other.category &&
        date == other.date &&
        account == other.account;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([type, amount, category, date, account]);
}

TransactionStruct createTransactionStruct({
  String? type,
  double? amount,
  int? category,
  DateTime? date,
  String? account,
}) =>
    TransactionStruct(
      type: type,
      amount: amount,
      category: category,
      date: date,
      account: account,
    );
