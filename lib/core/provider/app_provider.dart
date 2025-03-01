import 'package:flutter/material.dart';

class appProvider extends ChangeNotifier{

  ThemeMode themeMode = ThemeMode.light;
  void changeTheme(){
    if(themeMode == ThemeMode.light){
      themeMode = ThemeMode.dark;
    }
    else{
      themeMode = ThemeMode.light;
    }
    notifyListeners();
  }


}