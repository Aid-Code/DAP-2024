import 'package:ejemplo_flutter_app/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static const name = 'LoginScreen';
  LoginScreen({super.key});

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String user = 'Aiden';
  String pass = '123';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Log in',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 40,
          ),
          TextField(
            controller: userController,
            decoration: const InputDecoration(
                hintText: 'Username',
                prefixIcon: Icon(Icons.person),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
          ),
          const SizedBox(
            height: 20,
          ),
          TextField(
            controller: passController,
            decoration: const InputDecoration(
                hintText: 'Password',
                prefixIcon: Icon(Icons.lock),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)))),
            obscureText: true,
          ),
          const SizedBox(
            height: 50,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30))),
              onPressed: () {
                String inputUser = userController.text;
                String inputPass = passController.text;

                if (inputUser == user && inputPass == pass) {
                  context.pushNamed(HomeScreen.name,
                      extra: userController.text);
                } else if (userController.text != user ||
                    passController.text != pass) {}
              },
              child: const Text(
                'Login',
              ))
        ],
      ),
    ));
  }
}
