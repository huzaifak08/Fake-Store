import 'package:fakes_store/constants/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  // SharedPreferenceHelper(this._sharedPreference);

  Future<bool> saveAuthToken(String? authToken) async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.setString(Preferences.authToken, authToken!);
  }

  Future<String?> get getAuthToken async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.getString(Preferences.authToken);
  }

  Future<bool> saveIsLoggedInStatus(bool isLoggedIn) async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.setBool(Preferences.isLoggedIn, isLoggedIn);
  }

  Future<bool?> get getLoggedInStatus async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.getBool(Preferences.isLoggedIn);
  }

  Future<bool> saveUsername(String? username) async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.setString(Preferences.userName, username!);
  }

  Future<String?> get getUsername async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.getString(Preferences.userName);
  }
}
