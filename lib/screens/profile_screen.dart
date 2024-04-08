import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/screens/welcome_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthStore _authStore = AuthStore();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: getHeight(context) * 0.02,
              horizontal: getHeight(context) * 0.02),
          child: ListView(
            children: [
              const Header(title: "USER PROFILE"),
              SizedBox(height: getHeight(context) * 0.03),
              CircleAvatar(
                radius: getHeight(context) * 0.08,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(getHeight(context) * 0.1),
                  child: Image.asset(
                    "assets/profile.png",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: getHeight(context) * 0.03),
              const ProfileTile(title: 'First Name', value: "Huzaifa"),
              const ProfileTile(title: 'Last Name', value: "Khan"),
              const ProfileTile(title: 'Username', value: "huzaifak08"),
              const ProfileTile(
                  title: 'Email Address', value: "hk7928042@gmail.com"),
              const ProfileTile(
                  title: 'Phone Number', value: "+92 318 0794547"),
              SizedBox(height: getHeight(context) * 0.01),
              Observer(
                builder: (context) => _authStore.isLoading
                    ? const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primaryColor,
                        ),
                      )
                    : CustomButton(
                        width: getWidth(context) * 0.7,
                        title: "Logout",
                        onPressed: () {
                          _authStore.logout().then(
                                (value) => Navigator.pushAndRemoveUntil(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          const WelcomeScreen(),
                                    ),
                                    (route) => false),
                              );
                        },
                      ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
