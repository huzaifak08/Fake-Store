import 'package:fakes_store/exports/libraries.dart';

class ProductTile extends StatelessWidget {
  final String title;
  final double price;
  final String url;
  const ProductTile(
      {super.key, required this.title, required this.price, required this.url});

  @override
  Widget build(BuildContext context) {
    return GridTile(
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
                  ),
                ),
                SizedBox(height: getHeight(context) * 0.01),
                Text(
                  title,
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
    );
  }
}
