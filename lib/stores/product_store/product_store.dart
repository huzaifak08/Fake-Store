import 'package:fakes_store/models/product_models/product_model.dart';
import 'package:fakes_store/services/products_service.dart';
import 'package:mobx/mobx.dart';
part 'product_store.g.dart';

// ignore: library_private_types_in_public_api
class ProductStore = _ProductStore with _$ProductStore;

abstract class _ProductStore with Store {
  final ProductService _productService = ProductService();

  @observable
  bool _isLoading = false;
  @computed
  bool get isLoading => _isLoading;

  @observable
  List<ProductModel> _productList = [];
  @computed
  List<ProductModel> get productList => _productList;

  @observable
  List<ProductModel> _searchProductList = [];
  @computed
  List<ProductModel> get searchProductList => _searchProductList;

  @observable
  ObservableList favouritiesList = ObservableList<ProductModel>();

  @action
  Future<void> getAllProducts() async {
    _isLoading = true;

    _productList = await _productService.getAllProductsData();

    _isLoading = false;
  }

  @action
  void searchedProducts(String searchText) {
    _searchProductList = _productList
        .where(
          (element) => element.title.toLowerCase().contains(
                searchText.toLowerCase(),
              ),
        )
        .toList();
  }

  @action
  void toggleFavourities(ProductModel product) {
    if (favouritiesList.contains(product)) {
      favouritiesList.remove(product);
    } else {
      favouritiesList.add(product);
    }
  }
}
