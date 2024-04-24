import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/models/product_models/product_model.dart';

class CategoryService {
  final Dio _dio;
  CategoryService(this._dio);

  List<ProductModel> jeweleryList = [];
  List<ProductModel> electronicsList = [];
  List<ProductModel> mensList = [];
  List<ProductModel> womensList = [];

  Future<Map<String, List<ProductModel>>> parallelApiCall() async {
    try {
      final response = await Future.wait([
        _dio.get(EndPoints.jeweleryCategory),
        _dio.get(EndPoints.electronicsCategory),
        _dio.get(EndPoints.mensCategory),
        _dio.get(EndPoints.womensCategory)
      ]);

      if (response[0].statusCode == 200 &&
          response[1].statusCode == 200 &&
          response[2].statusCode == 200 &&
          response[3].statusCode == 200) {
        List<dynamic> jeweleryData = response[0].data;
        List<dynamic> electronicsData = response[1].data;
        List<dynamic> mensData = response[2].data;
        List<dynamic> womensData = response[3].data;

        List<ProductModel> jeweleryTempList =
            jeweleryData.map((e) => ProductModel.fromMap(e)).toList();

        List<ProductModel> electronicsTempList =
            electronicsData.map((e) => ProductModel.fromMap(e)).toList();

        List<ProductModel> mensTempList =
            mensData.map((e) => ProductModel.fromMap(e)).toList();

        List<ProductModel> womensTempList =
            womensData.map((e) => ProductModel.fromMap(e)).toList();

        jeweleryList = List.from(jeweleryTempList);
        electronicsList = List.from(electronicsTempList);
        mensList = List.from(mensTempList);
        womensList = List.from(womensTempList);

        return {
          "jewelery": jeweleryList,
          "electronics": electronicsList,
          "mens": mensList,
          "womens": womensList,
        };
      } else {
        throw Exception('Response Error on Products');
      }
    } catch (err) {
      throw Exception(err.toString());
    }
  }

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
