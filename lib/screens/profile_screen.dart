import 'package:fakes_store/Components/custom_profile_tile.dart';
import 'package:fakes_store/exports/libraries.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                backgroundImage: const AssetImage("assets/profile.png"),
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
              CustomButton(
                width: getWidth(context) * 0.7,
                title: "Logout",
                onPressed: () {},
              )
            ],
          ),
        ),
      ),
    );
  }
}
