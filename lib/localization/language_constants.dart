// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
// import 'package:wiki_sleep/localization/AppLocalization.dart';

// const String LAGUAGE_CODE = 'languageCode';

// //languages code
// const String ENGLISH = 'en';
// const String FARSI = 'fa';
// const String ARABIC = 'ar';
// const String HINDI = 'hi';
// const String URDU = "ur";

// Future<Locale> setLocale(String languageCode) async {
//   SharedPreferences _prefs = await SharedPreferences.getInstance();
//   await _prefs.setString(LAGUAGE_CODE, languageCode);
//   return _locale(languageCode);
// }


// Future<Locale> getLocale() async {
//   SharedPreferences _prefs = await SharedPreferences.getInstance();
//   String languageCode = _prefs.getString(LAGUAGE_CODE) ?? "en";
//   return _locale(languageCode);
// }

// Locale _locale(String languageCode) {
//   switch (languageCode) {
//     case ENGLISH:
//       return Locale(ENGLISH, 'US');
//     case FARSI:
//       return Locale(FARSI, "IR");
//     case ARABIC:
//       return Locale(ARABIC, "SA");
//     case HINDI:
//       return Locale(HINDI, "IN");
//     case URDU:
//       return Locale(URDU,"UR");
    
//     default:
//       return Locale(ENGLISH, 'US');
//   }
// }

// String getTranslated(BuildContext context, String key) {
//   // return DLocalization.of(context).translate(key);
//   return DLocalization.of(context)!.translate(key).toString();
// }
