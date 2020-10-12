import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../size_config.dart';
import './time_in_hour_and_minute.dart';
import 'clock.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SizedBox(
            width: double.infinity,
            child:  Column(children: [
              Text(
                "NewPort Beach, USA | PST ",
                style: Theme.of(context).textTheme.bodyText1,
              ),
              TimeInHourAndMinute(),
              Spacer(),
              Clock(),
              Spacer(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    CountryBox(
                      country: "NEW",
                      timeZone: "ewq",
                      time: "RWQ",
                      period: "PM",
                    ),
                    CountryBox(
                      country: "NEW",
                      timeZone: "ewq",
                      time: "RWQ",
                      period: "PM",
                    ),
                    CountryBox(
                      country: "NEW",
                      timeZone: "ewq",
                      time: "RWQ",
                      period: "PM",
                    ),
                    CountryBox(
                      country: "NEW",
                      timeZone: "ewq",
                      time: "RWQ",
                      period: "PM",
                    ),
                  ],
                ),
              )
            ])));
  }
}

class CountryBox extends StatelessWidget {
  const CountryBox({
    Key key,
    this.country,
    this.timeZone,
    this.iconSrc,
    this.time,
    this.period,
  }) : super(key: key);
  final String country, timeZone, iconSrc, time, period;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(223),
      child: AspectRatio(
        aspectRatio: 1,
        child: Container(
          padding: EdgeInsets.all(getProportionateScreenWidth(20)),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border:
                  Border.all(color: Theme.of(context).primaryIconTheme.color)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "new york,USA",
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontSize: getProportionateScreenWidth(16)),
              ),
              SizedBox(height: 5),
              Text('+3 HRS | EST'),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/icons/Liberty.svg",
                    width: getProportionateScreenWidth(40),
                  ),
                  Spacer(),
                  Text("9:20", style: Theme.of(context).textTheme.headline4),
                  RotatedBox(quarterTurns: 3, child: Text("AM"))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
