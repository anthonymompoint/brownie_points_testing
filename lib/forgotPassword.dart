import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class forgotPassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'sans-serif', fontSize: 20.0);
    final rememberField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Enter e-mail",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        )
    );

    final sendEmailButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(30.0),
      color: Colors.deepPurple,
      child: MaterialButton(
        padding:EdgeInsets.fromLTRB(10.0, 15.0, 15.0, 15.0),
        onPressed: () {
          //TODO: Validate and send email
        },
        child: Text("Send recovery e-mail",
            textAlign: TextAlign.left,
            style: style.copyWith(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16.0)),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Password'),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  rememberField,
                  SizedBox(height: 15.0),
                  sendEmailButton
                ]),
            ),
          ),
        ),
      )
    );
  }
}