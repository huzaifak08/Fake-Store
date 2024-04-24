import 'package:fakes_store/components/service_locator.dart';
import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/models/product_models/product_model.dart';
import 'package:fakes_store/stores/product_store/product_store.dart';

class CategoryProductScreen extends StatelessWidget {
  final String headerTitle;
  final List<ProductModel> products;
  const CategoryProductScreen(
      {super.key, required this.headerTitle, required this.products});

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
              Header(title: headerTitle.toUpperCase()),
              // SizedBox(height: getHeight(context) * 0.03),
              // SearchBar(
              //   elevation: MaterialStateProperty.all(0),
              //   backgroundColor:
              //       MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
              //   leading: const Icon(Iconsax.search_normal),
              //   hintText: 'Search Product',
              // ),
              SizedBox(height: getHeight(context) * 0.03),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                  ),
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    return ProductTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProductDetailScreen(
                                  product: products[index],
                                  productStore: getIt<ProductStore>(),
                                ),
                              ));
                        },
                        title: products[index].title,
                        price: products[index].price,
                        url: products[index].image);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
