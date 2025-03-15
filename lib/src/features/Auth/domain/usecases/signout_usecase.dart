import 'package:dartz/dartz.dart';
import 'package:mocap_app/src/core/error/failure.dart';
import 'package:mocap_app/src/features/Auth/domain/repositories/auth_repository.dart';

class SignoutUsecase {
  final AuthRepository authRepository;

  SignoutUsecase(this.authRepository);

  Future<Either<Failure, void>> call() async {
    return await authRepository.signOut();
  }
}
