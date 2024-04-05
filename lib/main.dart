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
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: TextTheme(
          titleLarge: TextStyle(
            fontSize: 0.08 * getWidth(context),
            color: AppColors.primaryTextColor,
            height: 1.3,
            fontWeight: FontWeight.w600,
          ),
          titleMedium: TextStyle(
            fontSize: 0.06 * getWidth(context),
            color: AppColors.primaryTextColor,
            height: 1.4,
            fontWeight: FontWeight.w600,
          ),
          titleSmall: TextStyle(
            fontSize: 0.04 * getWidth(context),
            color: AppColors.primaryColor,
            height: 1.6,
          ),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}
