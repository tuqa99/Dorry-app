import 'package:flutter/material.dart';
import '../Componants/Textfiels.dart';
import '../Componants/botton.dart';
import './SignUp.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final myEmail = TextEditingController();
  final myPassword = TextEditingController();
  String email = '123@gmail.com';
  String password = '123';
  String sorrymassege = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 20,
              color: Colors.black,
            )),
      ),
      body: ListView(
        children: [
          SafeArea(
              child: Column(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 33,
                  ),
                  Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome back ! Login with your credentials",
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.grey[700],
                    ),
                  ),
                  SizedBox(height: 33),
                  makeInput(label: 'Email'),
                  makeInput(label: 'Password'),
                ],
              ),
              MaterialBotton_log_in2(),
              SizedBox(
                height: 22,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have  an account ?'),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return SignUp();
                          },
                        ));
                      },
                      child: Text(
                        'Sign Up',
                        style: TextStyle(fontSize: 18, color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
