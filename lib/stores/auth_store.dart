import 'package:fakes_store/services/auth_service.dart';
import 'package:mobx/mobx.dart';
part 'auth_store.g.dart';

// ignore: library_private_types_in_public_api
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  final AuthServce _authServce = AuthServce();

  @observable
  bool _isLoading = false;
  @computed
  bool get isLoading => _isLoading;

  @observable
  String? _token;
  @computed
  String get token => _token!;

  @action
  Future<void> login(String username, String password) async {
    _isLoading = true;

    String? response = await _authServce.signInUser(username, password);

    _token = response!;

    _isLoading = false;
  }
}
