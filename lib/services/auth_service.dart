import 'package:fakes_store/exports/libraries.dart';

class AuthServce {
  AuthServce(this._spHelper, this._dio);

  final SharedPreferenceHelper _spHelper;
  final Dio _dio;
  // final SharedPreferenceHelper _spHelper = SharedPreferenceHelper();

  Future<bool> getUserLogStatus() async {
    try {
      bool? status = await _spHelper.getLoggedInStatus;

      return status!;
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<String> signInUser(String username, String password) async {
    try {
      final response = await _dio.post(
        EndPoints.login,
        data: {"username": "mor_2314", "password": "83r5^_"},
      );

      if (response.statusCode == 200) {
        debugPrint(response.data['token']);

        String token = response.data['token'];

        _spHelper.saveAuthToken(token);
        _spHelper.saveIsLoggedInStatus(true);

        return token;
      } else {
        debugPrint("Response Error");
        return "Response Error";
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<void> saveUserName(String username) async {
    try {
      await _spHelper.saveUsername(username);
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<void> getUserName(String username) async {
    try {
      await _spHelper.getUsername;
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<void> logOutUser() async {
    try {
      _spHelper.saveIsLoggedInStatus(false);
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
