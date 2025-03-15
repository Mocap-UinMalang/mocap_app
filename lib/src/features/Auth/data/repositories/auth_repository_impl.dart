import 'package:dartz/dartz.dart';
import 'package:mocap_app/src/core/error/failure.dart';
import 'package:mocap_app/src/features/Auth/data/datasources/auth_remote_datasource.dart';
import 'package:mocap_app/src/features/Auth/domain/entities/user_entity.dart';
import 'package:mocap_app/src/features/Auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl extends AuthRepository {
  final AuthRemoteDatasource datasource;
  AuthRepositoryImpl(this.datasource);
  @override
  Future<Either<Failure, UserEntity>> signInWithEmail(
    String email,
    String password,
  ) async {
    try {
      final user = await datasource.signInWithEmail(email, password);

      return Right(user);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, UserEntity>> signUpWithEmail(
    String email,
    String password,
  ) async {
    try {
      final user = await datasource.signUpWithEmail(email, password);

      return Right(user);
    } catch (e) {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await datasource.signOut();

      return Right(null);
    } catch (e) {
      return Left(ServerFailure());
    }
  }
}
