import 'package:ejemplo_flutter_app/core/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatelessWidget 
{
  
  LoginScreen({super.key});

  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  String user = 'Aiden';
  String pass = '123';

  @override
  Widget build(BuildContext context) 
  {
    return Scaffold
    (
      body: Center
      (
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center,
          children: 
          [
            TextField
            (
              controller: userController,
              decoration: const InputDecoration(hintText: 'Username', icon: Icon(Icons.person)),
            ),
            const SizedBox(height: 10,),
            TextField
            (
              controller: passController,
              decoration: const InputDecoration(hintText: 'Password', icon: Icon(Icons.key)),
            ),
            const SizedBox(height: 40,),
            ElevatedButton
            (
              onPressed: ()
              {
                if(userController.text == user && passController.text == pass)
                {
                  appRouter.push('/home');
                }
                else if(userController.text != user || passController.text != pass)
                {
                  
                }
              }, 
              child: const Text('Login')
            )
          ],
        ),
      )
    );
  }
}