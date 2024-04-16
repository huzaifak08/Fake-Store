import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/screens/welcome_screen.dart';
import 'package:fakes_store/stores/profile_store/profile_store.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final AuthStore _authStore = AuthStore();
  final ProfileStore _profileStore = ProfileStore();

  @override
  void initState() {
    _profileStore.getSingleUser();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: getHeight(context) * 0.02,
              horizontal: getHeight(context) * 0.02),
          child: Observer(
            builder: (context) => _profileStore.isLoading
                ? const Center(
                    child: CircularProgressIndicator(
                      color: AppColors.primaryColor,
                    ),
                  )
                : ListView(
                    children: [
                      const Header(title: "USER PROFILE"),
                      SizedBox(height: getHeight(context) * 0.03),
                      CircleAvatar(
                        radius: getHeight(context) * 0.08,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(getHeight(context) * 0.1),
                          child: Image.asset(
                            "assets/profile.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: getHeight(context) * 0.03),
                      ProfileTile(
                          title: 'First Name',
                          value: _profileStore.userModel.name.firstname),
                      ProfileTile(
                          title: 'Last Name',
                          value: _profileStore.userModel.name.lastname),
                      ProfileTile(
                          title: 'Username',
                          value: _profileStore.userModel.username),
                      ProfileTile(
                          title: 'Email Address',
                          value: _profileStore.userModel.email),
                      ProfileTile(
                          title: 'Phone Number',
                          value: _profileStore.userModel.phone),
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
      ),
    );
  }
}
