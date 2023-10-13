import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_one/core/ui.dart';
import 'package:test_one/logic/cubits/user_cubits/user_cubit.dart';

import 'internet_connectivity/internet_connectivity.dart';

void main() async{
WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyClassObserver();
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
          create: (context) => UserCubit(),
        )
      ],
      child: MaterialApp(
        theme: Themes.defaultTheme,
        debugShowCheckedModeBanner: false,
        // onGenerateRoute: Routes.onGenerateRoute,
        // initialRoute: LogIn.pageRoute,
        home: const InternetConnectiviy(),
      ),
    );
  }
}

class MyClassObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    print("Crated $bloc");
    super.onCreate(bloc);
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    print("Change in $bloc : $change");
    super.onChange(bloc, change);
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    print('change in transition $bloc : $transition');
    super.onTransition(bloc, transition);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print("Change in Error $bloc : $error : $stackTrace");
    super.onError(bloc, error, stackTrace);
  }
}
