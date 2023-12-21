import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';

createadService(category) async {
  await Firebase.initializeApp();
  var db = FirebaseFirestore.instance;
  db.collection('Anuncios').add({
    'name': category,
  });
}
