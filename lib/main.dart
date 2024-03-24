import 'package:fakes_store/screens/welcome_screen.dart';
import 'exports/libraries.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 0.034 * getWidth(context),
            color: AppColors.ternaryColor,
            height: 1.6,
          ),
          titleMedium: TextStyle(
            fontSize: 0.030 * getWidth(context),
            color: AppColors.ternaryColor,
            height: 1.4,
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
