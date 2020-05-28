import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:provider/provider.dart';

class ProfileList extends StatefulWidget {
  @override
  _ProfileListState createState() => _ProfileListState();
}

class _ProfileListState extends State<ProfileList> {
  @override
  Widget build(BuildContext context) {

    final profiles = Provider.of<QuerySnapshot>(context);
    //print(profiles.documents);
    for (var doc in profiles.documents) {
      print(doc.data);
    }

    return Container();
  }
}
