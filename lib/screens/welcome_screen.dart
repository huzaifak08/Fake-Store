import 'package:fakes_store/components/service_locator.dart';
import 'package:fakes_store/exports/libraries.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final AuthStore _authStore = getIt<AuthStore>();

  @override
  void initState() {
    _authStore.loggedInStatus();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topCenter,
        children: [
          Image.asset(
            "assets/welcome.jpeg",
            fit: BoxFit.cover,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    EdgeInsets.symmetric(vertical: getHeight(context) * 0.04),
                child: Text(
                  "MNMLMANDI",
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: AppColors.primaryColor, shadows: const [
                    Shadow(
                        // bottomLeft
                        offset: Offset(-1.5, -1.5),
                        color: Colors.white),
                    Shadow(
                        // bottomRight
                        offset: Offset(1.5, -1.5),
                        color: Colors.white),
                    Shadow(
                        // topRight
                        offset: Offset(1.5, 1.5),
                        color: Colors.white),
                    Shadow(
                        // topLeft
                        offset: Offset(-1.5, 1.5),
                        color: Colors.white),
                  ]),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(
                    vertical: getHeight(context) * 0.08,
                    horizontal: getHeight(context) * 0.01),
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: AppColors.rejectColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 20,
                      blurRadius: 100,
                      offset: Offset(0, 5), // Adjust the shadow position
                    ),
                  ],
                  gradient: LinearGradient(
                    begin: Alignment(0.0, -1.0),
                    end: Alignment(0.0, 0.2),
                    colors: [
                      Colors.white,
                      Colors.white,
                    ],
                  ),
                ),
                child: Column(
                  children: [
                    Text(
                      "Your Appearance\nShows Your Quality",
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    SizedBox(height: getHeight(context) * 0.02),
                    const Text(
                      "Change The Quality Of Your\nAppearance With MNMLMANDI Now!",
                      style: TextStyle(color: AppColors.ternaryColor),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: getHeight(context) * 0.04),
                    CustomButton(
                      title: "Get Started",
                      onPressed: () async {
                        if (_authStore.isLoggedIn) {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const NavigationMenu(),
                              ));
                        } else {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginScreen(),
                            ),
                          );
                        }
                      },
                      height: getHeight(context) * 0.07,
                      width: getWidth(context) * 0.8,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
