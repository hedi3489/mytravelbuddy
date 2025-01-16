import 'package:flutter/material.dart';
import 'package:mytravelbuddy/singin.dart';

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
      home: const SignUp(title: 'My Travel Buddy'),
    );
  }
}

class SignUp extends StatefulWidget {
  const SignUp({super.key, required this.title});

  final String title;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

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
              'New to My Travel Buddy?',
              style: TextStyle(fontSize: 24),
            ),

            // NAME TEXTFIELD
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your name',
                ),
              ),
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

            // PASSWORD TEXTFIELDS
            // TODO: make input invisible
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter your password',
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Re-enter your password',
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
                  //     MaterialPageRoute(builder: (context) => ValidateCredentials()));
                },
                child: Text('Sign up')),

            // USER FRIENDLY TEXT
            Padding(
              padding: EdgeInsets.only(top: 20, bottom: 10),
              child: Text(
                "Already have an account?",
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
                      MaterialPageRoute(builder: (context) => SignIn(title: 'My Travel Buddy',)));
                },
                child: Text('Sign in'))
          ],
        ),
      ),
    );
  }
}
