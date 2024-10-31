import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:settingprovider/common/widgets/pages_button.dart';
import 'package:settingprovider/providers/sign_provider.dart';

import '../../../controllers/sign_page_controller.dart';

class SignPageMobileScreen extends StatelessWidget {
  const SignPageMobileScreen({super.key});

  // Sign In view with email and password input fields
  Widget signInView(
      BuildContext context, SignPageControllerProvider controllers) {
    return Row(
      children: [
        PagesButton(),
        Expanded(
          flex: 1,
          child: Container(),
        ),
        SizedBox(
          width: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text('Sign In Screen'),
              TextField(
                controller: controllers.signInEmailController,
                decoration: const InputDecoration(labelText: 'Email'),
              ),
              TextField(
                controller: controllers.signInPasswordController,
                decoration: const InputDecoration(labelText: 'Password'),
                obscureText: true,
              ),
              ElevatedButton(
                onPressed: () =>
                    context.read<SignNotifier>().updateSignState(false),
                child: const Text('Go to Sign Up'),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(),
        ),
      ],
    );
  }

  // Sign Up view with email, username, password, and password confirmation input fields
  Widget signUpView(
      BuildContext context, SignPageControllerProvider controllers) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Text('Sign Up Screen'),
        TextField(
          controller: controllers.signUpEmailController,
          decoration: const InputDecoration(labelText: 'Email'),
        ),
        TextField(
          controller: controllers.signUpUsernameController,
          decoration: const InputDecoration(labelText: 'Username'),
        ),
        TextField(
          controller: controllers.signUpPasswordController,
          decoration: const InputDecoration(labelText: 'Password'),
          obscureText: true,
        ),
        TextField(
          controller: controllers.signUpConfirmPasswordController,
          decoration: const InputDecoration(labelText: 'Confirm Password'),
          obscureText: true,
        ),
        ElevatedButton(
          onPressed: () => context.read<SignNotifier>().updateSignState(true),
          child: const Text('Go to Sign In'),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // final isSignIn = context.select((SignNotifier notifier) => notifier.signPageState);
    final isSignIn = context.watch<SignNotifier>().signPageState;
    final controllers = context.read<SignPageControllerProvider>();

    return Scaffold(
      appBar: AppBar(title: const Text('Sign Page')),
      body: Center(
        child: isSignIn
            ? signInView(context, controllers)
            : signUpView(context, controllers),
      ),
    );
  }
}
