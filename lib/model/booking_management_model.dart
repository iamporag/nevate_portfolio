import 'dart:convert';

import 'package:flutter/services.dart';

import '../helpers/services/json_decoder.dart';
import 'identifier_model.dart';

class BookingsManagementModel extends IdentifierModel {
  final String bookingId, clientName, clientEmail, service, date, time, status;

  BookingsManagementModel(super.id, this.bookingId, this.clientName,
      this.clientEmail, this.service, this.date, this.time, this.status);

  static BookingsManagementModel fromJSON(Map<String, dynamic> json) {
    JSONDecoder decoder = JSONDecoder(json);

    String bookingId = decoder.getString('booking_id');
    String clientName = decoder.getString('client_name');
    String clientEmail = decoder.getString('client_email');
    String service = decoder.getString('service');
    String date = decoder.getString('date');
    String time = decoder.getString('time');
    String status = decoder.getString('status');

    return BookingsManagementModel(decoder.getId, bookingId, clientName,
        clientEmail, service, date, time, status);
  }

  static List<BookingsManagementModel> listFromJSON(List<dynamic> list) {
    return list.map((e) => BookingsManagementModel.fromJSON(e)).toList();
  }

  static List<BookingsManagementModel>? _dummyList;

  static Future<List<BookingsManagementModel>> get dummyList async {
    if (_dummyList == null) {
      dynamic data = json.decode(await getData());
      _dummyList = listFromJSON(data);
    }
    return _dummyList!;
  }

  static Future<String> getData() async {
    return await rootBundle.loadString('assets/data/bookings_management.json');
  }
}
