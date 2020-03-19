import 'package:bytebank/models/contact.dart';
import 'package:bytebank/screens/contact_form.dart';
import 'package:flutter/material.dart';

class ContactsList extends StatelessWidget {

  final List<Contact> contacts = List();

  @override
  Widget build(BuildContext context) {
    contacts.add(Contact(0, 'Teste', 1234));
    contacts.add(Contact(0, 'Joyce', 1235));
    contacts.add(Contact(0, 'Bla', 1335));
    return Scaffold( 
      appBar: AppBar(
        title: Text('Contacts')
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          final Contact contact = contacts[index];
          return _ContactItem(contact);
        },
        itemCount: contacts.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ContactForm(),
            ),
          ).then(
            (newContact) => debugPrint(newContact.toString()),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class _ContactItem extends StatelessWidget {

  final Contact contact;

  _ContactItem(this.contact);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(contact.name, style: TextStyle(fontSize: 24.0),),
        subtitle: Text(contact.accountNumber.toString(), style: TextStyle(fontSize: 16.0),),
      )
    );
  }
}