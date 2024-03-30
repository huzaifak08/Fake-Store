import 'package:fakes_store/exports/libraries.dart';

class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: getWidth(context) * 0.02),
            child: Column(
              children: [
                Container(
                  margin:
                      EdgeInsets.symmetric(vertical: getHeight(context) * 0.03),
                  height: getHeight(context) * 0.5,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(getWidth(context) * 0.2),
                      bottomRight: Radius.circular(getWidth(context) * 0.2),
                    ),
                  ),
                  child: Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: getWidth(context) * 0.1),
                      child: Image.network(
                        "https://fakestoreapi.com/img/71li-ujtlUL._AC_UX679_.jpg",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  "Mens Casual Premium Slim Fit T-Shirts",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: getHeight(context) * 0.01),
                const Text(
                  "Slim-fitting style, contrast raglan long sleeve, three-button henley placket, light weight & soft fabric for breathable and comfortable wearing. And Solid stitched shirts with round neck made for durability and a great fit for casual fashion wear and diehard baseball fans. The Henley style round neckline includes a three-button placket.",
                  style: TextStyle(
                      fontSize: 15, color: AppColors.secondaryTextColor),
                ),
                SizedBox(height: getHeight(context) * 0.01),
                const ReviewStars(rating: 3),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\$300",
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                ),
                SizedBox(height: getHeight(context) * 0.01),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Iconsax.heart),
                    ),
                    CustomButton(
                      width: getWidth(context) * 0.4,
                      title: "Add to Cart",
                      onPressed: () {},
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
