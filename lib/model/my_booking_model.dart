import 'dart:convert';
import 'package:flutter/services.dart';

import '../helpers/services/json_decoder.dart';
import 'identifier_model.dart';

class MyBookingModel extends IdentifierModel {
  final String tourName, customerName, email, phoneNumber, status;
  final DateTime bookingDate, tourDate;
  final int numberOfPeople;
  final double totalPrice;

  MyBookingModel(
      super.id,
      this.tourName,
      this.customerName,
      this.email,
      this.phoneNumber,
      this.status,
      this.bookingDate,
      this.tourDate,
      this.numberOfPeople,
      this.totalPrice);

  static MyBookingModel fromJSON(Map<String, dynamic> json) {
    JSONDecoder decoder = JSONDecoder(json);

    String tourName = decoder.getString('tour_name');
    String customerName = decoder.getString('customer_name');
    String email = decoder.getString('email');
    String phoneNumber = decoder.getString('phone_number');
    String status = decoder.getString('status');
    DateTime bookingDate = decoder.getDateTime('booking_date');
    DateTime tourDate = decoder.getDateTime('tour_date');
    int numberOfPeople = decoder.getInt('number_of_people');
    double totalPrice = decoder.getDouble('total_price');

    return MyBookingModel(decoder.getId, tourName, customerName, email,
        phoneNumber, status, bookingDate, tourDate, numberOfPeople, totalPrice);
  }

  static List<MyBookingModel> listFromJSON(List<dynamic> list) {
    return list.map((e) => MyBookingModel.fromJSON(e)).toList();
  }

  static List<MyBookingModel>? _dummyList;

  static Future<List<MyBookingModel>> get dummyList async {
    if (_dummyList == null) {
      dynamic data = json.decode(await getData());
      _dummyList = listFromJSON(data);
    }
    return _dummyList!;
  }

  static Future<String> getData() async {
    return await rootBundle.loadString('assets/data/my_booking.json');
  }
}
