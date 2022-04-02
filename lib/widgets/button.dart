import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) return Colors.green;
            return Colors.red; // Use the component's default.
          },
        ),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
            side: BorderSide(
              width: 2.0,
            ),
          ),
        ),
      ),
      child: Text('End'),
      onPressed: () {
        SystemChannels.platform.invokeMethod('SystemNavigator.pop');
      },
    );
  }
}
