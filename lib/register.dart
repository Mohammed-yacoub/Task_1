import 'package:flutter/material.dart';
import 'package:oms/login.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  _RegisterState createState() => _RegisterState();
}

Widget returnAppbar(context,H, W)
{
  return Container(
    margin: EdgeInsets.fromLTRB(0.0, 7.0, 0.0, 0.0),
    height: H / 14.7,
    width: double.infinity,
    decoration: BoxDecoration(
      border: Border.all(
        color: Color.fromRGBO(1, 1, 1, 0),
        width: 0.0,
      ),
      boxShadow: const [
        BoxShadow(
          color: Color.fromRGBO(0, 0, 0, 180),
          spreadRadius: 0,
          blurRadius: 4,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: Padding(
      padding: EdgeInsets.fromLTRB(0.0, 0.0, W/1.26, 0.0),
      child: FlatButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
    ),
  );
}




class _RegisterState extends State<Register> {

  @override
  Widget build(BuildContext context) {
    double H = (MediaQuery.of(context).size.height);
    double W = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              height: H,
              width: W,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/image_1.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(W / 11.0, H / 8, W / 11.0, 0.0),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, H / 4.8),
                      child: Text(
                        "REGISTER\n     NOW",
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
                          buildForm("Username" , H),
                          buildForm("Email" , H),
                          buildForm("phone" ,H),
                          buildForm("Password" ,H),
                          Container(
                            padding:
                                EdgeInsets.fromLTRB(W / 2.5, 0.0, 0.0, 0.0),
                            child: FlatButton(
                              onPressed: () {},
                              height: 45.0,
                              color: Colors.black,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "REGISTER",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  Icon(
                                    Icons.receipt_long_outlined,
                                    color: Colors.white,
                                    size: 20.0,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
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
