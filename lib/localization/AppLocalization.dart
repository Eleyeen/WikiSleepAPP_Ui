import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

 class DLocalization {
     final Locale? locale;
          DLocalization(this.locale):super();




  
  static DLocalization? of(BuildContext context) {
    return Localizations.of<DLocalization>(context, DLocalization);
  }

  Map<String, String> _localizedValues;

  Future<void> load() async {
    String jsonStringValues =
        await rootBundle.loadString('lib/lang/${locale!.languageCode}.json');
    Map<String, dynamic> mappedJson = json.decode(jsonStringValues);
    _localizedValues =
        mappedJson.map((key, value) => MapEntry(key, value.toString()));
  }

  String? translate(String key) {
    return _localizedValues[key];
  }

  // static member to have simple access to the delegate from Material App
  static const LocalizationsDelegate<DLocalization> delegate =
      _LocalizationsDelegate();
}

class _LocalizationsDelegate
    extends LocalizationsDelegate<DLocalization> {
  const _LocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    return ['en', 'fa', 'ar', 'hi','ur'].contains(locale.languageCode);
  }

  @override
  Future<DLocalization> load(Locale locale) async {
    DLocalization localization = new DLocalization(locale);
    await localization.load();
    return localization;
  }

  @override
  bool shouldReload(LocalizationsDelegate<DLocalization> old) => false;
}
