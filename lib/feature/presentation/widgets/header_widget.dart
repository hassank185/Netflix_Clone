import 'package:flutter/material.dart';
import 'package:netflix_clone/feature/presentation/pages/sign_in_page.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 70,
            width: 70,
            child: Image.asset("assets/n_symbol.png"),
          ),
          Row(
            children: [
              Text("PRIVACY"),
              SizedBox(width: 10),
              Text("HELP"),
              SizedBox(width: 10),
              InkWell(onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => SignInPage()));
              },child: Text("SIGN IN")),
              SizedBox(width: 10),
            ],
          )
        ],
      ),
    );
  }
}
