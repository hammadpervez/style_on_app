import 'package:style_on_app/domain/factory/auth_factory.dart';
import 'package:style_on_app/domain/services/auth_service.dart';
import 'package:style_on_app/exports.dart';

final productService = ChangeNotifierProvider((ref) => ProductService());

final productsSnapshot = StreamProvider((ref) {
  return ref.watch(productService).snapshot();
});

final authenticatePod = ChangeNotifierProvider((ref) {
  return AuthService(
    AuthenticationFactory.create(AuthenticationCreationType.manualAccount),
  );
});

final authStateNotifyPod = StreamProvider.autoDispose(
    (ref) => FirebaseAuth.instance.authStateChanges());

//Local Global Serivce
final localService = LocalService();
