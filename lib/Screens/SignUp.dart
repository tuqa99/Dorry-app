import 'package:flutter/material.dart';
import '../Componants/Textfiels.dart';
import '../Componants/botton.dart';
import './Login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

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
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 44,
                ),
                Center(
                  child: Row(
                    children: [
                      SizedBox(
                        width: 90,
                      ),
                      Image(
                          width: 60,
                          height: 60,
                          image: NetworkImage(
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3ZGttKr3mGLPDOHLVEOFxUGNhfVC02A7xRg&usqp=CAU')),
                      Text(
                        ' Sign up',
                        style: TextStyle(
                          fontSize: 22,
                        ),
                      ),
                    ],
                  ),
                ),
                Text('Create an account'),
                Column(
                  children: [
                    makeInput(label: 'Email'),
                    makeInput(label: 'password'),
                    makeInput(label: 'Confirm Password')
                  ],
                ),
                MaterialBotton_SignUp2(),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have  an account ?'),
                      TextButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          ));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(fontSize: 18, color: Colors.blue),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
