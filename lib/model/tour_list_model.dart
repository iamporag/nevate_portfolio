import 'dart:convert';
import 'package:flutter/services.dart';

import '../helpers/services/json_decoder.dart';
import 'identifier_model.dart';

class TourListModel extends IdentifierModel {
  final String tourName,
      location,
      duration,
      tourType,
      description,
      image,
      status;
  final int pricePerPerson, totalReview;
  final double averageRating;
  final List availableDate;

  TourListModel(
      super.id,
      this.tourName,
      this.location,
      this.duration,
      this.tourType,
      this.description,
      this.image,
      this.status,
      this.pricePerPerson,
      this.totalReview,
      this.averageRating,
      this.availableDate);

  static TourListModel fromJSON(Map<String, dynamic> json) {
    JSONDecoder decoder = JSONDecoder(json);

    String tourName = decoder.getString('tour_name');
    String location = decoder.getString('location');
    String duration = decoder.getString('duration');
    String tourType = decoder.getString('tour_type');
    String description = decoder.getString('description');
    String image = decoder.getString('image');
    String status = decoder.getString('status');
    int pricePerPerson = decoder.getInt('price_per_person');
    int totalReview = decoder.getInt('total_reviews');
    double averageRating = decoder.getDouble('average_rating');
    List? availableDate = decoder.getObjectListOrNull('available_dates');

    return TourListModel(
        decoder.getId,
        tourName,
        location,
        duration,
        tourType,
        description,
        image,
        status,
        pricePerPerson,
        totalReview,
        averageRating,
        availableDate!);
  }

  static List<TourListModel> listFromJSON(List<dynamic> list) {
    return list.map((e) => TourListModel.fromJSON(e)).toList();
  }

  static List<TourListModel>? _dummyList;

  static Future<List<TourListModel>> get dummyList async {
    if (_dummyList == null) {
      dynamic data = json.decode(await getData());
      _dummyList = listFromJSON(data);
    }
    return _dummyList!;
  }

  static Future<String> getData() async {
    return await rootBundle.loadString('assets/data/tour_list.json');
  }
}
