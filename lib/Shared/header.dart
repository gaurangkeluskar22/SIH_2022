import 'package:flutter/material.dart';

header(context,
    {bool isAppTitle = false, String titleText, removeback = false}) {
  return AppBar(
    title: Text(
      isAppTitle ? 'CropPred' : titleText,
      style: TextStyle(
          fontFamily: isAppTitle ? 'Signatra' : '',
          fontSize: isAppTitle ? 50 : 22,
          color: Colors.white),
    ),
    automaticallyImplyLeading: removeback ? false : true,
    centerTitle: true,
    backgroundColor: Color.fromARGB(255, 32, 153, 59),
  );
}
