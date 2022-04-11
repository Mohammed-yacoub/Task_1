import 'package:flutter/material.dart';
import 'package:oms/register.dart';
import 'package:oms/reset.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

Widget buildForm(String val, double H) {
  return Container(
    margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, H / 27.1),
    child: TextFormField(
      decoration: InputDecoration(
        labelText: val,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
        fillColor: Colors.grey[200],
        filled: true,
      ),
    ),
  );
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    double H = (MediaQuery.of(context).size.height);
    double W = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Container(
          height: (MediaQuery.of(context).size.height),
          width: (MediaQuery.of(context).size.width),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/image_1.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: W / 11.0, vertical: H / 8),
            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, H / 4.8),
                  child: Text(
                    " OMS\nLOGIN",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40.0,
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buildForm("Email", H),
                      buildForm("Password", H),
                      Container(
                        margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, H / 35),
                        child: Container(
                          padding: EdgeInsets.fromLTRB(W / 2.5, 0.0, 0.0, 0.0),
                          child: FlatButton(
                            onPressed: () {},
                            height: 45.0,
                            color: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text(
                                  "LOG IN",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15.0,
                                  ),
                                ),
                                Icon(
                                  Icons.lock,
                                  color: Colors.white,
                                  size: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Register();
                                    },
                                  ),
                                );
                              },
                              child: Text(
                                "Register",
                                style: TextStyle(color: Colors.black),
                              )),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) {
                                      return Reset();
                                    },
                                  ),
                                );
                              },
                              child: Text("Forgot password?",
                                  style: TextStyle(color: Colors.black)))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
