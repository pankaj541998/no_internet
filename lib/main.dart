// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc_internet/with_cubit/internet_cubit.dart';
import 'bloc_internet/with_cubit/screens/internet_check.dart';
import 'form_validation/sign_in/sign_screen.dart';
import 'form_validation/welcome.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InternetCubit(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: Routes.onGenerateRoute,
        // initialRoute: LogIn.pageRoute,
        home: const WelcomeScreen(),
      ),
    );
  }
}
