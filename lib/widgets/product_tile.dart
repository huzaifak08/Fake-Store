import 'package:fakes_store/exports/libraries.dart';

class ProductTile extends StatelessWidget {
  final String title;
  final double price;
  final String url;
  final VoidCallback onTap;
  const ProductTile(
      {super.key,
      required this.title,
      required this.price,
      required this.url,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    String displayTitle = title;
    List<String> titleWords = title.split(' ');

    // Check if title has more than 2 words
    if (titleWords.length > 2) {
      // Only take the first two words
      displayTitle = titleWords.sublist(0, 2).join(' ');
    }
    return InkWell(
      onTap: onTap,
      child: GridTile(
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: getWidth(context) * 0.08,
              vertical: getHeight(context) * 0.015),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      url,
                      fit: BoxFit.cover,
                      loadingBuilder: (context, child, loadingProgress) {
                        if (loadingProgress == null) {
                          return child;
                        }
                        return const Center(
                          child: CircularProgressIndicator(
                            color: AppColors.primaryColor,
                          ),
                        );
                      },
                    ),
                  ),
                  SizedBox(height: getHeight(context) * 0.01),
                  Text(
                    displayTitle,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "\$$price",
                    style: const TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 0,
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(Iconsax.heart),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
