import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/models/product_models/product_model.dart';

class ProductDetailScreen extends StatelessWidget {
  final ProductModel product;
  const ProductDetailScreen({super.key, required this.product});

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
                        product.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Text(
                  product.title,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                SizedBox(height: getHeight(context) * 0.01),
                Text(
                  product.description,
                  style: const TextStyle(
                      fontSize: 15, color: AppColors.secondaryTextColor),
                ),
                SizedBox(height: getHeight(context) * 0.01),
                const ReviewStars(rating: 3),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "\$${product.price}",
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
