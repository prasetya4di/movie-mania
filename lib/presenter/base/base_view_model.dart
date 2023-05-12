import 'dart:io';

import 'package:flutter/material.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/presenter/model/single_observer.dart';

abstract class BaseViewModel extends ChangeNotifier {
  bool _loading = false;
  final SingleObserver<String> _pageMessage = SingleObserver();

  bool get loading => _loading;

  SingleObserver<String> get pageMessage => _pageMessage;

  void startLoading() {
    _loading = true;
  }

  void finishLoading() {
    _loading = false;
  }

  void setThrowable(dynamic throwable) {
    finishLoading();
    if (throwable is SocketException) {
      _pageMessage.changeValue(
          "Ooopss, we can't fetch data for you, please check your internet connection, and try again");
    } else {
      _pageMessage.changeValue(throwable.toString());
    }
    notifyListeners();
  }

  void setResponseError(ResponseError error) {
    finishLoading();
    _pageMessage.changeValue(error.statusMessage);
    notifyListeners();
  }
}
