import 'package:mocap_app/src/features/Auth/Model/User.dart';
import 'package:mocap_app/src/features/Auth/repository/auth_repository.dart';



class AuthService {
  final AuthRepository authRepository;


  AuthService({required this.authRepository});


  Future<User> login(String email, String password) async {
    if (await authRepository.isValidCredentials(email, password)) {
      return User(id: 1, nama: 'John Doe', email: email);
    } else {
      throw Exception('Invalid credentials');
    }
  }
}
