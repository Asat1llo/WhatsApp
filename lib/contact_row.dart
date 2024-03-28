import 'package:flutter/material.dart';
import 'package:lesson7/models/contact.dart';

class listitle extends StatelessWidget {
  Contact contact;
  listitle({
    super.key,
    required this.contact
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.person),
      title: Text(contact.name),
      subtitle: Text(contact.lastMsg),
      trailing: Text(contact.lastMsgTime),
    );
  }
}
