import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'app_state.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final applicationState = Provider.of<ApplicationState>(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                applicationState.signInAnonymously().then((_) {
                  if (applicationState.isLoggedIn) {
                    Navigator.of(context).pushReplacementNamed('/');
                  }
                });
              },
              child: const Text("Login Anonymously"),
            ),
            // ElevatedButton(
            //   onPressed: () {
            //     applicationState.loginWithGoogle().then((_) {
            //       if (applicationState.isLoggedIn) {
            //         Navigator.of(context).pushReplacementNamed('/');
            //       }
            //     });
            //   },
            //   child: const Text("Login with Google"),
            // ),
          ],
        ),
      ),
    );
  }
}
