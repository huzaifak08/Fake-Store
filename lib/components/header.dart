import 'package:fakes_store/exports/libraries.dart';

class Header extends StatelessWidget {
  final String title;
  const Header({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        CircleAvatar(
          radius: getWidth(context) * 0.07,
          backgroundImage: const AssetImage("assets/profile.png"),
        ),
      ],
    );
  }
}
