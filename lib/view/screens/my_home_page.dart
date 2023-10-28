import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../view_model/my_app_state.dart';
import '../add_contact_button.dart';
import '../contacts_empty.dart';
import '../contacts_list.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var myAppState = context.watch<MyAppState>();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink.shade100,
        title: const Text('Contacts'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          )
        ],
      ),
      body: myAppState.contacts.isEmpty
          ? const ContactsEmpty()
          : const ContactsList(),
      floatingActionButton: const AddContactButton(),
    );
  }
}
