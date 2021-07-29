import 'package:app_binmotion/src/pages/registro.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'home_page.dart';
import 'login_page.dart';

class MenuPage extends StatefulWidget {
  MenuPage({Key key}) : super(key: key);
  static String id = "menu_page";
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(
            maxHeight: MediaQuery.of(context).size.height,
            maxWidth: MediaQuery.of(context).size.height,
          ),
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.indigo,
              Colors.black87,
            ], begin: Alignment.topLeft, end: Alignment.centerRight),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 36.0, horizontal: 24.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Bienvenido",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 46.0,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "App Motion",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.w300,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                    ),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.all(1.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            'images/binmotion.png',
                            height: 120.0,
                          ),
                          _buildEmailRow(),
                          _buildPasswordRow(),
                          Divider(
                            color: Colors.white,
                            thickness: 3,
                            indent: 30,
                            endIndent: 30,
                          ),
                          _buildLoginButton(),
                          Divider(
                            color: Colors.grey,
                            thickness: 2,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Divider(
                            color: Colors.white,
                            thickness: 3,
                            indent: 30,
                            endIndent: 30,
                          ),
                          Container(
                            height:
                                1.4 * (MediaQuery.of(context).size.height / 30),
                            width: 4 * (MediaQuery.of(context).size.width / 7),
                            margin: EdgeInsets.only(bottom: 20),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.indigoAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.pushNamed(context, Registro.id);
                                });
                              },
                              child: Text(
                                "Registrarse",
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 60,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            height:
                                1.4 * (MediaQuery.of(context).size.height / 30),
                            width: 4 * (MediaQuery.of(context).size.width / 7),
                            margin: EdgeInsets.only(bottom: 20),
                            child: RaisedButton(
                              elevation: 5.0,
                              color: Colors.indigoAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30.0),
                              ),
                              onPressed: () {
                                setState(() {
                                  Navigator.pushNamed(context, HomePage.id);
                                });
                              },
                              child: Text(
                                "Ingresar como invitado",
                                style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.5,
                                  fontSize:
                                      MediaQuery.of(context).size.height / 55,
                                ),
                              ),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String usuario, password;

  Widget _buildEmailRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        onChanged: (value) {
          setState(() {
            usuario = value;
          });
        },
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.person,
              color: mainColor,
            ),
            labelText: 'Usuario'),
      ),
    );
  }

  Widget _buildPasswordRow() {
    return Padding(
      padding: EdgeInsets.all(8),
      child: TextFormField(
        keyboardType: TextInputType.text,
        obscureText: true,
        onChanged: (value) {
          setState(() {
            password = value;
          });
        },
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.lock,
            color: mainColor,
          ),
          labelText: 'Contraseña',
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 20),
          width: 4 * (MediaQuery.of(context).size.width / 5),
          margin: EdgeInsets.only(bottom: 20),
          child: RaisedButton(
            elevation: 5.0,
            color: Colors.indigo,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
            onPressed: () {
              setState(() {
                Navigator.pushNamed(context, HomePage.id);
              });
            },
            child: Text(
              "Iniciar sesión",
              style: TextStyle(
                color: Colors.white,
                letterSpacing: 1.5,
                fontSize: MediaQuery.of(context).size.height / 40,
              ),
            ),
          ),
        )
      ],
    );
  }
}
