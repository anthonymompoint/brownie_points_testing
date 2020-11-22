import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextStyle style = TextStyle(fontFamily: 'sans-serif', fontSize: 20.0);


    final registerFirstField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "First Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        )
    );

    final registerLastField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Last Name",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        )
    );

    final registerUsernameField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Username",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        )
    );

    final registerPasswordField = TextField(
        obscureText: true,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "Password",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        )
    );

    final registerEmailField = TextField(
        obscureText: false,
        style: style,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
          labelText: "E-mail",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
        )
    );


    return Scaffold(
      appBar: AppBar(
        title: Text('Register page'),
      ),
      body: SingleChildScrollView(
        child: ConstrainedBox(
          constraints: BoxConstraints(),
          child: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
              child: Column(
                children: <Widget>[
                  registerFirstField,
                  SizedBox(height: 15.0),
                  registerLastField,
                  SizedBox(height: 15.0),
                  registerUsernameField,
                  SizedBox(height: 15.0),
                  registerPasswordField,
                  SizedBox(height: 15.0),
                  registerEmailField,
                  SizedBox(height: 15.0),
                  ElevatedButton(
                    child: Text('Register'),
                    onPressed: () {
                        //TODO: Implement checks for register
                      },
                    ),
                  ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}


