import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';

double? addAmount(List<TransactionStruct>? transactions) {
  // add all the amounts
  if (transactions == null || transactions.isEmpty) {
    return 0;
  }

  double totalAmount = 0.0;
  for (var transaction in transactions) {
    totalAmount += transaction.amount;
  }

  return totalAmount;
}
