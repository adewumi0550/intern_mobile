import 'package:flutter/cupertino.dart';

class BigButton extends StatelessWidget {
   BigButton({Key? key, required this.buttonClick}) : super(key: key);
   final GestureTapCallback  buttonClick;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: buttonClick,

      child: Text('Big Button'),
    );
  }
}
