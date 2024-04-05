import 'package:fakes_store/exports/libraries.dart';

class ReviewStars extends StatelessWidget {
  final int rating;
  const ReviewStars({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getHeight(context) * 0.07,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return index < rating
              ? const Icon(
                  Icons.star,
                  color: AppColors.pendingColor,
                )
              : const Icon(Icons.star_border_outlined);
        },
      ),
    );
  }
}
