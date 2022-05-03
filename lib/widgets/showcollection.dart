import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebasetutorial/constants/constants.dart';
import 'package:flutter/material.dart';
import 'package:firebasetutorial/widgets/firebasewidgets/firebasewidgets.dart';

class ShowCollection extends StatelessWidget {
  const ShowCollection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(8.0),
        width: constants.BOX_WIDTH,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.red)),
        child: _listCollection());
  }
}

FutureBuilder _listCollection() {
  return FutureBuilder(
    future: FireBaseWidgets.getUsers(),
    builder: (BuildContext context, snapshot) {
      Widget _widget = Container();

      if (snapshot.hasData) {
        List<QueryDocumentSnapshot<Object?>> temp = snapshot.data as List<QueryDocumentSnapshot<Object?>>;
        _widget = _listBuilder(temp);
      } else if (snapshot.hasError) {
        print('snapshot error');
      } else {
        print('snapshot default');
      }
      return _widget;
    },
  );
}

class _listBuilder extends StatelessWidget {
  final List<QueryDocumentSnapshot<Object?>> _doc;
  const _listBuilder(this._doc);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: _doc.length,
        itemBuilder: (context, index) {
          return Container(
            width: 150,
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.lightBlue,
            ),
            child: Column(
              children: [
                Text('Name: ' + _doc[index].get('name')),
                Text('Age: ' + _doc[index].get('age').toString()),
              ],
            ),
          );
        });
  }
}
