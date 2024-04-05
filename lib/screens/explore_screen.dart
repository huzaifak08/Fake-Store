import 'package:fakes_store/exports/libraries.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

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
              Expanded(
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
                              builder: (context) => const CategoryProductScreen(
                                headerTitle: "men's clothing",
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
                              builder: (context) => const CategoryProductScreen(
                                headerTitle: "women's Clothing",
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
                              builder: (context) => const CategoryProductScreen(
                                headerTitle: "jewelery",
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
                              builder: (context) => const CategoryProductScreen(
                                headerTitle: "electronics",
                              ),
                            ));
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
