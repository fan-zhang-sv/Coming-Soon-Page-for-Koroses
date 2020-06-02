import 'dart:core';
import 'package:flutter/material.dart';
import 'package:koroses/constants.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:countdown_flutter/countdown_flutter.dart';

class DateCountDown extends StatefulWidget {
  @override
  _DateCountDownState createState() => _DateCountDownState();
}

class _DateCountDownState extends State<DateCountDown> {
  var nowTime = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Countdown(
      duration: nowTime.difference(openingDate),
      onFinish: () {
        print('finished!');
      },
      builder: (BuildContext ctx, Duration remaining) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'koroses is coming in',
              style: GoogleFonts.shadowsIntoLight(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 56,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              '${remaining.inDays} days ${remaining.inHours - remaining.inDays * 24} hours',
              style: GoogleFonts.shadowsIntoLight(
                color: Colors.white,
                textStyle: Theme.of(context).textTheme.headline1,
                fontSize: 48,
                fontWeight: FontWeight.w700,
                fontStyle: FontStyle.normal,
              ),
            ),
          ],
        );
      },
    );
  }
}
