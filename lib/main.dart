import 'package:flutter/material.dart';
import 'package:eticket/services/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RaisedButton(
                onPressed: () async {
                  SignInSignUpResult result = await AuthServices.signUp(
                      "thoriqmf123@gmail.com",
                      "12345678",
                      "thoriq mf",
                      ["Action", "Romance", "Horror", "Thriller"],
                      "Indonesia");

                  if (result.user == null) {
                    print(result.massage);
                  } else {
                    print(result.user.toString());
                  }
                },
                child: Text("Sign Up"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
