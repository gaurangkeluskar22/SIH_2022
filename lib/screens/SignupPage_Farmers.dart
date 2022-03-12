import 'package:croppred/screens/LoginPage.dart';
import 'package:flutter/material.dart';
import '../Animation/FadeAnimation.dart';

class SignupPage_Farmers extends StatefulWidget {
  @override
  _SignupPage_FarmersState createState() => _SignupPage_FarmersState();
}



class _SignupPage_FarmersState extends State<SignupPage_Farmers> {
  TextEditingController signupNameController = new TextEditingController();
  TextEditingController signupmobileNumberController =
      new TextEditingController();
  TextEditingController signupEmailController = new TextEditingController();
  TextEditingController signupPasswordController = new TextEditingController();
  TextEditingController signupConfirmPasswordController =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
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
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          height: MediaQuery.of(context).size.height - 150,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1,
                      Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                      1.2,
                      Text(
                        "Create an account, It's free",
                        style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                      )),
                ],
              ),
              Column(
                children: <Widget>[
                  FadeAnimation(
                      1.1,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Name",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: signupNameController,
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  FadeAnimation(
                      1.2,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Mobile Number",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: signupmobileNumberController,
                            keyboardType: TextInputType.number,
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  FadeAnimation(
                      1.3,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Email",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: signupEmailController,
                            obscureText: false,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  FadeAnimation(
                      1.4,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Password",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: signupPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  FadeAnimation(
                      1.5,
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Confirm Password",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: Colors.black87),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          TextField(
                            controller: signupConfirmPasswordController,
                            obscureText: true,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 0, horizontal: 10),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                              border: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.grey[400])),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ],
                      )),
                  
                ],
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
                      onPressed: () {},
                      color: Colors.greenAccent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)),
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                    ),
                  )),
              FadeAnimation(
                  1.7,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Already have an account?"),
                      GestureDetector(
                          onTap: () => {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginPage()))
                              },
                          child: Text(
                            " Login",
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 18),
                          )),
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
