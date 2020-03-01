import 'package:firebase_database/firebase_database.dart';

// widget.eventType ,widget.eventName , email, contact, name, department, year, college);
class DatabaseService{
  final database = FirebaseDatabase.instance.reference();
  
  void registerUser(String eventType, String eventName, String email, String phone, String name, String department, String year, String college){
    database.child(eventType + '/' + eventName +'/'+phone).set({
      'email' : email,
      'name' : name,
      'phone' : phone,
      'department' : department,
      'year' : year,
      'college' : college,
    });
  }
}