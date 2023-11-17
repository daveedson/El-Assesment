import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


final authManagerProvider = Provider<AuthManger>((ref) {
  return AuthManger();
});
class AuthManger {
  User? _user;

  User? get user => _user;

void  authenticateUser(User? user) {
    _user = user;
  }
}
