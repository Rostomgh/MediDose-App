import 'package:bloc/bloc.dart';
import 'package:medi_dos_app/features/Auth/data/domain/repo/ServiceAuthImpl.dart';
import 'package:medi_dos_app/features/Auth/data/model/UserModel.dart';
import 'package:meta/meta.dart';

part 'signup_event.dart';
part 'signup_state.dart';

class SignupBloc extends Bloc<SignupEvent, SignupState> {
  final AuthRepo authRepo;

  SignupBloc(this.authRepo) : super(SignupInitial()) {
    on<AuthSignup>(_onSignup);
  }

  Future<void> _onSignup(AuthSignup event, Emitter<SignupState> emit) async {
    String email = event.email;
    String password = event.password;
    String username = event.username;
    emit(SignupLoding());
    try {
      print('Attempting logup for email: $email');
      final user = await authRepo.Signup(
        username,
        email,
        password,
      );
      print('Signup successful: $user');
      emit(SignupSuccess(user: user));
    } catch (e) {
      print('Signup failllllllled: $e');
      emit(SignupError(error: e.toString()));
    }
  }
}
