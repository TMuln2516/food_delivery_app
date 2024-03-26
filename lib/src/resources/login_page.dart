import 'package:flutter/material.dart';
import 'package:food_delivery_app/src/components/my_button.dart';
import 'package:food_delivery_app/src/components/my_textfield.dart';
import 'package:food_delivery_app/src/resources/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock_open_sharp,
              size: 120,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Food Delivery App",
              style: TextStyle(
                  fontSize: 15,
                  color: Theme.of(context).colorScheme.inversePrimary),
            ),
            const SizedBox(
              height: 20,
            ),
            MyTextField(
              hintText: "Email",
              controller: emailController,
              obscureText: false,
            ),
            const SizedBox(
              height: 10,
            ),
            MyTextField(
              hintText: "Password",
              controller: passController,
              obscureText: true,
            ),
            const SizedBox(
              height: 10,
            ),
            MyButton(
              text: "Sign In",
              onTap: () {},
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a remember? ",
                  style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  ),
                  child: Text(
                    "Register now",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).colorScheme.inversePrimary),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
