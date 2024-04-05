import 'package:fakes_store/exports/libraries.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.ternaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 10,
        shadowColor: AppColors.primaryColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        title: Text(
          'MNMLMANDI',
          style: Theme.of(context).textTheme.titleLarge?.copyWith(
                fontSize: 22,
                color: AppColors.whiteColor,
              ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          left: getWidth(context) * 0.01,
          right: getWidth(context) * 0.01,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset("assets/cards2.png"),
            Container(
              padding: EdgeInsets.symmetric(
                  vertical: getHeight(context) * 0.03,
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
                    color: Colors.black,
                    spreadRadius: 10,
                    blurRadius: 50,
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
                    "Login To Begin!",
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  SizedBox(height: getHeight(context) * 0.03),
                  const CustomTextField(
                    label: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: getHeight(context) * 0.01),
                  const CustomTextField(
                    label: 'Password',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: getHeight(context) * 0.02),
                  CustomButton(
                    width: getWidth(context) * 0.6,
                    title: "Sign In",
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavigationMenu(),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
