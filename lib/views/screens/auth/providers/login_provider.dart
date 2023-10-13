import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_one/logic/cubits/user_cubits/user_state.dart';
import 'package:test_one/logic/cubits/user_cubits/user_cubit.dart';

class LoginProvider with ChangeNotifier {
  final BuildContext context;
  LoginProvider(this.context){
    _listenToUserCubit();
  }
  bool isLoading = false;
  dynamic error = "";

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  StreamSubscription? _userSubscription;

  void _listenToUserCubit() {
    _userSubscription = BlocProvider.of<UserCubit>(context).stream.listen((userState) {
      if (userState is UserLoadingState) {
        isLoading = true;
        error = '';
        notifyListeners();
      } else if (userState is UserErrorState) {
        isLoading = false;
        error = userState.message;
        notifyListeners();
      } else {
        isLoading = false;
        error = '';
        notifyListeners();
      }
    });
  }

  void logIn() async {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();
    BlocProvider.of<UserCubit>(context)
        .signIn(email: email, password: password);
  }

  @override
  void dispose() {
    _userSubscription?.cancel();
    super.dispose();
  }
}
