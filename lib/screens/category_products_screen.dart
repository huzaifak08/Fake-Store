import 'package:fakes_store/exports/libraries.dart';

class CategoryProductScreen extends StatelessWidget {
  final String headerTitle;
  const CategoryProductScreen({super.key, required this.headerTitle});

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
              SizedBox(height: getHeight(context) * 0.03),
              SearchBar(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
                leading: const Icon(Iconsax.search_normal),
                hintText: 'Search Product',
              ),
              SizedBox(height: getHeight(context) * 0.03),
              Expanded(
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 1,
                  ),
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return ProductTile(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const ProductDetailScreen(),
                              ));
                        },
                        title: "Product Title",
                        price: 99.99,
                        url:
                            "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg");
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
