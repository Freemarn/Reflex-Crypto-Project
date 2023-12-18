import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

Future<String> uploadFileWithLoadingDialog(
    context, File file, String path) async {
  // Show loading dialog
  showDialog(
    context: context,
    barrierDismissible: false, // prevent accidental dismissal
    builder: (context) => const Center(child: CircularProgressIndicator()),
  );

  try {
    // Reference to the file in Firebase Storage
    final storageReference = FirebaseStorage.instance.ref().child(path);

    // Upload the file
    final uploadTask = storageReference.putFile(file);

    // Listen for upload progress
    final snapshot = uploadTask.snapshot;

    // Close loading dialog
    Navigator.pop(context);

    // Return the download URL of the uploaded file
    return await snapshot.ref.getDownloadURL();
  } on FirebaseException catch (e) {
    // Handle error and remove loading dialog
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error uploading file: ${e.message}')),
    );
    return "";
  }
}
