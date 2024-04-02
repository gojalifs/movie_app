import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/auth/presentation/login_screen.dart';
import 'package:movie_app/features/initial/presentation/initial_provider.dart';
import 'package:movie_app/features/main_navigator_page.dart';
import 'package:provider/provider.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  late bool isLoggedIn;
  @override
  void initState() {
    super.initState();
    Provider.of<InitialProvider>(context, listen: false)
        .checkSession()
        .then((value) {
      if (value) {
        context.go(HomePageNavigator.route);
      } else {
        context.go(LoginScreen.route);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}
