import 'package:flutter/material.dart';
import 'package:lesson7/contact_row.dart';
import 'package:lesson7/models/contact.dart';

class MyApp extends StatelessWidget {
  MyApp({
    super.key,
  });

  List<Contact> contacts = [
    Contact('Eshmat1', 'Salom1', '10:10'),
    Contact('Eshmat2', 'Salom2', '10:20'),
    Contact('Eshmat3', 'Salom3', '10:30'),
    Contact('Eshmat4', 'Salom4', '10:40'),
    Contact('Eshmat5', 'Salom5', '10:50'),
    Contact('Eshmat6', 'Salom6', '10:60'),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal[700],
          foregroundColor: Colors.white,
          title: Text('WhatsApp'),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
        ),
        body: ListView.builder(
            itemCount: contacts.length,
            itemBuilder: (context, i) {
              return listitle(contact: contacts[i]);
            }),
      ),
    );
  }
}
