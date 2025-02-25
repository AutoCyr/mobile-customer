import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class Preferences {

  late SharedPreferences _prefs;

  saveString(String key, dynamic value) async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.setString(key, value.toString());
  }

  getString(String key) async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs.getString(key);
  }

  saveInt(String key, int value) async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.setInt(key, value);
  }

  getInt(String key) async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs.getInt(key);
  }

  saveBool(String key, bool value) async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.setBool(key, value);
  }

  getBool(String key) async {
    _prefs = await SharedPreferences.getInstance();
    return _prefs.getBool(key);
  }

  clear() async {
    _prefs = await SharedPreferences.getInstance();
    await _prefs.clear();
  }

}