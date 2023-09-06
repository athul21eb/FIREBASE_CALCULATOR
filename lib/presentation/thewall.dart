import 'package:calculator/widget/wallpost.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Thewall extends StatefulWidget {
  const Thewall({Key? key}) : super(key: key);

  @override
  State<Thewall> createState() => _ThewallState();
}

class _ThewallState extends State<Thewall> {
  final currentuser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("History")),
      ),
      body: Center(
        child: Column(
          children: [
            //the wall
            Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("User history")
                    .orderBy("Timestamp", descending: false)
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: snapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        final post = snapshot.data!.docs[index];
                        return Wallpost(
                            output: post["Output"], input: post["Input"]);
                      },
                    );
                  } else if (snapshot.hasError) {
                    return Text("error:" + snapshot.error.toString());
                  }

                  return Center(child: CircularProgressIndicator());
                },
              ),
            ),

            //login in as

            Text(
              "loggined In As ${currentuser?.email!}",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
