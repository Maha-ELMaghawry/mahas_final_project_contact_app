import 'package:flutter/material.dart';
import '../model/contacts.dart';

class MyAppState extends ChangeNotifier {
  final List<Contact> _contacts = [];

  List<Contact> get contacts => _contacts;

  addContact(Contact contact) {
    contacts.add(contact);
    notifyListeners();
  }

  deleteContact(int index) {
    contacts.removeAt(index);
    notifyListeners();
  }

  editContact(int index, Contact contact) {
    contacts[index].firstName = contact.firstName;
    contacts[index].lastName = contact.lastName;
    contacts[index].work = contact.work;
    contacts[index].phone = contact.phone;
    contacts[index].email = contact.email;
    contacts[index].website = contact.website;

    notifyListeners();
  }
}
