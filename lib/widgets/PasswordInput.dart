import 'package:flutter/material.dart';

class PasswordInput extends StatefulWidget {
  @override
  _PasswordInputState createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Contraseña',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.centerLeft,
          height: 60,
          decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                    color: Colors.black12, blurRadius: 6, offset: Offset(0, 2))
              ]),
          child: TextField(
            obscureText: true,
            cursorColor: Colors.white,
            keyboardType: TextInputType.emailAddress,
            style: TextStyle(color: Colors.white),
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14),
                prefixIcon: Icon(
                  Icons.email,
                  color: Colors.white,
                ),
                hintText: "Ingresa tu contraseña.",
                hintStyle: TextStyle(color: Colors.white54)),
          ),
        ),
      ],
    );
    ;
  }
}