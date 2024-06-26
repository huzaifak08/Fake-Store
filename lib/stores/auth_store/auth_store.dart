import 'package:fakes_store/exports/libraries.dart';
import 'package:mobx/mobx.dart';
part 'auth_store.g.dart';

// ignore: library_private_types_in_public_api
class AuthStore = _AuthStore with _$AuthStore;

abstract class _AuthStore with Store {
  _AuthStore(this._authServce);

  final AuthServce _authServce;

  @observable
  bool _isLoading = false;
  @computed
  bool get isLoading => _isLoading;

  @observable
  String? _token;
  @computed
  String get token => _token!;

  @observable
  bool _isLoggedIn = false;
  @computed
  bool get isLoggedIn => _isLoggedIn;

  @observable
  bool _isVisible = false;
  @computed
  bool get isVisible => _isVisible;

  @observable
  String _successMessage = "";
  @computed
  String get successMessage => _successMessage;

  @observable
  String? _failureMessage;
  @computed
  String get failureMessage => _failureMessage!;

  @action
  Future<void> loggedInStatus() async {
    _isLoggedIn = await _authServce.getUserLogStatus();
  }

  @action
  Future<void> login(String username, String password) async {
    _isLoading = true;

    String response = await _authServce.signInUser(username, password);

    if (response == "Response Error") {
      _failureMessage = response;
    } else {
      _token = response;
    }

    _isLoading = false;
  }

  @action
  Future<void> saveUserNameSP(String username) async {
    _authServce.saveUserName(username);
  }

  @action
  Future<void> getUserNameSP(String username) async {
    _authServce.getUserName(username);
  }

  @action
  Future<void> logout() async {
    _isLoading = true;

    await _authServce.logOutUser();

    _isLoading = false;
  }

  @action
  void toggleVisibility() {
    _isVisible = !_isVisible;
  }
}
