import 'package:flutter/material.dart';

class ButtonCustom extends StatelessWidget {
  const ButtonCustom({super.key, this.onPressed, this.title = 'Send'});
  final Function()? onPressed;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 186,
        height: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            color: Colors.black,
            width: 2,
          ),
          boxShadow: [
            BoxShadow(
              color: Color(0xff000000),
              blurRadius: 0,
              offset: Offset(4, 4),
            ),
          ],
          color: Color(0xffcf8e55),
        ),
        child: TextButton(
            onPressed: onPressed,
            child: Text(title.toString()),
            style: TextButton.styleFrom(
                backgroundColor: Color(0xffcf8e55),
                foregroundColor: Colors.black,
                textStyle: TextStyle(fontWeight: FontWeight.bold),
                side: BorderSide(color: Colors.black, width: 1),
                fixedSize: Size(200, 44))),
      ),
    );
  }
}
