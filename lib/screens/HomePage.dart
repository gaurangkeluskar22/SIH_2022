import 'package:croppred/Shared/header.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../community/CommunityPage.dart';
import '../detection/DetectionPage.dart';
import '../recommendation/RecommendationPage.dart';
import '../Shared/progress.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isAuth = true;
  bool isLoading = false;
  PageController pageController;
  int pageIndex = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(initialPage: 0);
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
          BottomNavigationBarItem(icon: Icon(Icons.search),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.comment),label: "Community"),
          BottomNavigationBarItem(icon: Icon(Icons.recommend),label: "Identification"),
        ],
      ),
    );
  }

  Widget buildLoginScreen() {
    return isLoading
        ? circularProgress()
        : Scaffold(
            backgroundColor: Colors.white,
            body: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Center(
                    child: isAuth
                        ? CircularProgressIndicator(
                            backgroundColor: Colors.blue,
                          )
                        : Image.asset(
                            'assets/images/logo.png',
                            height: 250.0,
                          )),
                Text(
                  'CropPred',
                  style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 32.0,
                    letterSpacing: 3.0,
                    fontFamily: 'mont',
                  ),
                ),
                SizedBox(
                  height: 100.0,
                ),
                Center(
                  child: InkWell(
                    onTap: () {
                      //signInWithGoogle();
                    },
                    child: Image.asset(
                      'assets/images/google_signin_button.png',
                      height: 65.0,
                    ),
                  ),
                ),
              ],
            ));
  }
}
