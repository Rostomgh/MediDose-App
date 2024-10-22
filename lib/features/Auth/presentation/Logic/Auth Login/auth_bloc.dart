import 'package:bloc/bloc.dart';
import 'package:medi_dos_app/features/Auth/data/domain/repo/ServiceAuthImpl.dart';
import 'package:medi_dos_app/features/Auth/data/model/UserModel.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';
part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthRepo authRepo;

  AuthBloc(this.authRepo) : super(AuthInitial()) {
    on<AuthLogin>(_onLogin);
  }

  Future<void> _onLogin(AuthLogin event, Emitter<AuthState> emit) async {
    String email = event.email;
    String password = event.password;
    emit(AuthLoading());

    try {
      print('Attempting login for email: $email');
      final user = await authRepo.login(email, password);
      print('Login successfffffful: ${user.email}');
      emit(AuthSuccess(user));
    } catch (e) {
      print('Login failed: $e');
      emit(AuthError(e.toString()));
    }
  }
}
