import 'package:mocap_app/src/features/Auth/data/models/user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRemoteDatasource {
  final supabase = Supabase.instance.client;

  Future<UserModel> signInWithEmail(String email, String password) async {
    final response = await supabase.auth.signInWithPassword(
      email: email,
      password: password,
    );

    if (response.user == null) throw Exception("sign in failed");

    return UserModel(id: response.user!.id, email: response.user!.email!);
  }

  Future<UserModel> signUpWithEmail(String email, String password) async {
    final response = await supabase.auth.signUp(
      password: password,
      email: email,
    );

    if (response.user == null) throw Exception("sign up failed");

    return UserModel(id: response.user!.id, email: response.user!.email!);
  }

  Future<void> signOut() async {
    await supabase.auth.signOut();
  }
}
