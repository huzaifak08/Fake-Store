class EndPoints {
  // receiveTimeout
  static const Duration receiveTimeout = Duration(milliseconds: 15000);

  // connectTimeout
  static const Duration connectionTimeout = Duration(milliseconds: 30000);

  static const String baseUrl = "https://fakestoreapi.com";

  static const String login = "$baseUrl/auth/login";

  static const String products = "$baseUrl/products";
  static const String singleProduct = "$baseUrl/products";

  static const String categories = "$baseUrl/products/categories";
  static const String singleCategory = "$baseUrl/products/category/jewelery";

  static const String cart = "$baseUrl/carts";
}
