import 'package:flutter/material.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _Transaction = prefs
              .getStringList('ff_Transaction')
              ?.map((x) {
                try {
                  return TransactionStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Transaction;
    });
    _safeInit(() {
      _Category = prefs
              .getStringList('ff_Category')
              ?.map((x) {
                try {
                  return CategoryStruct.fromSerializableMap(jsonDecode(x));
                } catch (e) {
                  print("Can't decode persisted data type. Error: $e.");
                  return null;
                }
              })
              .withoutNulls
              .toList() ??
          _Category;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<TransactionStruct> _Transaction = [];
  List<TransactionStruct> get Transaction => _Transaction;
  set Transaction(List<TransactionStruct> value) {
    _Transaction = value;
    prefs.setStringList(
        'ff_Transaction', value.map((x) => x.serialize()).toList());
  }

  void addToTransaction(TransactionStruct value) {
    Transaction.add(value);
    prefs.setStringList(
        'ff_Transaction', _Transaction.map((x) => x.serialize()).toList());
  }

  void removeFromTransaction(TransactionStruct value) {
    Transaction.remove(value);
    prefs.setStringList(
        'ff_Transaction', _Transaction.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromTransaction(int index) {
    Transaction.removeAt(index);
    prefs.setStringList(
        'ff_Transaction', _Transaction.map((x) => x.serialize()).toList());
  }

  void updateTransactionAtIndex(
    int index,
    TransactionStruct Function(TransactionStruct) updateFn,
  ) {
    Transaction[index] = updateFn(_Transaction[index]);
    prefs.setStringList(
        'ff_Transaction', _Transaction.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInTransaction(int index, TransactionStruct value) {
    Transaction.insert(index, value);
    prefs.setStringList(
        'ff_Transaction', _Transaction.map((x) => x.serialize()).toList());
  }

  List<CategoryStruct> _Category = [
    CategoryStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"1\",\"name\":\"Daily Canteen Income\",\"image\":\"https://cdn-icons-png.flaticon.com/128/1985/1985737.png\"}')),
    CategoryStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"2\",\"name\":\"Salary\",\"image\":\"https://cdn-icons-png.flaticon.com/128/2657/2657025.png\"}')),
    CategoryStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"3\",\"name\":\"Gadget\",\"image\":\"https://cdn-icons-png.flaticon.com/128/3659/3659898.png\"}')),
    CategoryStruct.fromSerializableMap(jsonDecode(
        '{\"id\":\"0\",\"name\":\"Food\",\"image\":\"https://cdn-icons-png.flaticon.com/128/9718/9718703.png\"}'))
  ];
  List<CategoryStruct> get Category => _Category;
  set Category(List<CategoryStruct> value) {
    _Category = value;
    prefs.setStringList(
        'ff_Category', value.map((x) => x.serialize()).toList());
  }

  void addToCategory(CategoryStruct value) {
    Category.add(value);
    prefs.setStringList(
        'ff_Category', _Category.map((x) => x.serialize()).toList());
  }

  void removeFromCategory(CategoryStruct value) {
    Category.remove(value);
    prefs.setStringList(
        'ff_Category', _Category.map((x) => x.serialize()).toList());
  }

  void removeAtIndexFromCategory(int index) {
    Category.removeAt(index);
    prefs.setStringList(
        'ff_Category', _Category.map((x) => x.serialize()).toList());
  }

  void updateCategoryAtIndex(
    int index,
    CategoryStruct Function(CategoryStruct) updateFn,
  ) {
    Category[index] = updateFn(_Category[index]);
    prefs.setStringList(
        'ff_Category', _Category.map((x) => x.serialize()).toList());
  }

  void insertAtIndexInCategory(int index, CategoryStruct value) {
    Category.insert(index, value);
    prefs.setStringList(
        'ff_Category', _Category.map((x) => x.serialize()).toList());
  }

  int _selectedCategory = 0;
  int get selectedCategory => _selectedCategory;
  set selectedCategory(int value) {
    _selectedCategory = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
