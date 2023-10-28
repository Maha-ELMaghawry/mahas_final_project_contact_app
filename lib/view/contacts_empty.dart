import 'package:flutter/material.dart';

class ContactsEmpty extends StatelessWidget {
  const ContactsEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 150,
          ),
          Icon(
            Icons.list,
            size: 100,
          ),
          Text("Your contact list is empty !"),
        ],
      ),
    );
  }
}
