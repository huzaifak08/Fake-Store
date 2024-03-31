import 'package:fakes_store/exports/libraries.dart';

class CategoryTile extends StatelessWidget {
  final String title;
  final int products;
  final String imageUrl;
  final VoidCallback onTap;
  const CategoryTile(
      {super.key,
      required this.title,
      required this.products,
      required this.imageUrl,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Stack(
        children: [
          Container(
            width: getWidth(context),
            height: getHeight(context) * 0.2,
            decoration: BoxDecoration(
              // color: AppColors.alertColor,
              borderRadius: BorderRadius.circular(23),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(23),
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: getWidth(context) * 0.05,
                  vertical: getHeight(context) * 0.01),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(color: AppColors.whiteColor)),
                  Text("$products Products",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                          color: AppColors.whiteColor,
                          fontSize: 14,
                          fontWeight: FontWeight.normal)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
