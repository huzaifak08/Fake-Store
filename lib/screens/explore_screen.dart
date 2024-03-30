import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/widgets/category_tile.dart';

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
                    const CategoryTile(
                      imageUrl:
                          "https://images.pexels.com/photos/325876/pexels-photo-325876.jpeg?auto=compress&cs=tinysrgb&w=600",
                      title: "MEN'S CLOTHING",
                      products: 120,
                    ),
                    SizedBox(height: getHeight(context) * 0.01),
                    const CategoryTile(
                      imageUrl:
                          "https://images.pexels.com/photos/6069977/pexels-photo-6069977.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      title: "WOMEN'S CLOTHING",
                      products: 120,
                    ),
                    SizedBox(height: getHeight(context) * 0.01),
                    const CategoryTile(
                      imageUrl:
                          "https://images.pexels.com/photos/17834/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      title: 'JEWELERY',
                      products: 120,
                    ),
                    SizedBox(height: getHeight(context) * 0.01),
                    const CategoryTile(
                      imageUrl:
                          "https://images.pexels.com/photos/2111015/pexels-photo-2111015.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                      title: 'ELECTRONICS',
                      products: 120,
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
