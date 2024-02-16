import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

// ignore: must_be_immutable
class AddPage extends StatelessWidget {
   AddPage({super.key});

  String first = '';
  String last = '';
  int? year;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
            decoration: const InputDecoration(
              hintText: 'First Nmae',
            ),
            onChanged: (text) {
                first = text;
            }
            ),
            TextField(
            decoration: const InputDecoration(
              hintText: 'Last Nmae',
            ),
            onChanged: (text) {
                last = text;
            }
            ),
            TextField(
              decoration: const InputDecoration(
                hintText: 'age',
              ),
              keyboardType: TextInputType.number,
              onChanged: (text) {
                year = int.tryParse(text);
              },
            ),
            ElevatedButton(
              onPressed: ()async{
              await _addToFirebase();
              // ignore: use_build_context_synchronously
              Navigator.pop(context);
            }, 
            child: const Text('追加する')),
          ],
        ),
      ),
    );
  }

    Future _addToFirebase() async {
   final db = FirebaseFirestore.instance;

    final user = <String, dynamic>{
      "first": first,
      "last": last,
      "born": year
    };

  await db.collection("users").add(user);
  }
}