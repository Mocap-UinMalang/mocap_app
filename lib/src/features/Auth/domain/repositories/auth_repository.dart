import 'package:dartz/dartz.dart';
import 'package:mocap_app/src/core/error/failure.dart';
import 'package:mocap_app/src/features/Auth/domain/entities/user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> signInWithEmail(
    String email,
    String password,
  );
  Future<Either<Failure, UserEntity>> signUpWithEmail(
    String email,
    String password,
  );

  Future<Either<Failure, void>> signOut();
}
