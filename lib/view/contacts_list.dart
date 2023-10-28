import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/contacts.dart';
import '../view_model/contact_info_edit_delete_buttons.dart';
import '../view_model/my_app_state.dart';

class ContactsList extends StatelessWidget {
  const ContactsList({super.key});

  @override
  Widget build(BuildContext context) {
    var myAppState = context.watch<MyAppState>();

    List<Contact> contacts = myAppState.contacts;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
          itemCount: contacts.length,
          padding: EdgeInsets.zero,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: ContactInfo(
                contact: contacts[index],
                index: index,
              ),
            );
          }),
    );
  }
}
