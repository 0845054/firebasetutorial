import 'package:firebasetutorial/widgets/adduserform.dart';
import 'package:firebasetutorial/widgets/deletebutton.dart';
import 'package:firebasetutorial/widgets/showcollection.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            AppTitle(),
            AddUser(),
            ShowCollection(),
            DeleteButton(),
          ],
        ),
      ),
    );
  }
}

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      child: const Text(
        'Firebase Tutorial 1',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
      ),
    );
  }
}
