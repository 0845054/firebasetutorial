import 'package:firebasetutorial/widgets/adduserform.dart';
import 'package:firebasetutorial/widgets/deletebutton.dart';
import 'package:firebasetutorial/widgets/showcollection.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          AddUser(),
          ShowCollection(),
          DeleteButton(),
        ],
      ),
    );
  }
}
