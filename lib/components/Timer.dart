import 'package:PostureApp/components/components.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:PostureApp/constants.dart';

void main() => runApp(Timer());

class Timer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DemoApp(),
    );
  }
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  CountDownController _controller = CountDownController();
  bool _isPause = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: CircularCountDownTimer(
              width: MediaQuery.of(context).size.width / 2,
              height: MediaQuery.of(context).size.height / 2,
              duration: 180,
              fillColor: Colors.amber,
              color: Colors.white,
              controller: _controller,
              backgroundColor: Colors.white54,
              strokeWidth: 10.0,
              strokeCap: StrokeCap.round,
              isTimerTextShown: true,
              isReverse: false,
              onComplete: () {
                Alert(
                        context: context,
                        title: 'Done',
                        style: AlertStyle(
                          isCloseButton: true,
                          isButtonVisible: false,
                          titleStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                          ),
                        ),
                        type: AlertType.success)
                    .show();
              },
              textStyle: TextStyle(fontSize: 50.0, color: Colors.black),
            ),
          ),
          // floatingActionButton:

          Text(
            "WELCOME TO EDU",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: size.height * 0.05),
          // SvgPicture.asset(
          //   "assets/icons/chat.svg",
          //   height: size.height * 0.45,
          // ),
          SizedBox(height: size.height * 0.05),
          RoundedButton(
            text: (_isPause ? 'Resume' : 'Pause'),
            color: hijauMuda,
            textColor: Colors.black,
            press: () {
              setState(() {
                if (_isPause) {
                  _isPause = false;
                  _controller.resume();
                } else {
                  _isPause = true;
                  _controller.pause();
                }
              });
            },
          ),
        ],
      ),
    );
  }
}
