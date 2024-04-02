import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:movie_app/features/auth/presentation/auth_provider.dart';
import 'package:movie_app/features/main_navigator_page.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  static const route = '/login';
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 16, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/icon/logo.png',
                  height: 80,
                ),
                const SizedBox(height: 16),
                Text(
                  '${AppLocalizations.of(context)?.signInGreetings}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                const SizedBox(height: 16),
                const LoginForm(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final formKey = GlobalKey<FormState>();

  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          TextFormField(
            autofillHints: const [AutofillHints.username],
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: usernameController,
            decoration: InputDecoration(
              label: Text('${AppLocalizations.of(context)?.username}'),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
            textInputAction: TextInputAction.next,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          TextFormField(
            autofillHints: const [AutofillHints.password],
            autovalidateMode: AutovalidateMode.onUserInteraction,
            controller: passwordController,
            obscureText: isObscure,
            decoration: InputDecoration(
              label: Text('${AppLocalizations.of(context)?.password}'),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              suffixIcon: IconButton(
                padding: EdgeInsets.zero,
                onPressed: () {
                  isObscure = !isObscure;
                  setState(() {});
                },
                icon: isObscure
                    ? const Icon(Icons.visibility_rounded)
                    : const Icon(Icons.visibility_off_rounded),
              ),
            ),
            textInputAction: TextInputAction.done,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'This field is required';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          SizedBox(
            width: double.infinity,
            child: Consumer<AuthProvider>(
              builder: (
                BuildContext context,
                AuthProvider authProvider,
                Widget? child,
              ) {
                return ElevatedButton(
                  onPressed: () async {
                    FocusScope.of(context).unfocus();
                    if (formKey.currentState != null) {
                      if (formKey.currentState!.validate()) {
                        var result = await authProvider.doLogin(
                          usernameController.text.trim(),
                          passwordController.text.trim(),
                        );

                        if (context.mounted) {
                          if (result) {
                            context.go(HomePageNavigator.route);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  '${AppLocalizations.of(context)?.failedLogin}',
                                ),
                              ),
                            );
                          }
                        }
                      }
                    }
                  },
                  child: Builder(
                    builder: (_) {
                      if (authProvider.state == ConnectionState.active) {
                        return const CircularProgressIndicator.adaptive();
                      }
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                          '${AppLocalizations.of(context)?.signIn}',
                          style: const TextStyle(fontWeight: FontWeight.w700),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
