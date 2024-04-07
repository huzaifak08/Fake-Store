import 'package:fakes_store/constants/preferences.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  // SharedPreferenceHelper(this._sharedPreference);

  Future<bool> saveAuthToken(String authToken) async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.setString(Preferences.auth_token, authToken);
  }

  Future<String?> get authToken async {
    SharedPreferences sharedPreference = await SharedPreferences.getInstance();
    return sharedPreference.getString(Preferences.auth_token);
  }
}
