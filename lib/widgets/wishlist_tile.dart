import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/models/product_models/product_model.dart';
import 'package:fakes_store/stores/product_store/product_store.dart';

class WishlistTile extends StatelessWidget {
  final ProductModel product;
  final ProductStore productStore;
  const WishlistTile({
    super.key,
    required this.product,
    required this.productStore,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: getHeight(context) * 0.01,
      ),
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: getHeight(context) * 0.02,
            horizontal: getWidth(context) * 0.04),
        height: getHeight(context) * 0.23,
        decoration: BoxDecoration(
          color: AppColors.grayColor,
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          children: [
            Container(
              width: getWidth(context) * 0.4,
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(23),
              ),
              child: Image.network(
                product.image,
              ),
            ),
            SizedBox(width: getWidth(context) * 0.02),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: getHeight(context) * 0.01,
                  horizontal: getWidth(context) * 0.008),
              width: getWidth(context) * 0.4,
              child: Column(
                children: [
                  Text(
                    product.title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(width: getHeight(context) * 0.03),
                  Text(
                    product.description,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    softWrap: true,
                  ),
                  SizedBox(width: getHeight(context) * 0.01),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.payment_outlined,
                          color: AppColors.pendingColor,
                        ),
                      ),
                      Observer(
                        builder: (context) => IconButton(
                          onPressed: () {
                            productStore.toggleFavourities(product);
                          },
                          icon: Icon(
                            productStore.favouritiesList.contains(product)
                                ? Iconsax.heart_remove1
                                : Iconsax.heart,
                            color: AppColors.alertColor,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
