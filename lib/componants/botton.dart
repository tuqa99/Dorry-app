import 'package:flutter/material.dart';
import 'package:lab_eleven_group9/Screens/Home.dart';
import '../Screens/Login.dart';
import '../Screens/SignUp.dart';

class MaterialBotton_SignUp extends StatefulWidget {
  const MaterialBotton_SignUp({super.key});

  @override
  State<MaterialBotton_SignUp> createState() => _MaterialBotton_SignUpState();
}

class _MaterialBotton_SignUpState extends State<MaterialBotton_SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return SignUp();
          },
        ));
      },
      minWidth: 350,
      height: 60,
      color: Colors.redAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Text(
        "Sign UP",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}

class MaterialBotton_log_in extends StatelessWidget {
  const MaterialBotton_log_in({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return LoginPage();
          },
        ));
      },
      minWidth: 350,
      height: 60,
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
      child: Text(
        "Sign in",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}

class MaterialBotton_SignUp2 extends StatelessWidget {
  const MaterialBotton_SignUp2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Home();
          },
        ));
      },
      minWidth: 350,
      height: 60,
      color: Colors.redAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      child: Text(
        "Sign UP",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}

class MaterialBotton_log_in2 extends StatelessWidget {
  const MaterialBotton_log_in2({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return Home();
          },
        ));
      },
      minWidth: 350,
      height: 60,
      color: Colors.blue,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(60)),
      child: Text(
        "Sign in",
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
      ),
    );
  }
}
