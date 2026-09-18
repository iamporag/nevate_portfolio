// ignore_for_file: depend_on_referenced_packages

import 'dart:convert';
import 'dart:developer' as developer;

import 'package:flutter/services.dart';
import 'package:nevate_portfolio/helpers/localizations/language.dart';
import 'package:shared_preferences/shared_preferences.dart';

extension StringCasingExtension on String {
  String get capitalize =>
      isEmpty ? this : '${this[0].toUpperCase()}${substring(1)}';
}

class Translator {
  static Map<String, String>? _localizedStrings;

  static Future<bool> changeLanguage(Language language) async {
    try {
      String jsonString = await rootBundle
          .loadString('assets/lang/${language.locale.languageCode}.json');
      Map<String, dynamic> jsonLanguageMap = json.decode(jsonString);
      _localizedStrings = jsonLanguageMap.map((key, value) {
        return MapEntry(key, value.toString());
      });
      return true;
    } catch (e) {
      developer.log(e.toString());
    }
    return false;
  }

  // called from every screens which needs a localized text
  static String translate(String text) {
    if (_localizedStrings != null) {
      String? value = _localizedStrings![text];
      return value ?? autoTranslate(text);
    }

    return autoTranslate(text);
  }

  static String autoTranslate(String text) {
    // log("You need to translate this text : " + text);
    at(text);

    try {
      List<String> texts = text.split("_");
      StringBuffer stringBuffer = StringBuffer();
      for (String singleText in texts) {
        stringBuffer
            .write("${singleText[0].toUpperCase()}${singleText.substring(1)} ");
      }
      String result = stringBuffer.toString();
      return result.substring(0, result.length - 1);
    } catch (err) {
      return text;
    }
  }

  static Future<void> at(String t) async {
    // print("at");
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var data = sharedPreferences.getStringList('test_tr') ?? [];
    var set = data.toSet();
    set.add(t);
    sharedPreferences.setStringList('test_tr', set.toList());
  }

  static Future<void> clearTrans() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.remove('test_tr');
  }

  static Future<void> getUnTrans() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    var data = sharedPreferences.getStringList('test_tr') ?? [];
    var set = data.toSet();
    String text = '';
    for (var value in set) {
      var p = value.replaceAll("_", " ");
      p = p.capitalize;
      text += ('"$value": "$p",\n');
    }
    developer.log(text);
  }
}
