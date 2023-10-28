import 'package:flutter/material.dart';

import '../../view_model/edit_contact_form.dart';

class EditContact extends StatelessWidget {
  const EditContact({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppBar(
              title: const Text("Edit contact"),
              backgroundColor: Colors.pink.shade100,
            ),
            Padding(
                padding: const EdgeInsets.all(25),
                child: EditContactForm(index: index)),
          ],
        ),
      ),
    );
  }
}
