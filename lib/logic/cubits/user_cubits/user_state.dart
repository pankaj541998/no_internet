import 'package:test_one/data/user/user_model.dart';

abstract class UserState{}
class UserInitialState extends UserState{}
class UserLogInState extends UserState{
  final UserModel userModal;
  UserLogInState(this.userModal);
}
class UserLogOutState extends UserState{}
class UserLoadingState extends UserState{}
class UserErrorState extends UserState{
  final String message;
  UserErrorState(this.message);
}