
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:wiki_sleep/Global_Variables/global_colors.dart';
import 'package:wiki_sleep/screens/splash_screen.dart';

import 'localization/AppLocalization.dart';
import 'localization/language_constants.dart';

void main() => runApp(
    // DevicePreview(
    // enabled: !kReleaseMode,
    // builder: (context)=>
    MyApp(),
    // )
);
  




class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  static void setLocale(BuildContext context, Locale newLocale) {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.setLocale(newLocale);
  }

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale? _locale;
  setLocale(Locale locale) {
    setState(() {
      _locale = locale;
    });
  }

  @override
  void didChangeDependencies() {
    getLocale().then((locale) {
      setState(() {
        this._locale = locale;
      });
    });
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    if (this._locale == null) {
      return Container(
        child: Center(
          child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(blueColor)),
        ),
      );
    } else {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Wiki Sleep",
        theme: ThemeData(primarySwatch: Colors.blue),
        locale: _locale,
        supportedLocales: [
          Locale("en", "US"),
          Locale("fa", "IR"),
          Locale("ar", "SA"),
          Locale("hi", "IN"),
          Locale("ur","UR")
        ],
        localizationsDelegates: [
          DLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          for (var supportedLocale in supportedLocales) {
            if (supportedLocale.languageCode == locale!.languageCode &&
                supportedLocale.countryCode == locale.countryCode) {
              return supportedLocale;
            }
          }
          return supportedLocales.first;
        },
        home: SplashScreen(),
        
      );
    }
  }
}
