import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/feature/domain/entities/on_boarding_entity.dart';
import 'package:netflix_clone/feature/presentation/pages/choose_your_plane_page.dart';
import 'package:netflix_clone/feature/presentation/widgets/header_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final _onBoardingData = OnBoardingEntity.onBoardingData;
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _pageViewBuilderWidget(),
          _columnWidget(),
          HeaderWidget(),
        ],
      ),
    );
  }

  _pageViewBuilderWidget() {
    return PageView.builder(
      itemCount: _onBoardingData.length,
      onPageChanged: (index) {
        setState(() {
          _currentPageIndex = index;
        });
      },
      itemBuilder: (ctx, index) {
        return Stack(
          fit: StackFit.passthrough,
          children: [
            index == 3
                ? Container(
                    height: double.infinity,
                    child: Image.asset(
                      _onBoardingData[index].image!,
                      fit: BoxFit.cover,
                    ),
                  )
                : Container(
                    child: Image.asset(_onBoardingData[index].image!),
                  ),
            index == 3
                ? Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.black.withOpacity(.5),
                        Colors.black.withOpacity(.1),
                        Colors.black.withOpacity(.9),
                      ], tileMode: TileMode.clamp, begin: Alignment(0.9, 0.0), end: Alignment(0.8, 0.4)),
                    ),
                  )
                : Container(),
            Container(
              margin: EdgeInsets.only(top: 230, left: 40, right: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _onBoardingData[index].heading!,
                    style: TextStyle(fontSize: 22),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 20),
                  Text(
                    _onBoardingData[index].description!,
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Widget _columnWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: _onBoardingData.map((data) {
                  //get index
                  int index = _onBoardingData.indexOf(data);
                  return Container(
                    height: 10,
                    width: 10,
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: index==_currentPageIndex?Colors.red:Colors.grey,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                  );
                }).toList(),
              ),
            ),
            SizedBox(height: 20),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (_) => ChooseYourPlanePage()));
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 12),
                margin: EdgeInsets.only(bottom: 10,right: 15,left: 15),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Text("GET STARTED"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
