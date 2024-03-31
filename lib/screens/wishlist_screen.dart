import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/widgets/wishlist_tile.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

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
              Expanded(
                child: ListView.builder(
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return const WishlistTile(
                      title:
                          "Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops",
                      description:
                          "Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday",
                      imageUrl:
                          "https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg",
                    );
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
