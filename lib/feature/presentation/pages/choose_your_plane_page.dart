import 'package:flutter/material.dart';
import 'package:netflix_clone/feature/presentation/pages/plans_page.dart';
import 'package:netflix_clone/feature/presentation/widgets/header_widget.dart';

class ChooseYourPlanePage extends StatefulWidget {
  const ChooseYourPlanePage({Key? key}) : super(key: key);

  @override
  State<ChooseYourPlanePage> createState() => _ChooseYourPlanePageState();
}

class _ChooseYourPlanePageState extends State<ChooseYourPlanePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          HeaderWidget(),
          _bodyWidget(),
        ],
      ),
    );
  }

  _bodyWidget() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(shape: BoxShape.circle, border: Border.all(color: Colors.red, width: 1.5)),
              child: Icon(
                Icons.done,
                size: 26,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "STEP 1 OF 3,",
              style: TextStyle(fontSize: 14, color: Colors.grey[400]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Choose you plane",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            _rowWidget(title: "No Commitments, cancel at any time"),
            SizedBox(height: 10),
            _rowWidget(title: "Everything on Netflix for one low pricing"),
            SizedBox(height: 10),
            _rowWidget(title: "Unlimited Viewing on all your device"),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => PlansPage()));
              },
              child: Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                alignment: Alignment.center,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(4))
                ),
                child: Text(
                  "SEE THE PLANS"
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget _rowWidget({String? title}) {
  return Row(
    children: [
      Icon(Icons.done, size: 25, color: Colors.red),
      SizedBox(width: 20),
      Text(
        title!,
        style: TextStyle(fontSize: 16),
      )
    ],
  );
}
