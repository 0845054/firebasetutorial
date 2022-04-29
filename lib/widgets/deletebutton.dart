import 'package:firebasetutorial/constants/constants.dart';
import 'package:firebasetutorial/firebasewidgets/firebasewidgets.dart';
import 'package:flutter/material.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: constants.BOX_WIDTH,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
      child:const ElevatedButton(
          onPressed: FireBaseWidgets.deleteAll, child: Text('Delete All Records')),
    );
  }
}
