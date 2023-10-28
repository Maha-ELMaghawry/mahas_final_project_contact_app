import 'package:flutter/material.dart';
import '../../view_model/add_contact_form.dart';

class AddContact extends StatelessWidget {
  const AddContact({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              title: const Text("Add new contact"),
              backgroundColor: Colors.pink.shade100,
            ),
            const Padding(
              padding: EdgeInsets.all(25),
              child: AddContactForm(),
            )
          ],
        ),
      ),
    );
  }
}
