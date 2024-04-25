import 'package:fakes_store/components/service_locator.dart';
import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/stores/product_store/product_store.dart';

class WishlistScreen extends StatefulWidget {
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  final ProductStore _productStore = getIt<ProductStore>();

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
              const Header(title: "WISHLIST"),
              SizedBox(height: getHeight(context) * 0.03),
              SearchBar(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
                leading: const Icon(Iconsax.search_normal),
                hintText: 'Search Product',
              ),
              SizedBox(height: getHeight(context) * 0.03),
              Observer(
                builder: (context) => Expanded(
                  child: ListView.builder(
                    itemCount: _productStore.favouritiesList.length,
                    itemBuilder: (context, index) {
                      return WishlistTile(
                        product: _productStore.favouritiesList[index],
                        productStore: _productStore,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
