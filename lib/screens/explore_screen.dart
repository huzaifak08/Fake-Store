import 'package:fakes_store/components/service_locator.dart';
import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/stores/category_store/category_store.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  final CategoryStore _categoryStore = getIt<CategoryStore>();

  @override
  void initState() {
    _categoryStore.getAllCategory();

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
              const Header(title: "Category"),
              SizedBox(height: getHeight(context) * 0.03),
              SearchBar(
                elevation: MaterialStateProperty.all(0),
                backgroundColor:
                    MaterialStateProperty.all(Colors.grey.withOpacity(0.1)),
                leading: const Icon(Iconsax.search_normal),
                hintText: 'Search Category',
              ),
              SizedBox(height: getHeight(context) * 0.03),
              Observer(
                builder: (context) => _categoryStore.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primaryColor,
                        ),
                      )
                    : Expanded(
                        child: ListView(
                          children: [
                            CategoryTile(
                              imageUrl: "assets/mens.jpg",
                              title: "MEN'S CLOTHING",
                              products: 120,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryProductScreen(
                                        headerTitle: "men's clothing",
                                        products: _categoryStore.mensList,
                                      ),
                                    ));
                              },
                            ),
                            SizedBox(height: getHeight(context) * 0.01),
                            CategoryTile(
                              imageUrl: "assets/womwns.jpg",
                              title: "WOMEN'S CLOTHING",
                              products: 120,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryProductScreen(
                                        headerTitle: "women's Clothing",
                                        products: _categoryStore.womensList,
                                      ),
                                    ));
                              },
                            ),
                            SizedBox(height: getHeight(context) * 0.01),
                            CategoryTile(
                              imageUrl: "assets/jewlery.jpg",
                              title: 'JEWELERY',
                              products: 120,
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          CategoryProductScreen(
                                        headerTitle: "jewelery",
                                        products: _categoryStore.jeweleryList,
                                      ),
                                    ));
                              },
                            ),
                            SizedBox(height: getHeight(context) * 0.01),
                            CategoryTile(
                              imageUrl: "assets/electronics.jpg",
                              title: 'ELECTRONICS',
                              products: 120,
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoryProductScreen(
                                      headerTitle: "electronics",
                                      products: _categoryStore.electronicsList,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ],
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
