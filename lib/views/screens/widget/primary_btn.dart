import 'package:flutter/cupertino.dart';

class PrimaryBtn extends StatelessWidget {
  final String btnText;
  final Function()? onPressed;
  const PrimaryBtn({
    super.key,
    required this.btnText,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
    // disabledColor: AppColors.accent,
      onPressed: onPressed,
      child: Text(btnText),
    );
  }
}
