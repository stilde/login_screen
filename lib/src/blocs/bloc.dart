import 'dart:async';
import 'validators.dart';

class Bloc with Validators {

  final _email = StreamController<String>();
  final _password = StreamController<String>();

  //add data to stream
  Function(String) get email => _email.sink.add;
  Function(String) get password => _password.sink.add;
  

  //Retrieve data from stream and change
  Stream<String> get changeEmail => _email.stream.transform(validateEmail);
  Stream<String> get changePassword => _password.stream.transform(validatePassword);
  
}