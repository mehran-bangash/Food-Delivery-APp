import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseMethod {
  Future<void> adduserDetail(String id, Map<String, dynamic> userinfo) async {
    await FirebaseFirestore.instance.collection("User").doc(id).set(userinfo);
  }

  updateuserWallet(String id, String amount) async {
    await FirebaseFirestore.instance
        .collection("User")
        .doc(id)
        .update({"Wallet": amount});
  }

  Future<QuerySnapshot> getAdminDetail(String username) async {
    return await FirebaseFirestore.instance
        .collection('Admin')
        .where('username', isEqualTo: username)
        .get();
  }

  Future addFoodItem(String name, Map<String, dynamic> userinfo) async {
    await FirebaseFirestore.instance.collection(name).add(userinfo);
  }
}
