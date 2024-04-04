import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Update extends StatefulWidget {
  final String documentId;
  final String email;
  final String address;
  final String phone;
  final String fname;

  const Update({
    super.key,
    required this.documentId,
    required this.email,
    required this.address,
    required this.phone,
    required this.fname
  });

  @override
  State<Update> createState() => _UpdateState();
}

class _UpdateState extends State<Update> {
  late TextEditingController _addressController;
  late TextEditingController _phoneController;
  late TextEditingController _fname;

  @override
  void initState() {
    super.initState();
    _addressController = TextEditingController(text: widget.address);
    _phoneController = TextEditingController(text: widget.phone);
    _fname=TextEditingController(text: widget.fname);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Update User Info'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Email: ${widget.email}'),
            TextField(
              controller: _addressController,
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            TextField(
              controller: _phoneController,
              decoration: const InputDecoration(labelText: 'Phone'),
            ),
            TextField(
              controller: _fname,
              decoration: const InputDecoration(labelText: 'fname'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                FirebaseFirestore.instance.collection('users').doc(widget.documentId).update({
                  'address': _addressController.text,
                  'phone': _phoneController.text,
                  'fname':_fname.text
                }).then((value) {
                  Navigator.pop(context);
                }).catchError((error) {
                  print("Failed to update user info: $error");
                });
              },
              child: const Text('Update'),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _addressController.dispose();
    _phoneController.dispose();
    super.dispose();
  }
}