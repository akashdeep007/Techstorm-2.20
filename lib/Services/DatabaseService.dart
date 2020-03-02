import 'package:firebase_database/firebase_database.dart';

// widget.eventType ,widget.eventName , email, contact, name, department, year, college);
class DatabaseService{
  final database = FirebaseDatabase.instance.reference();
  
  int registerUser(String eventType, String eventName, String email, String phone, String name, String department, String year, String college){
    
    String path = eventType + '/' + eventName + '/' + phone;
    database.reference().child(path).once().then((DataSnapshot datasnapshot) {
      print(datasnapshot.value);
      if(datasnapshot.value == null){
        database.child(eventType + '/' + eventName +'/'+phone).set({
          'email' : email,
          'name' : name,
          'phone' : phone,
          'department' : department,
          'year' : year,
          'college' : college,
        });
        return 1;
      }
      else{
        return null;
      }
    });
  return null;
  }
}
