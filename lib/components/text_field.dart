import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {

  String label;
  IconData? suffix;
  VoidCallback? visiblePassword;
  bool isPassword;
  MyTextField({Key? key,
    required this.label,
    this.suffix,
    this.isPassword = false,
    this.visiblePassword,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: TextFormField(
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: label,
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          suffixIcon: IconButton(
            onPressed: visiblePassword,
            icon: Icon(
                suffix ?? suffix,
                color: Colors.grey
            ),
          ),
        ),

      ),
    );
  }
}
