import 'package:croppred/Shared/header.dart';
import 'package:croppred/screens/SignupPage_Experts.dart';
import 'package:croppred/screens/SignupPage_Farmers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../Animation/FadeAnimation.dart';
import '../community/CommunityPage.dart';
import '../detection/DetectionPage.dart';
import '../recommendation/RecommendationPage.dart';
import '../Shared/progress.dart';
import './LoginPage.dart';
import 'package:firebase_auth/firebase_auth.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

final _auth = FirebaseAuth.instance;
User user;

class _HomePageState extends State<HomePage> {
  bool isAuth = false;
  bool isLoading = true;
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);

    user = _auth.currentUser;
    if (user != null) {
      setState(() {
        isAuth = true;
      });
    } else {
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  onTap(int pageIndex) {
    pageController.animateToPage(pageIndex,
        duration: Duration(milliseconds: 100), curve: Curves.bounceInOut);
  }

  @override
  Widget build(BuildContext context) {
    print(_auth);
    return isAuth ? buildHomeScreen() : buildLoginScreen();
  }

  Widget buildHomeScreen() {
    return Scaffold(
      appBar: header(context, titleText: "CropPred"),
      body: PageView(
        children: <Widget>[
          DetectionPage(),
          CommunityPage(),
          RecommendationPage(),
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      bottomNavigationBar: CupertinoTabBar(
        currentIndex: pageIndex,
        onTap: onTap,
        activeColor: Theme.of(context).primaryColor,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment), label: "Community"),
          BottomNavigationBarItem(
              icon: Icon(Icons.recommend), label: "Identification"),
        ],
      ),
    );
  }

  Widget buildLoginScreen() {
    return isLoading
        ? circularProgress()
        : Scaffold(
            body: SafeArea(
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        FadeAnimation(
                            1,
                            Text(
                              "Welcome",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.2,
                            Text(
                              "Automatic identity verification which enables you to verify your identity",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Colors.grey[700], fontSize: 15),
                            )),
                      ],
                    ),
                    FadeAnimation(
                        1.4,
                        Container(
                          height: MediaQuery.of(context).size.height / 3,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/illustration.png'))),
                        )),
                    Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.5,
                            MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()));
                              },
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.6,
                            Container(
                              padding: EdgeInsets.only(top: 3, left: 3),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  border: Border(
                                    bottom: BorderSide(color: Colors.black),
                                    top: BorderSide(color: Colors.black),
                                    left: BorderSide(color: Colors.black),
                                    right: BorderSide(color: Colors.black),
                                  )),
                              child: MaterialButton(
                                minWidth: double.infinity,
                                height: 60,
                                onPressed: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              SignupPage_Farmers()))
                                },
                                color: Colors.yellow,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                child: Text(
                                  "Sign up for Farmers",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18),
                                ),
                              ),
                            )),
                        SizedBox(
                          height: 20,
                        ),
                        FadeAnimation(
                            1.5,
                            MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            SignupPage_Experts()));
                              },
                              shape: RoundedRectangleBorder(
                                  side: BorderSide(color: Colors.black),
                                  borderRadius: BorderRadius.circular(50)),
                              child: Text(
                                "Signup for Experts",
                                style: TextStyle(
                                    fontWeight: FontWeight.w600, fontSize: 18),
                              ),
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
  }
}
