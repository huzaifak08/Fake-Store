import 'package:fakes_store/exports/libraries.dart';

class Headline extends StatelessWidget {
  final String text;
  const Headline({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text, style: Theme.of(context).textTheme.headlineMedium),
    );
  }
}
