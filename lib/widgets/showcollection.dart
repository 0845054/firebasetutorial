import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasetutorial/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebasetutorial/firebasewidgets/firebasewidgets.dart';

class ShowCollection extends StatelessWidget {
  const ShowCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: constants.BOX_WIDTH,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.red)),
        child: _list());
  }
}

Future<List<QueryDocumentSnapshot<Object?>>> listOfQueries = FireBaseWidgets.getUsers();

Column _list() {
  FutureBuilder(
    future: listOfQueries,
    builder: (BuildContext context, snapshot) {
      List<Widget> userList = [];
      
      if (snapshot.hasData) {
        List<QueryDocumentSnapshot<Object?>> temp = snapshot.data as List<QueryDocumentSnapshot<Object?>>;
        userList = [
          SizedBox(
            width: 100,
            child: Text(snapshot.data.toString()),
          )
        ];
      } else if (snapshot.hasError) {
        print('snapshot error');
      } else {
        userList = [
          const Text('Loading...')
        ];
      }
      return Column(
        children: userList,
      );
    },
  );
   return Column(); 
}

class _ListTile extends StatelessWidget {
  const _ListTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Column(
        children: [Row(), Row()],
      ),
    );
  }
}
