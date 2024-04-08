// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$AuthStore on _AuthStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading => (_$isLoadingComputed ??=
          Computed<bool>(() => super.isLoading, name: '_AuthStore.isLoading'))
      .value;
  Computed<String>? _$tokenComputed;

  @override
  String get token => (_$tokenComputed ??=
          Computed<String>(() => super.token, name: '_AuthStore.token'))
      .value;
  Computed<bool>? _$isLoggedInComputed;

  @override
  bool get isLoggedIn => (_$isLoggedInComputed ??=
          Computed<bool>(() => super.isLoggedIn, name: '_AuthStore.isLoggedIn'))
      .value;
  Computed<bool>? _$isVisibleComputed;

  @override
  bool get isVisible => (_$isVisibleComputed ??=
          Computed<bool>(() => super.isVisible, name: '_AuthStore.isVisible'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_AuthStore._isLoading', context: context);

  @override
  bool get _isLoading {
    _$_isLoadingAtom.reportRead();
    return super._isLoading;
  }

  @override
  set _isLoading(bool value) {
    _$_isLoadingAtom.reportWrite(value, super._isLoading, () {
      super._isLoading = value;
    });
  }

  late final _$_tokenAtom = Atom(name: '_AuthStore._token', context: context);

  @override
  String? get _token {
    _$_tokenAtom.reportRead();
    return super._token;
  }

  @override
  set _token(String? value) {
    _$_tokenAtom.reportWrite(value, super._token, () {
      super._token = value;
    });
  }

  late final _$_isLoggedInAtom =
      Atom(name: '_AuthStore._isLoggedIn', context: context);

  @override
  bool get _isLoggedIn {
    _$_isLoggedInAtom.reportRead();
    return super._isLoggedIn;
  }

  @override
  set _isLoggedIn(bool value) {
    _$_isLoggedInAtom.reportWrite(value, super._isLoggedIn, () {
      super._isLoggedIn = value;
    });
  }

  late final _$_isVisibleAtom =
      Atom(name: '_AuthStore._isVisible', context: context);

  @override
  bool get _isVisible {
    _$_isVisibleAtom.reportRead();
    return super._isVisible;
  }

  @override
  set _isVisible(bool value) {
    _$_isVisibleAtom.reportWrite(value, super._isVisible, () {
      super._isVisible = value;
    });
  }

  late final _$loggedInStatusAsyncAction =
      AsyncAction('_AuthStore.loggedInStatus', context: context);

  @override
  Future<void> loggedInStatus() {
    return _$loggedInStatusAsyncAction.run(() => super.loggedInStatus());
  }

  late final _$loginAsyncAction =
      AsyncAction('_AuthStore.login', context: context);

  @override
  Future<void> login(String username, String password) {
    return _$loginAsyncAction.run(() => super.login(username, password));
  }

  late final _$logoutAsyncAction =
      AsyncAction('_AuthStore.logout', context: context);

  @override
  Future<void> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  late final _$_AuthStoreActionController =
      ActionController(name: '_AuthStore', context: context);

  @override
  void toggleVisibility() {
    final _$actionInfo = _$_AuthStoreActionController.startAction(
        name: '_AuthStore.toggleVisibility');
    try {
      return super.toggleVisibility();
    } finally {
      _$_AuthStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
token: ${token},
isLoggedIn: ${isLoggedIn},
isVisible: ${isVisible}
    ''';
  }
}
