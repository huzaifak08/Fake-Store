import 'package:fakes_store/exports/libraries.dart';

class ProfileTile extends StatelessWidget {
  final String title;
  final String value;
  const ProfileTile({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleSmall,
        ),
        SizedBox(height: getHeight(context) * 0.01),
        Container(
          height: getHeight(context) * 0.05,
          decoration: BoxDecoration(
              border: Border.all(color: AppColors.ternaryColor),
              borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: getHeight(context) * 0.01,
                horizontal: getWidth(context) * 0.03),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  value,
                  style: const TextStyle(fontSize: 15),
                ),
                const Icon(
                  Icons.edit,
                  size: 18,
                  color: AppColors.ternaryColor,
                )
              ],
            ),
          ),
        ),
        SizedBox(height: getHeight(context) * 0.02),
      ],
    );
  }
}
