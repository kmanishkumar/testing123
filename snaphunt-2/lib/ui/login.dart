import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:snaphunt/router.gr.dart';
import 'package:snaphunt/services/auth.dart';
import 'package:snaphunt/widgets/animations/logo_animations.dart';
import 'package:snaphunt/widgets/common/fancy_button.dart';

import '../widgets/common/wave.dart';

class Login extends StatefulWidget {
  const Login({
    Key key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class LoginFancyButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback onPressed;

  const LoginFancyButton({
    Key key,
    this.text,
    this.color,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FancyButton(
      size: 70,
      color: color,
      onPressed: onPressed,
      child: SizedBox(
        width: 200,
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}

class _LoginState extends State<Login> {
  Future _loginFuture;

  void _onLoginWithGooglePressed() {
    setState(() {
      _loginFuture = Auth.of(context).loginWithGoogle();
    });
  }

  void _onHowToPlay() {
    ExtendedNavigator.of(context).push(Routes.howToPlay);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox.expand(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Image.asset('assets/top.png', scale: 1),
            AnimateScaleItem(
              delay: 750,
              duration: 400,
              child: Image.asset('assets/main.png', height: 185),
            ),
            FutureBuilder(
              future: _loginFuture,
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                return Padding(
                  padding: const EdgeInsets.symmetric(),
                  child: Column(
                    children: <Widget>[
                      AnimateScaleItem(
                        delay: 750,
                        duration: 600,
                        child: LoginFancyButton(
                          text: 'Login with Google',
                          color: const Color(0xffFF951A),
                          onPressed: _onLoginWithGooglePressed,
                        ),
                      ),
                      const SizedBox(height: 18.0),
                      AnimateScaleItem(
                        delay: 750,
                        duration: 800,
                        child: LoginFancyButton(
                          text: 'How to Play',
                          color: Colors.blue,
                          onPressed: _onHowToPlay,
                        ),
                      ),
                      if (snapshot.hasError)
                        Container(
                          width: double.infinity,
                          margin: const EdgeInsets.symmetric(vertical: 16.0),
                          padding: const EdgeInsets.all(12.0),
                          decoration: BoxDecoration(
                            border:
                                Border.all(color: Theme.of(context).errorColor),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(2.0)),
                            color:
                                Theme.of(context).errorColor.withOpacity(0.6),
                          ),
                          child: Text(
                            snapshot.error.toString(),
                            style: TextStyle(
                              color: Colors.white,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                    ],
                  ),
                );
              },
            ),
            Container(
                alignment: Alignment.bottomCenter,
                child: Column(children: <Widget>[
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    child: Text("Flutter PH Hackathon Entry",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold)),
                  ),
                  CustomWaveWidget(),
                ])),
          ],
        )),
      ),
    );
  }
}
