import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'app_controller.dart';
import 'core/constants/constants.dart';

class AppWidget extends StatelessWidget {
  final AppController controller;

  const AppWidget({this.controller});
  @override
  Widget build(BuildContext context) => Observer(
        builder: (_) {
          if (controller.themeType != null) {
            return MaterialApp(
              navigatorKey: Modular.navigatorKey,
              title: 'Info Covid-19',
              theme: controller.themeType,
              initialRoute: RoutersConst.base,
              debugShowCheckedModeBanner: false,
              onGenerateRoute: Modular.generateRoute,
              supportedLocales: [
                Locale('en', 'US'),
                Locale('pt', 'BR'),
              ],
              localizationsDelegates: [
                LocaleProvider.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
              ],
              localeResolutionCallback: (locale, supportedLocales) {
                for (var supportedLocale in supportedLocales) {
                  if (supportedLocale.languageCode == locale.languageCode &&
                      supportedLocale.countryCode == locale.countryCode) {
                    return supportedLocale;
                  }
                }
                return supportedLocales.first;
              },
            );
          } else {
            return Container(
              height: 250,
              width: 250,
              color: Colors.transparent,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      );
}
