import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mocap_app/src/features/Auth/domain/entities/user_entity.dart';
import 'package:mocap_app/src/features/Auth/domain/usecases/signin_usecase.dart';
import 'package:mocap_app/src/features/Auth/domain/usecases/signout_usecase.dart';
import 'package:mocap_app/src/features/Auth/domain/usecases/signup_usecase.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final SignupUsecase signUpUseCase;
  final SigninUsecase signInUseCase;
  final SignoutUsecase signOutUsecase;

  AuthBloc(this.signUpUseCase, this.signInUseCase, this.signOutUsecase)
    : super(AuthInitialState()) {
    on<SignInWithEmailEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result = await signInUseCase(event.email, event.password);

      result.fold(
        (failure) => emit(AuthFailureState(message: "login failed")),
        (user) => emit(AuthSuccessState(user)),
      );
    });

    on<SignInWithEmailEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result = await signUpUseCase(event.email, event.password);
      result.fold(
        (failure) => emit(AuthFailureState(message: 'Registrasi gagal')),
        (user) => emit(AuthSuccessState(user)),
      );
    });

    on<SignOutEvent>((event, emit) async {
      emit(AuthLoadingState());
      final result = await signOutUsecase();
      result.fold(
        (failure) => emit(AuthFailureState(message: 'Logout gagal')),
        (_) => emit(AuthSignedOutState()),
      );
    });
  }
}
