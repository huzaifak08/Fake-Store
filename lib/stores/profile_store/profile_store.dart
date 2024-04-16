import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/models/user_models/user_model.dart';
import 'package:fakes_store/services/profile_service.dart';
import 'package:mobx/mobx.dart';
part 'profile_store.g.dart';

// ignore: library_private_types_in_public_api
class ProfileStore = _ProfileStore with _$ProfileStore;

abstract class _ProfileStore with Store {
  final ProfileService _profileService = ProfileService();
  final SharedPreferenceHelper _spHelper = SharedPreferenceHelper();

  @observable
  List<UserModel> _usersList = [];
  @computed
  List<UserModel> get usersList => _usersList;

  @observable
  UserModel? _userModel;
  @computed
  UserModel get userModel => _userModel!;

  @action
  Future<void> getAllUsers() async {
    _usersList = await _profileService.getAllUsersData();
  }

  @action
  Future<void> getSingleUser() async {
    String? username = await _spHelper.getUsername;
    _userModel = await _profileService.getSingleUserData(username!);
  }
}
