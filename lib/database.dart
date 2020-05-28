import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference profileCollection = Firestore.instance.collection('profiles');

  Future<void> updateUserData(String position, String name, String rank) async {
    return await profileCollection.document(uid).setData({
      'position': position,
      'name': name,
      'rank': rank,
    });
  }

  //get profiles stream
Stream<QuerySnapshot> get profiles {
    return profileCollection.snapshots();
}


}