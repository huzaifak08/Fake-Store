// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CategoryStore on _CategoryStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_CategoryStore.isLoading'))
          .value;
  Computed<List<ProductModel>>? _$jeweleryListComputed;

  @override
  List<ProductModel> get jeweleryList => (_$jeweleryListComputed ??=
          Computed<List<ProductModel>>(() => super.jeweleryList,
              name: '_CategoryStore.jeweleryList'))
      .value;
  Computed<List<ProductModel>>? _$electronicsListComputed;

  @override
  List<ProductModel> get electronicsList => (_$electronicsListComputed ??=
          Computed<List<ProductModel>>(() => super.electronicsList,
              name: '_CategoryStore.electronicsList'))
      .value;
  Computed<List<ProductModel>>? _$mensListComputed;

  @override
  List<ProductModel> get mensList =>
      (_$mensListComputed ??= Computed<List<ProductModel>>(() => super.mensList,
              name: '_CategoryStore.mensList'))
          .value;
  Computed<List<ProductModel>>? _$womensListComputed;

  @override
  List<ProductModel> get womensList => (_$womensListComputed ??=
          Computed<List<ProductModel>>(() => super.womensList,
              name: '_CategoryStore.womensList'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_CategoryStore._isLoading', context: context);

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

  late final _$_jeweleryListAtom =
      Atom(name: '_CategoryStore._jeweleryList', context: context);

  @override
  List<ProductModel> get _jeweleryList {
    _$_jeweleryListAtom.reportRead();
    return super._jeweleryList;
  }

  @override
  set _jeweleryList(List<ProductModel> value) {
    _$_jeweleryListAtom.reportWrite(value, super._jeweleryList, () {
      super._jeweleryList = value;
    });
  }

  late final _$_electronicsListAtom =
      Atom(name: '_CategoryStore._electronicsList', context: context);

  @override
  List<ProductModel> get _electronicsList {
    _$_electronicsListAtom.reportRead();
    return super._electronicsList;
  }

  @override
  set _electronicsList(List<ProductModel> value) {
    _$_electronicsListAtom.reportWrite(value, super._electronicsList, () {
      super._electronicsList = value;
    });
  }

  late final _$_mensListAtom =
      Atom(name: '_CategoryStore._mensList', context: context);

  @override
  List<ProductModel> get _mensList {
    _$_mensListAtom.reportRead();
    return super._mensList;
  }

  @override
  set _mensList(List<ProductModel> value) {
    _$_mensListAtom.reportWrite(value, super._mensList, () {
      super._mensList = value;
    });
  }

  late final _$_womensListAtom =
      Atom(name: '_CategoryStore._womensList', context: context);

  @override
  List<ProductModel> get _womensList {
    _$_womensListAtom.reportRead();
    return super._womensList;
  }

  @override
  set _womensList(List<ProductModel> value) {
    _$_womensListAtom.reportWrite(value, super._womensList, () {
      super._womensList = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
jeweleryList: ${jeweleryList},
electronicsList: ${electronicsList},
mensList: ${mensList},
womensList: ${womensList}
    ''';
  }
}
