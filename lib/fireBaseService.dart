import 'package:cloud_firestore/cloud_firestore.dart';



class FireModel {
  String? motto;
  Timestamp? date;
  DocumentReference? reference;

  FireModel({
    this.motto,
    this.date,
    this.reference
  });
  FireModel.fromJson(dynamic json, this.reference){
    motto = json["motto"];
    date = json["date"];
  }
  FireModel.fromSnapShot (DocumentSnapshot<Map<String, dynamic>>snapshot) : this.fromJson(snapshot.data(), snapshot.reference);

  FireModel.fromQuerySnapshot(
      QueryDocumentSnapshot<Map<String, dynamic>> snapshot
      ) : this.fromJson(snapshot.data(), snapshot.reference);


  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map["motto"] = motto;
    map["date"] = date;
    return map;
  }
}


class FireService {
  static final FireService _fireService = FireService._internal();
  factory FireService() => _fireService;
  FireService._internal();

  Future createMemo(Map<String, dynamic> json) async{
    await FirebaseFirestore.instance.collection("memo").add(json);
  }
}