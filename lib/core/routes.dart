import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:test_one/views/screens/auth/create_account.dart';
import 'package:test_one/views/screens/auth/login.dart';
import 'package:test_one/views/screens/auth/providers/login_provider.dart';

class Routes {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case LogIn.pageRoute:
        return CupertinoPageRoute(
          builder: (context) => ChangeNotifierProvider(
            create: (context) => LoginProvider(context),
            child: const LogIn(),
          ),
        );
      case Registration.pageRoute:
        return CupertinoPageRoute(builder: (context) => const Registration());

      default:
        return null;
    }
  }
}
