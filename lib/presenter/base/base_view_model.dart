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
    _pageMessage.changeValue(throwable.toString());
  }

  void setResponseError(ResponseError error) {
    finishLoading();
    _pageMessage.changeValue(error.statusMessage);
  }
}
