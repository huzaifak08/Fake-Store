import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/models/product_models/product_model.dart';

class CategoryService {
  final Dio _dio;
  CategoryService(this._dio);

  List<ProductModel> jeweleryList = [];
  List<ProductModel> electronicsList = [];
  List<ProductModel> mensList = [];
  List<ProductModel> womensList = [];

  Future<List<ProductModel>> getAllJeweleryProductsData() async {
    try {
      final response = await _dio.get(EndPoints.jeweleryCategory);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;

        List<ProductModel> list =
            data.map((e) => ProductModel.fromMap(e)).toList();

        jeweleryList = List.from(list);

        return jeweleryList;
      } else {
        throw Exception('Response Error on Products');
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<List<ProductModel>> getAllElectronicsProductsData() async {
    try {
      final response = await _dio.get(EndPoints.electronicsCategory);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;

        List<ProductModel> list =
            data.map((e) => ProductModel.fromMap(e)).toList();

        electronicsList = List.from(list);

        return electronicsList;
      } else {
        throw Exception('Response Error on Products');
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<List<ProductModel>> getAllMensProductsData() async {
    try {
      final response = await _dio.get(EndPoints.mensCategory);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;

        List<ProductModel> list =
            data.map((e) => ProductModel.fromMap(e)).toList();

        mensList = List.from(list);

        return mensList;
      } else {
        throw Exception('Response Error on Products');
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }

  Future<List<ProductModel>> getAllWomensProductsData() async {
    try {
      final response = await _dio.get(EndPoints.womensCategory);

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;

        List<ProductModel> list =
            data.map((e) => ProductModel.fromMap(e)).toList();

        womensList = List.from(list);

        return womensList;
      } else {
        throw Exception('Response Error on Products');
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }
}
