import 'package:app_idx/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

// ignore: must_be_immutable
class LoginScreen extends StatelessWidget {
  static const name = 'LoginScreen';
  LoginScreen({super.key});

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();

  List<Map<String, String>> usersAndPasswords = 
  [
    {
      'username': 'Aid', 
      'password': '123'
    },

    {
      'username': 'Ale', 
      'password': 'soyAle'
    },

    {
      'username': 'Marcos', 
      'password': 'miContraseña123'
    }
  ];

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
              onPressed: () 
              {
                SnackBar errorMessage = const SnackBar(
                    content: Text('Usuario o contraseña incorrectos'));
                String inputUser = userController.text;
                String inputPass = passController.text;

                if (inputPass.isNotEmpty && inputUser.isNotEmpty) 
                {
                  bool userFound = false;
                  for (var user in usersAndPasswords) 
                  {
                    if (user['username'] == inputUser && user['password'] == inputPass) 
                    {
                      userFound = true;
                      context.pushNamed(HomeScreen.name, extra: userController.text);
                      break;
                    }
                  }
                  if (!userFound) 
                  {
                    ScaffoldMessenger.of(context).showSnackBar(errorMessage);
                  }
                } 
                else if (inputUser.isEmpty) 
                {
                  ScaffoldMessenger.of(context).showSnackBar(errorMessage);
                } 
                else if (inputPass.isEmpty) 
                {
                  ScaffoldMessenger.of(context).showSnackBar(errorMessage);
                }

              },
              child: const Text
              (
                'Login',
              )
            )
          ],
        ),
      )
    );
  }
}
