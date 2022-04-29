import 'package:cloud_firestore/cloud_firestore.dart';

CollectionReference collection =
    FirebaseFirestore.instance.collection('testCollection');

class FireBaseWidgets {
  static Future<void> addUser(String name, int age) async {
    return collection
        .add({
          'name': name, // John Doe
          'age': age // 42
        })
        .then((value) => print("User Added"))
        .catchError((error) => print("Failed to add user: $error"));
  }

  static Future<void> deleteAll() async {
    List<QueryDocumentSnapshot<Object?>> listOfQueries = await getUsers();
    for (int i = 0; i < listOfQueries.length; i++) {
      collection
          .doc(listOfQueries[i].id)
          .delete()
          .then((value) => print("User ${i} Deleted"))
          .catchError((error) => print("Failed to delete user: $error"));
    }
  }

  static Future<List<QueryDocumentSnapshot<Object?>>> getUsers() async {
    return collection.get().then((value) {
      return value.docs;
    });
  }
}
