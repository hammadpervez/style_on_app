import 'package:firebase_auth/firebase_auth.dart';
import 'package:style_on_app/domain/repository/firebase_repo.dart';
import 'package:style_on_app/domain/services/auth_service.dart';

abstract class AuthenticaitonRepo extends FirebaseAuthRpo  implements ThirdPartyAuthRepo<ThirdPartAuthType> {
  AuthenticaitonRepo(BaseRepository data);

  Future<UserCredential> createUser(String email, String password);

  Future<UserCredential> signIn(String email, password);

  Future<void> signOut();

  findUser(String id);

  authenticationState();

  Future<bool> deleteAccount();
}

abstract class ThirdPartyAuthRepo<T> {
  signInWith(T type);
}
