import 'package:flutter/material.dart';
import 'package:movie_mania/data/source/network/response/response_error.dart';
import 'package:movie_mania/presenter/model/single_observer.dart';

abstract class BaseViewModel implements ChangeNotifier {
  final SingleObserver<bool> _loading = SingleObserver(data: false);
  final SingleObserver<String> _pageMessage = SingleObserver();

  SingleObserver<bool> get loading => _loading;

  SingleObserver<String> get pageMessage => _pageMessage;

  void setLoading(bool loading, {bool refresh = false}) {
    _loading.changeValue(loading);
    if (refresh) {
      notifyListeners();
    }
  }

  void setThrowable(dynamic throwable) {
    _pageMessage.changeValue(throwable.toString());
  }

  void setResponseError(ResponseError error) {
    _pageMessage.changeValue(error.statusMessage);
  }
}
