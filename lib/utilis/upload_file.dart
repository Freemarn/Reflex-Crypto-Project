import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';

Future<String> uploadFileWithLoadingDialog(
    context, File fileBytes, String name) async {

  // // Show a loading dialog
  // showDialog(
  //   context: context,
  //   barrierDismissible: false,
  //   builder: (context) => const  Center(child: CircularProgressIndicator()),
  // );

  // Create a unique file path in Firebase Storage
  final ref = FirebaseStorage.instance.ref().child("${DateTime.now().millisecondsSinceEpoch}.jpg");

  // Upload the file to Firebase Storage
  final uploadTask = ref.putFile(fileBytes);

  // Listen for upload progress (optional)
  /*
  final snapshot = await uploadTask.snapshot();
  // Update UI based on upload progress
  */

  // Wait for the upload to complete
  await uploadTask;

  // Close the loading dialog
  // Navigator.pop(context);

  // Get the download URL of the uploaded image
  final downloadUrl = await ref.getDownloadURL();

  // Return the download URL of the uploaded image
  return downloadUrl;


}
