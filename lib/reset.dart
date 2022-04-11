import 'package:flutter/material.dart';
import 'package:oms/login.dart';
import 'package:oms/register.dart';

class Reset extends StatefulWidget {
  const Reset({Key? key}) : super(key: key);

  @override
  _ResetState createState() => _ResetState();
}

class _ResetState extends State<Reset> {
  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    double H = _size.height;
    double W = _size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: _size.height,
              width: _size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image_1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(_size.width / 11.0,
                    _size.height / 8, _size.width / 11.0, 0.0),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, H / 4.8),
                      child: Text(
                        "RESET\n NOW",
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                    ),
                    Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          buildForm("Email", H),
                          Container(
                            margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, H / 50),
                            padding:
                                EdgeInsets.fromLTRB(W / 2.5, 0.0, 0.0, 0.0),
                            child: FlatButton(
                              onPressed: () {},
                              height: 45.0,
                              color: Colors.black,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "RESET",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Icon(
                                    Icons.refresh_sharp,
                                    color: Colors.white,
                                    size: 20.0,
                                  )
                                ],
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
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
                                          return LogIn();
                                        },
                                      ),
                                    );
                                  },
                                  child: Text("LOGIN",
                                      style: TextStyle(color: Colors.black)))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            returnAppbar(context, H, W),
          ],
        ),
      ),
    );
  }
}
