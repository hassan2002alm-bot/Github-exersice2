import 'package:flutter/material.dart';
import 'products.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isPasswordHidden = true;

  void login() {
    String email = emailController.text;
    String password = passwordController.text;

    print("Email: $email");
    print("Password: $password");

    // هنا تقدر تضيف التحقق أو الربط مع API
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: Text("Login"), centerTitle: false,),
      body: Stack(
children: [
  Container(
    width: double.infinity,
    height: double.infinity,
    child: Image.asset(
      'build/images/m.jpeg',
      fit: BoxFit.cover,
    ),
      ),
Center(
    //  padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: emailController,
            decoration: InputDecoration(
              labelText: "Email",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: passwordController,
            obscureText: isPasswordHidden,
            decoration: InputDecoration(
              labelText: "Password",
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(
                  isPasswordHidden
                      ? Icons.visibility
                      : Icons.visibility_off,
                ),
                onPressed: () {
                  setState(() {
                    isPasswordHidden = !isPasswordHidden;
                  });
                },
              ),
            ),
          ),

          SizedBox(height: 60),
          ElevatedButton(
            onPressed: login,
            style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 50,),


            ),
              child: MaterialButton(
              textColor: Colors.black,

                onPressed: () {

                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => Products()));
                },

                child: Text("Login", ),

              ),

          ),

        ],

      ),

    ),

],

      ),

    );
  }
}