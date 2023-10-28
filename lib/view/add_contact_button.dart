import 'package:flutter/material.dart';
import 'screens/add_contact.dart';

class AddContactButton extends StatefulWidget {
  const AddContactButton({super.key});

  @override
  State<AddContactButton> createState() => _AddContactButtonState();
}

class _AddContactButtonState extends State<AddContactButton> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Colors.pink.shade300,
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return const AddContact();
          }),
        );
      },
      child: const Icon(Icons.add),
    );
  }
}
