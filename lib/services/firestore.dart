import 'package:cloud_firestore/cloud_firestore.dart';


class FireStoreService {
  final CollectionReference products =
  FirebaseFirestore.instance.collection("produtos");

  Stream<QuerySnapshot> getProductsStream() {
    final productsStream = products.orderBy("name").snapshots();
    return productsStream;
  }

}