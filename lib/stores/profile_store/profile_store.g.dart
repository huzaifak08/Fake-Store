// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProfileStore on _ProfileStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_ProfileStore.isLoading'))
          .value;
  Computed<List<UserModel>>? _$usersListComputed;

  @override
  List<UserModel> get usersList =>
      (_$usersListComputed ??= Computed<List<UserModel>>(() => super.usersList,
              name: '_ProfileStore.usersList'))
          .value;
  Computed<UserModel>? _$userModelComputed;

  @override
  UserModel get userModel =>
      (_$userModelComputed ??= Computed<UserModel>(() => super.userModel,
              name: '_ProfileStore.userModel'))
          .value;

  late final _$_isLoadingAtom =
      Atom(name: '_ProfileStore._isLoading', context: context);

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

  late final _$_usersListAtom =
      Atom(name: '_ProfileStore._usersList', context: context);

  @override
  List<UserModel> get _usersList {
    _$_usersListAtom.reportRead();
    return super._usersList;
  }

  @override
  set _usersList(List<UserModel> value) {
    _$_usersListAtom.reportWrite(value, super._usersList, () {
      super._usersList = value;
    });
  }

  late final _$_userModelAtom =
      Atom(name: '_ProfileStore._userModel', context: context);

  @override
  UserModel? get _userModel {
    _$_userModelAtom.reportRead();
    return super._userModel;
  }

  @override
  set _userModel(UserModel? value) {
    _$_userModelAtom.reportWrite(value, super._userModel, () {
      super._userModel = value;
    });
  }

  late final _$getAllUsersAsyncAction =
      AsyncAction('_ProfileStore.getAllUsers', context: context);

  @override
  Future<void> getAllUsers() {
    return _$getAllUsersAsyncAction.run(() => super.getAllUsers());
  }

  late final _$getSingleUserAsyncAction =
      AsyncAction('_ProfileStore.getSingleUser', context: context);

  @override
  Future<void> getSingleUser() {
    return _$getSingleUserAsyncAction.run(() => super.getSingleUser());
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
usersList: ${usersList},
userModel: ${userModel}
    ''';
  }
}
