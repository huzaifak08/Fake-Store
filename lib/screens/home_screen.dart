import 'package:fakes_store/components/service_locator.dart';
import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/stores/product_store/product_store.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ProductStore _productStore = getIt<ProductStore>();

  @override
  void initState() {
    _productStore.getAllProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: getHeight(context) * 0.02,
              horizontal: getHeight(context) * 0.02),
          child: Column(
            children: [
              const Header(title: "MNMLMANDI"),
              SizedBox(height: getHeight(context) * 0.03),
              SearchBar(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
                leading: const Icon(Iconsax.search_normal),
                hintText: 'Search Product',
                onChanged: (value) {
                  _productStore.searchedProducts(value);
                },
              ),
              SizedBox(height: getHeight(context) * 0.03),
              Observer(
                builder: (context) => _productStore.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primaryColor,
                        ),
                      )
                    : Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            crossAxisSpacing: 1,
                          ),
                          itemCount: _productStore.searchProductList.isNotEmpty
                              ? _productStore.searchProductList.length
                              : _productStore.productList.length,
                          itemBuilder: (context, index) {
                            return ProductTile(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ProductDetailScreen(
                                          product: _productStore
                                                  .searchProductList.isNotEmpty
                                              ? _productStore
                                                  .searchProductList[index]
                                              : _productStore
                                                  .productList[index],
                                          productStore: _productStore,
                                        ),
                                      ));
                                },
                                title: _productStore
                                        .searchProductList.isNotEmpty
                                    ? _productStore
                                        .searchProductList[index].title
                                    : _productStore.productList[index].title,
                                price: _productStore
                                        .searchProductList.isNotEmpty
                                    ? _productStore
                                        .searchProductList[index].price
                                    : _productStore.productList[index].price,
                                url: _productStore.searchProductList.isNotEmpty
                                    ? _productStore
                                        .searchProductList[index].image
                                    : _productStore.productList[index].image);
                          },
                        ),
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
