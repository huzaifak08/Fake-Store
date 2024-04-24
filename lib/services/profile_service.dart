import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/models/user_models/user_model.dart';
// import 'package:tuple/tuple.dart';

class ProfileService {
  final Dio _dio;
  ProfileService(this._dio);

  List<UserModel> usersList = [];

  Future<List<UserModel>> getAllUsersData() async {
    try {
      final response = await _dio.get(EndPoints.users);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;

        for (var element in data) {
          debugPrint("id: ${element['id']}");
        }

        List<UserModel> list = data.map((e) => UserModel.fromMap(e)).toList();

        usersList = List.from(list);

        return usersList;
      } else {
        debugPrint('Error Getting Response');
        throw Exception("Error Getting Response");
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<UserModel> getSingleUserData(String username) async {
    try {
      await getAllUsersData();

      List<UserModel> foundUserList = usersList
          .where(
            (element) => element.username == username,
          )
          .toList();

      UserModel user = foundUserList.first;

      return user;
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
