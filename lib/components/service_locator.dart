import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/services/category_service.dart';
import 'package:fakes_store/services/products_service.dart';
import 'package:fakes_store/services/profile_service.dart';
import 'package:fakes_store/stores/category_store/category_store.dart';
import 'package:fakes_store/stores/product_store/product_store.dart';
import 'package:fakes_store/stores/profile_store/profile_store.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Dio

  getIt.registerSingleton<Dio>(Dio());

  // Shared Preferences:
  getIt.registerSingleton<SharedPreferenceHelper>(SharedPreferenceHelper());

  // Services:
  getIt.registerSingleton<AuthServce>(
      AuthServce(getIt<SharedPreferenceHelper>(), getIt<Dio>()));
  getIt.registerSingleton<CategoryService>(CategoryService(getIt<Dio>()));
  getIt.registerSingleton<ProductService>(ProductService(getIt<Dio>()));
  getIt.registerSingleton<ProfileService>(ProfileService(getIt<Dio>()));

  // Stores:
  getIt.registerSingleton(AuthStore(getIt<AuthServce>()));
  getIt.registerSingleton(CategoryStore(getIt<CategoryService>()));
  getIt.registerSingleton(ProductStore(getIt<ProductService>()));
  getIt.registerSingleton(
      ProfileStore(getIt<ProfileService>(), getIt<SharedPreferenceHelper>()));
}
