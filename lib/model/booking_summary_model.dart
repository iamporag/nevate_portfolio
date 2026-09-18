import 'dart:convert';

import 'package:flutter/services.dart';

import '../helpers/services/json_decoder.dart';
import 'identifier_model.dart';

class BookingSummaryModel extends IdentifierModel {
  final String bookingName, name, email, status, cancellationPolicy, phone;
  BookingDetails bookingDetails;
  PriceDetails priceDetails;

  BookingSummaryModel(
      super.id,
      this.bookingName,
      this.name,
      this.email,
      this.status,
      this.cancellationPolicy,
      this.phone,
      this.bookingDetails,
      this.priceDetails);

  static BookingSummaryModel fromJSON(Map<String, dynamic> json) {
    JSONDecoder decoder = JSONDecoder(json);

    String bookingName = decoder.getString('booking_name');
    String name = decoder.getString('name');
    String email = decoder.getString('email');
    String status = decoder.getString('status');
    String cancellationPolicy = decoder.getString('cancellation_policy');
    String phone = decoder.getString('phone');
    BookingDetails bookingDetails =
        BookingDetails.fromJSON(json['booking_details']);
    PriceDetails priceDetails = PriceDetails.fromJSON(json['price_details']);

    return BookingSummaryModel(decoder.getId, bookingName, name, email, status,
        cancellationPolicy, phone, bookingDetails, priceDetails);
  }

  static List<BookingSummaryModel> listFromJSON(List<dynamic> list) {
    return list.map((e) => BookingSummaryModel.fromJSON(e)).toList();
  }

  static List<BookingSummaryModel>? _dummyList;

  static Future<List<BookingSummaryModel>> get dummyList async {
    if (_dummyList == null) {
      dynamic data = json.decode(await getData());
      _dummyList = listFromJSON(data);
    }
    return _dummyList!;
  }

  static Future<String> getData() async {
    return await rootBundle.loadString('assets/data/booking_summary.json');
  }
}

class BookingDetails extends IdentifierModel {
  final String destination, startDate, endDate;
  final int numOfPeople;

  BookingDetails(super.id, this.destination, this.startDate, this.endDate,
      this.numOfPeople);

  static BookingDetails fromJSON(Map<String, dynamic> json) {
    JSONDecoder decoder = JSONDecoder(json);

    String destination = decoder.getString('destination');
    String startDate = decoder.getString('start_date');
    String endDate = decoder.getString('end_date');
    int numOfPeople = decoder.getInt('num_of_people');

    return BookingDetails(
        decoder.getId, destination, startDate, endDate, numOfPeople);
  }

  static List<PriceDetails> listFromJSON(List<dynamic> list) {
    return list.map((e) => PriceDetails.fromJSON(e)).toList();
  }
}

class PriceDetails extends IdentifierModel {
  final String paymentStatus;
  final int pricePerPerson, totalPrice;

  PriceDetails(
      super.id, this.paymentStatus, this.pricePerPerson, this.totalPrice);

  static PriceDetails fromJSON(Map<String, dynamic> json) {
    JSONDecoder decoder = JSONDecoder(json);

    String paymentStatus = decoder.getString('payment_status');
    int pricePerPerson = decoder.getInt('price_per_person');
    int totalPrice = decoder.getInt('total_price');

    return PriceDetails(
        decoder.getId, paymentStatus, pricePerPerson, totalPrice);
  }

  static List<PriceDetails> listFromJSON(List<dynamic> list) {
    return list.map((e) => PriceDetails.fromJSON(e)).toList();
  }
}
