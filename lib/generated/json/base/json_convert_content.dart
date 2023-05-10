// ignore_for_file: non_constant_identifier_names
// ignore_for_file: camel_case_types
// ignore_for_file: prefer_single_quotes

// This file is automatically generated. DO NOT EDIT, all your changes would be lost.
import 'package:flutter/material.dart' show debugPrint;
import 'package:movie_mania/data/entity/movie.dart';
import 'package:movie_mania/data/entity/movie_genres.dart';
import 'package:movie_mania/data/entity/movie_item.dart';
import 'package:movie_mania/data/entity/movie_production_companies.dart';
import 'package:movie_mania/data/entity/movie_production_countries.dart';
import 'package:movie_mania/data/entity/movie_spoken_languages.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';

JsonConvert jsonConvert = JsonConvert();

typedef JsonConvertFunction<T> = T Function(Map<String, dynamic> json);
typedef EnumConvertFunction<T> = T Function(String value);

class JsonConvert {
  static final Map<String, JsonConvertFunction> convertFuncMap = {
    (Movie).toString(): Movie.fromJson,
    (MovieGenres).toString(): MovieGenres.fromJson,
    (MovieItem).toString(): MovieItem.fromJson,
    (MovieProductionCompanies).toString(): MovieProductionCompanies.fromJson,
    (MovieProductionCountries).toString(): MovieProductionCountries.fromJson,
    (MovieSpokenLanguages).toString(): MovieSpokenLanguages.fromJson,
    (ResponseError).toString(): ResponseError.fromJson,
  };

  T? convert<T>(dynamic value, {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    if (value is T) {
      return value;
    }
    try {
      return _asT<T>(value, enumConvert: enumConvert);
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return null;
    }
  }

  List<T?>? convertList<T>(List<dynamic>? value,
      {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return value
          .map((dynamic e) => _asT<T>(e, enumConvert: enumConvert))
          .toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  List<T>? convertListNotNull<T>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    if (value == null) {
      return null;
    }
    try {
      return (value as List<dynamic>)
          .map((dynamic e) => _asT<T>(e, enumConvert: enumConvert)!)
          .toList();
    } catch (e, stackTrace) {
      debugPrint('asT<$T> $e $stackTrace');
      return <T>[];
    }
  }

  T? _asT<T extends Object?>(dynamic value,
      {EnumConvertFunction? enumConvert}) {
    final String type = T.toString();
    final String valueS = value.toString();
    if (enumConvert != null) {
      return enumConvert(valueS) as T;
    } else if (type == "String") {
      return valueS as T;
    } else if (type == "int") {
      final int? intValue = int.tryParse(valueS);
      if (intValue == null) {
        return double.tryParse(valueS)?.toInt() as T?;
      } else {
        return intValue as T;
      }
    } else if (type == "double") {
      return double.parse(valueS) as T;
    } else if (type == "DateTime") {
      return DateTime.parse(valueS) as T;
    } else if (type == "bool") {
      if (valueS == '0' || valueS == '1') {
        return (valueS == '1') as T;
      }
      return (valueS == 'true') as T;
    } else if (type == "Map" || type.startsWith("Map<")) {
      return value as T;
    } else {
      if (convertFuncMap.containsKey(type)) {
        return convertFuncMap[type]!(Map<String, dynamic>.from(value)) as T;
      } else {
        throw UnimplementedError('$type unimplemented');
      }
    }
  }

  //list is returned by type
  static M? _getListChildType<M>(List<Map<String, dynamic>> data) {
    if (<Movie>[] is M) {
      return data
          .map<Movie>((Map<String, dynamic> e) => Movie.fromJson(e))
          .toList() as M;
    }
    if (<MovieGenres>[] is M) {
      return data
          .map<MovieGenres>((Map<String, dynamic> e) => MovieGenres.fromJson(e))
          .toList() as M;
    }
    if (<MovieItem>[] is M) {
      return data
          .map<MovieItem>((Map<String, dynamic> e) => MovieItem.fromJson(e))
          .toList() as M;
    }
    if (<MovieProductionCompanies>[] is M) {
      return data
          .map<MovieProductionCompanies>(
              (Map<String, dynamic> e) => MovieProductionCompanies.fromJson(e))
          .toList() as M;
    }
    if (<MovieProductionCountries>[] is M) {
      return data
          .map<MovieProductionCountries>(
              (Map<String, dynamic> e) => MovieProductionCountries.fromJson(e))
          .toList() as M;
    }
    if (<MovieSpokenLanguages>[] is M) {
      return data
          .map<MovieSpokenLanguages>(
              (Map<String, dynamic> e) => MovieSpokenLanguages.fromJson(e))
          .toList() as M;
    }
    if (<ResponseError>[] is M) {
      return data
          .map<ResponseError>(
              (Map<String, dynamic> e) => ResponseError.fromJson(e))
          .toList() as M;
    }

    debugPrint("${M.toString()} not found");

    return null;
  }

  static M? fromJsonAsT<M>(dynamic json) {
    if (json is List) {
      return _getListChildType<M>(
          json.map((e) => e as Map<String, dynamic>).toList());
    } else {
      return jsonConvert.convert<M>(json);
    }
  }
}