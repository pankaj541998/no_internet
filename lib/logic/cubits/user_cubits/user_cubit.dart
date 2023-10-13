import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_one/data/repository/user_repo.dart';
import 'package:test_one/data/user/user_model.dart';
import 'package:test_one/logic/cubits/user_cubits/user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(UserInitialState());
  final UserRepository _userRepository = UserRepository();

  void signIn({required String email, required String password}) async {
    emit(UserLoadingState());
    try {
      print('login User');
      UserModel userModel =
          await _userRepository.signIn(email: email, password: password);
      emit(UserLogInState(userModel));
    } catch (e) {
      print('Not login User');
      emit(UserErrorState(e.toString()));
    }
  }

  void createAccount({required String email, required String password}) async {
    emit(UserLoadingState());
    try {
      UserModel userModal =
          await _userRepository.createAccount(email: email, password: password);
      emit(UserLogInState(userModal));
    } catch (e) {
      emit(UserErrorState(e.toString()));
    }
  }
}
