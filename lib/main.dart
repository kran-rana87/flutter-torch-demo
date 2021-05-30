import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '@karan',
      theme: ThemeData(
        primaryColor: Colors.grey,
      ),
      home: LoginPage(title: '@Karan'),
    );
  }
}

class LoginPage extends StatefulWidget {
  LoginPage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHidden = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(Icons.login, size: 100),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'Username',
                    focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(width: 0.3, color: Colors.black))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Stack(
                children: [
                  Visibility(
                    visible: !isHidden,
                    child: Container(
                      child: Material(
                        color: Colors.yellow.withOpacity(0.5),
                        shape: BeveledRectangleBorder(
                            side: BorderSide(color: Colors.grey, width: 0.1),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.elliptical(200, 35),
                            bottomRight: Radius.elliptical(200, 35))),
                        child: Container(
                          height: 60,
                          width: double.infinity,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    alignment: Alignment.topCenter,
                    child: TextField(
                      obscureText: isHidden,
                      decoration: InputDecoration(
                          suffixIcon: Container(
                            child: InkWell(
                              child: Image.asset('images/torch.png'),
                              onTap: () => {
                                setState(() {
                                  isHidden = !isHidden;
                                })
                              },
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(width: 0.3, color: Colors.black)),
                          hintText: 'Password'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
