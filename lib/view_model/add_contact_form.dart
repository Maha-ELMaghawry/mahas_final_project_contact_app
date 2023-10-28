import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../model/contacts.dart';
import 'my_app_state.dart';

class AddContactForm extends StatefulWidget {
  const AddContactForm({
    Key? key,
  }) : super(key: key);

  @override
  State<AddContactForm> createState() => _AddContactFormState();
}

class _AddContactFormState extends State<AddContactForm> {
  final GlobalKey<FormState> myFormKey = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? firstName, lastName, work, phone, email, website;

  @override
  Widget build(BuildContext context) {
    var myAppState = context.watch<MyAppState>();
    return Form(
      key: myFormKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'First Name'),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Last Name'),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration:
                InputDecoration(border: OutlineInputBorder(), hintText: 'Work'),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Phone number'),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Email'),
          ),
          const SizedBox(
            height: 10,
          ),
          const TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(), hintText: 'Website'),
          ),
          const SizedBox(
            height: 10,
          ),
          TextButton(
            style: TextButton.styleFrom(
                backgroundColor: Colors.pink.shade300,
                fixedSize: const Size(80, 50),
                foregroundColor: Colors.white),
            onPressed: () {
              if (myFormKey.currentState!.validate()) {
                myFormKey.currentState!.save();

                myAppState.addContact(Contact(
                    firstName!, lastName!, work!, phone!, email!, website!));
                Navigator.pop(context);
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
            child: const Text("Save"),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
