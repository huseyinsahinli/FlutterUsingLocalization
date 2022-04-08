import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:video_app/constants.dart';
import 'package:video_app/pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(EasyLocalization(
      supportedLocales: [
        AppConstant.EN_LOCALE,
        AppConstant.TR_LOCALE,
      ],
      saveLocale: true,
      fallbackLocale: AppConstant.EN_LOCALE,
      path: AppConstant.LANG_PATH,
      child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Evet",
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
