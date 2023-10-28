import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/contacts.dart';
import '../view/screens/edit_contact.dart';
import 'my_app_state.dart';

class ContactInfo extends StatelessWidget {
  const ContactInfo({super.key, required this.contact, required this.index});
  final Contact contact;
  final int index;

  @override
  Widget build(BuildContext context) {
    var myAppState = context.watch<MyAppState>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.pink.shade200,
              borderRadius: BorderRadius.circular(20)),
          child: Center(
            child: Text(
              contact.firstName[0],
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
        const SizedBox(
          width: 20,
          height: 20,
        ),
        Column(
          children: [
            Text(
              contact.firstName,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            Text(contact.phone)
          ],
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return EditContact(index: index);
              }),
            );
          },
          child: const Text("Edit contact"),
        ),
        TextButton(
          onPressed: () {
            myAppState.deleteContact(index);
          },
          child: const Text("Delete contact"),
        )
      ],
    );
  }
}
