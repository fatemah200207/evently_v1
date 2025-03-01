import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class appProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  String lang = "en";
  void changeLanguage(){
    if(lang == "en"){
      lang = "ar";
    }
    else{
      lang = "en";
    }
    saveLang();
    notifyListeners();
  }
  void changeTheme(){
    if(themeMode == ThemeMode.light){
      themeMode = ThemeMode.dark;
    }
    else{
      themeMode = ThemeMode.light;
    }
    notifyListeners();
  }
  Future<void> saveTheme() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString("theme",themeMode.name);
  }
  Future<void> getTheme() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String theme =  prefs.getString("theme")??"light";
    if(theme == "light"){
      themeMode = ThemeMode.light;
    }
    else{
      themeMode = ThemeMode.dark;
    }

  }


  Future<void> saveLang() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString("lang", lang);
  }
  Future<void> getLang() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    lang =  prefs.getString("lang")??"en";


  }



}