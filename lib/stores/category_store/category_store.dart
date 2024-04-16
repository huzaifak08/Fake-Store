import 'package:fakes_store/models/product_models/product_model.dart';
import 'package:fakes_store/services/category_service.dart';
import 'package:mobx/mobx.dart';
part 'category_store.g.dart';

// ignore: library_private_types_in_public_api
class CategoryStore = _CategoryStore with _$CategoryStore;

abstract class _CategoryStore with Store {
  final CategoryService _categoryService = CategoryService();

  @observable
  bool _isLoading = false;
  @computed
  bool get isLoading => _isLoading;

  @observable
  List<ProductModel> _jeweleryList = [];
  @computed
  List<ProductModel> get jeweleryList => _jeweleryList;

  @observable
  List<ProductModel> _electronicsList = [];
  @computed
  List<ProductModel> get electronicsList => _electronicsList;

  @observable
  List<ProductModel> _mensList = [];
  @computed
  List<ProductModel> get mensList => _mensList;

  @observable
  List<ProductModel> _womensList = [];
  @computed
  List<ProductModel> get womensList => _womensList;

  Future<void> getAllJewelery() async {
    _isLoading = true;

    _jeweleryList = await _categoryService.getAllJeweleryProductsData();

    _isLoading = false;
  }

  Future<void> getAllElectronics() async {
    _isLoading = true;

    _electronicsList = await _categoryService.getAllElectronicsProductsData();

    _isLoading = false;
  }

  Future<void> getAllMens() async {
    _isLoading = true;

    _mensList = await _categoryService.getAllMensProductsData();

    _isLoading = false;
  }

  Future<void> getAllWomens() async {
    _isLoading = true;

    _womensList = await _categoryService.getAllWomensProductsData();

    _isLoading = false;
  }
}
