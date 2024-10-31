import 'package:flutter/cupertino.dart';
import 'package:settingprovider/common/constant.dart';

class Client{
  OsPlatformClient osPlatformClient = OsPlatformClient.macos;
  PlatformState platform = PlatformState.desktop;
  void update({required OsPlatformClient os, required PlatformState ps}){
    osPlatformClient = os;
    platform = ps;
  }
}

class SettingProvider extends ChangeNotifier{

  Client client = Client();

  void updateClient({required OsPlatformClient os, required PlatformState ps}){
    client.update(os: os, ps: ps);
    notifyListeners();
  }
}