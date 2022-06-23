import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPagedemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Page"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 30),
            child: Center(
              child: Text(
                "Flutter Login",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 10),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                prefixIcon: Icon(
                  Icons.email,
                ),
                hintText: "Email",
              ),
            ),
          ),
          const Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 15),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(
                    Icons.password,
                  ),
                  hintText: "Password",
                  helperText: 'Password must have 6 characters',
                ),
              )),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: SizedBox(
                width: 200,
                height: 50,
                child: ElevatedButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 25),
                    ))),
          )
        ],
      ),
    );
  }
}
