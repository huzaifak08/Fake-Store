// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductStore on _ProductStore, Store {
  Computed<bool>? _$isLoadingComputed;

  @override
  bool get isLoading =>
      (_$isLoadingComputed ??= Computed<bool>(() => super.isLoading,
              name: '_ProductStore.isLoading'))
          .value;
  Computed<List<ProductModel>>? _$productListComputed;

  @override
  List<ProductModel> get productList => (_$productListComputed ??=
          Computed<List<ProductModel>>(() => super.productList,
              name: '_ProductStore.productList'))
      .value;
  Computed<List<ProductModel>>? _$searchProductListComputed;

  @override
  List<ProductModel> get searchProductList => (_$searchProductListComputed ??=
          Computed<List<ProductModel>>(() => super.searchProductList,
              name: '_ProductStore.searchProductList'))
      .value;

  late final _$_isLoadingAtom =
      Atom(name: '_ProductStore._isLoading', context: context);

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

  late final _$_productListAtom =
      Atom(name: '_ProductStore._productList', context: context);

  @override
  List<ProductModel> get _productList {
    _$_productListAtom.reportRead();
    return super._productList;
  }

  @override
  set _productList(List<ProductModel> value) {
    _$_productListAtom.reportWrite(value, super._productList, () {
      super._productList = value;
    });
  }

  late final _$_searchProductListAtom =
      Atom(name: '_ProductStore._searchProductList', context: context);

  @override
  List<ProductModel> get _searchProductList {
    _$_searchProductListAtom.reportRead();
    return super._searchProductList;
  }

  @override
  set _searchProductList(List<ProductModel> value) {
    _$_searchProductListAtom.reportWrite(value, super._searchProductList, () {
      super._searchProductList = value;
    });
  }

  late final _$getAllProductsAsyncAction =
      AsyncAction('_ProductStore.getAllProducts', context: context);

  @override
  Future<void> getAllProducts() {
    return _$getAllProductsAsyncAction.run(() => super.getAllProducts());
  }

  late final _$_ProductStoreActionController =
      ActionController(name: '_ProductStore', context: context);

  @override
  dynamic searchedProducts(String searchText) {
    final _$actionInfo = _$_ProductStoreActionController.startAction(
        name: '_ProductStore.searchedProducts');
    try {
      return super.searchedProducts(searchText);
    } finally {
      _$_ProductStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
productList: ${productList},
searchProductList: ${searchProductList}
    ''';
  }
}
