import 'package:dio/dio.dart';
import 'package:fakes_store/constants/end_points.dart';
import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/helper/sp_helper.dart';

class AuthServce {
  final Dio _dio = Dio();
  final SharedPreferenceHelper _spHelper = SharedPreferenceHelper();

  Future<String?> signInUser(String username, String password) async {
    try {
      final response = await _dio.post(
        EndPoints.login,
        data: {"username": username, "password": password},
      );

      if (response.statusCode == 200) {
        debugPrint(response.data['token']);

        String? token = response.data['token'];

        if (token != null) {
          _spHelper.saveAuthToken(token);
        }

        return token;
      } else {
        debugPrint("response Error");
      }
    } catch (err) {
      throw Exception(err.toString());
    }
    return null;
  }
}
