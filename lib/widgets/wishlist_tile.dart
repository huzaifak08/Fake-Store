import 'package:fakes_store/exports/libraries.dart';

class WishlistTile extends StatelessWidget {
  final String title;
  final String description;
  final String imageUrl;
  const WishlistTile(
      {super.key,
      required this.title,
      required this.description,
      required this.imageUrl});

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
                imageUrl,
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
                    title,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.titleSmall,
                  ),
                  SizedBox(width: getHeight(context) * 0.03),
                  Text(
                    description,
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
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Iconsax.heart_remove1,
                          color: AppColors.alertColor,
                        ),
                      ),
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
