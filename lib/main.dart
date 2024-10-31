import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingprovider/common/constant.dart';
import 'package:settingprovider/databse/my_data.dart';
import 'package:settingprovider/providers/page_provider.dart';
import 'package:settingprovider/providers/platform_provider.dart';
import 'package:settingprovider/providers/setting_provider.dart';
import 'package:settingprovider/providers/sign_provider.dart';
import 'package:settingprovider/providers/user_provider.dart';

import 'controllers/sign_page_controller.dart';
import 'providers/chatbot_provider.dart';
import 'mainpage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => PageNotifier()),
        ChangeNotifierProvider(create: (context) => PlatformNotifier()),
        ChangeNotifierProvider(create: (context) => SignNotifier()),
        ChangeNotifierProvider(create: (context) => UserNotifier()),
        ChangeNotifierProvider(create: (context) => SignPageControllerProvider()),
        ChangeNotifierProvider(create: (context) => SettingProvider()),
        ChangeNotifierProvider(create: (context) => ChatBotNotifier(myData)),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Size s = MediaQuery.of(context).size;
      context.read<PlatformNotifier>().screenPlatformStateUpdate(s);
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      // here you detect ,,,,,,qklfldwfjwlkfjlekjflwkjeflkewjlkejrlkewjrlkewjrwekjrlekwj
      context.read<SettingProvider>().updateClient(os: OsPlatformClient.macos, ps: PlatformState.desktop);
    });

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainPage(),
    );
  }
}
