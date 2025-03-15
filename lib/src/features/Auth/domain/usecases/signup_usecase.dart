import 'package:dartz/dartz.dart';
import 'package:mocap_app/src/core/error/failure.dart';
import 'package:mocap_app/src/features/Auth/domain/entities/user_entity.dart';
import 'package:mocap_app/src/features/Auth/domain/repositories/auth_repository.dart';

class SignupUsecase {
  final AuthRepository authRepository;

  SignupUsecase(this.authRepository);

  Future<Either<Failure, UserEntity>> call(
    String email,
    String password,
  ) async {
    return await authRepository.signUpWithEmail(email, password);
  }
}
