import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:video_app/constants.dart';

class HomePage extends StatelessWidget {
  HomePage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("hello".tr().toString()),
              Text("welcome".tr().toString()),
              TextButton(
                  onPressed: () {
                    context.setLocale(AppConstant.TR_LOCALE);
                  },
                  child: Text("Türkçe")),
              TextButton(
                  onPressed: () {
                    context.setLocale(AppConstant.EN_LOCALE);
                  },
                  child: Text("İngilizce"))
            ],
          ),
        ),
      ),
    );
  }
}
