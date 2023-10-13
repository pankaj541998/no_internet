import 'package:flutter/cupertino.dart';

class LinkBtn extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  const LinkBtn({super.key, required this.text, this.onPressed });

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onPressed,
      child: Text(text,),
    );
  }
}