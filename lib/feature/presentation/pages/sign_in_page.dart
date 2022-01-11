import 'package:flutter/material.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        child: Column(
          children: [
            _headerWidget(),
            SizedBox(height: 10),
            _formWidget(),
          ],
        ),
      ),
    );
  }

  Widget _headerWidget() {
    return Row(
      children: [
        InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(Icons.arrow_back),
        ),
      ],
    );
  }

  Widget _formWidget() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 80,
            child: Image.asset("assets/logo.png"),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                labelText: "Email or Phone number",
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              color: Colors.grey[800],
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: TextFormField(
              decoration: InputDecoration(
                labelStyle: TextStyle(
                  fontSize: 14,
                  color: Colors.white,
                ),
                border: InputBorder.none,
                labelText: "Password",
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(vertical: 15),
            width: double.maxFinite,
            decoration: BoxDecoration(color: Colors.red[900], border: Border.all( width: 2)),
            child: Text("Sign In"),
          ),
          SizedBox(
            height: 15,
          ),
          Text("Need Help?"),
          SizedBox(
            height: 15,
          ),
          Text(
            "New to Netflix? Sign up Now.",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Sign-in is protected by Google reCAPTCHA to ensure you're not a bot Learn more.",
            style: TextStyle(fontSize: 12),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
