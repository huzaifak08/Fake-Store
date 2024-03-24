import 'package:fakes_store/exports/libraries.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: getHeight(context) * 0.2,
        width: getWidth(context) * 0.9,
        // color: Colors.red,
        child: Row(
          children: [
            SizedBox(
                height: getWidth(context) * 0.4,
                width: getWidth(context) * 0.4,
                child: Image.asset('assets/logo_mod.png')),
            Text(
              "Himalaya College of\nNursing Mardan",
              style: Theme.of(context).textTheme.headlineSmall,
            )
          ],
        ),
      ),
    );
  }
}
