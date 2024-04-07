import 'package:fakes_store/exports/libraries.dart';
import 'package:fakes_store/stores/auth_store.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController usernameController;
  late TextEditingController passwordController;

  late FocusNode passwordFocusNode;

  @override
  void initState() {
    usernameController = TextEditingController();
    passwordController = TextEditingController();

    passwordFocusNode = FocusNode();

    super.initState();
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();

    passwordFocusNode.dispose();

    super.dispose();
  }

  final AuthStore _authStore = AuthStore();

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
      body: SingleChildScrollView(
        child: Padding(
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
                    CustomTextField(
                      controller: usernameController,
                      label: 'Username',
                      keyboardType: TextInputType.emailAddress,
                      onFiledSubmissionValue: (newValue) {
                        if (newValue != null) {
                          passwordFocusNode.requestFocus();
                        }
                      },
                    ),
                    SizedBox(height: getHeight(context) * 0.01),
                    CustomTextField(
                      controller: passwordController,
                      focusNode: passwordFocusNode,
                      label: 'Password',
                      keyboardType: TextInputType.emailAddress,
                    ),
                    SizedBox(height: getHeight(context) * 0.02),
                    Observer(
                      builder: (BuildContext context) {
                        return _authStore.isLoading
                            ? const Center(
                                child: CircularProgressIndicator(
                                  color: AppColors.primaryColor,
                                ),
                              )
                            : CustomButton(
                                width: getWidth(context) * 0.6,
                                title: "Sign In",
                                onPressed: () {
                                  _authStore
                                      .login(usernameController.text,
                                          passwordController.text)
                                      .then(
                                    (value) {
                                      // ignore: unnecessary_null_comparison
                                      if (_authStore.token != null) {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                const NavigationMenu(),
                                          ),
                                        );
                                      }
                                    },
                                  );
                                },
                              );
                      },
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
