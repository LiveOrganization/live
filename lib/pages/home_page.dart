import 'package:flutter/material.dart';
import 'package:live_project/resources/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: APP_THEME_COLOR,
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(
                  label: Text("Username")
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              FlagButtonWidget("Log In"),
            ],
          ),
        ),
      ),
    );
  }
}

class FlagButtonWidget extends StatelessWidget {
  String text;
  FlagButtonWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Container(
        width: 200.0,
        height: 50.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: APP_THEME_COLOR,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text(
          this.text,
          style: TextStyle(color: Colors.white, fontSize: 18.0),
        ),
      ),
    );
  }
}
