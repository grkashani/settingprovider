import 'package:flutter/material.dart';
import 'package:settingprovider/common/constant.dart';

class PageNotifier extends ChangeNotifier {
  PageState currentPage  = PageState.home;
  void updatePageState(PageState newStatePage){
    currentPage = newStatePage;
    notifyListeners();
  }
}
