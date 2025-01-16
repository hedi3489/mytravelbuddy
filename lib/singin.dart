import 'package:flutter/material.dart';
import 'package:mytravelbuddy/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Travel Buddy',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const SignIn(title: 'My Travel Buddy'),
    );
  }
}

class SignIn extends StatefulWidget {
  const SignIn({super.key, required this.title});

  final String title;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Welcome to My Travel Buddy',
              style: TextStyle(fontSize: 24),
            ),

            // EMAIL TEXTFIELD
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your email',
                ),
              ),
            ),

            // PASSWORD TEXTFIELD
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
              ),
            ),

            // SIGN IN BUTTON
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(150, 50)),
                ),
                onPressed: () {
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => ));
                },
                child: Text('Log in')),

            // USER FRIENDLY TEXT
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "Don't have an account?",
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),

            // SIGN UP BUTTON
            ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(Size(150, 50)),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignUp(title: 'My Travel Buddy',)));
                },
                child: Text('Sign up'))
          ],
        ),
      ),
    );
  }
}
