import 'package:flutter/material.dart';
import 'colors.dart' as color;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color.AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 70, left: 30, right: 30),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Text(
                  "Training",
                  style: TextStyle(
                      fontSize: 30,
                      color: color.AppColor.homePageTitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: color.AppColor.homePageTitle,
                ),
                SizedBox(width: 10),
                Icon(Icons.calendar_today_outlined,
                    size: 20, color: color.AppColor.homePageTitle),
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_forward_ios,
                  size: 20,
                  color: color.AppColor.homePageTitle,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: <Widget>[
                Text(
                  "Your program",
                  style: TextStyle(
                      fontSize: 20,
                      color: color.AppColor.homePageSubtitle,
                      fontWeight: FontWeight.w700),
                ),
                Expanded(child: Container()),
                Text(
                  "Details",
                  style: TextStyle(
                      fontSize: 20, color: color.AppColor.homePageDetail),
                ),
                SizedBox(width: 5),
                Icon(Icons.arrow_forward,
                    size: 20, color: color.AppColor.homePageIcons),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 220,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    color.AppColor.gradientFirst.withOpacity(0.8),
                    color.AppColor.gradientSecond.withOpacity(0.9),
                  ], begin: Alignment.bottomLeft, end: Alignment.centerRight),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(80),
                  ),
                  boxShadow: [
                    BoxShadow(
                        color: color.AppColor.gradientSecond.withOpacity(0.2),
                        blurRadius: 20,
                        offset: Offset(5, 10))
                  ]),
              child: Container(
                padding: const EdgeInsets.only(top: 25, left: 20, right: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Next workout",
                        style: TextStyle(
                            fontSize: 16,
                            color: color.AppColor.homePageContainerTextSmall)),
                    SizedBox(height: 5),
                    Text("Legs Toning",
                        style: TextStyle(
                            fontSize: 25,
                            color: color.AppColor.homePageContainerTextSmall)),
                    SizedBox(height: 5),
                    Text("and Glutes Workout",
                        style: TextStyle(
                            fontSize: 25,
                            color: color.AppColor.homePageContainerTextSmall)),
                    SizedBox(height: 25),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Icon(Icons.timer,
                                size: 20,
                                color:
                                    color.AppColor.homePageContainerTextSmall),
                            SizedBox(width: 5),
                            Text("60 min",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: color
                                        .AppColor.homePageContainerTextSmall)),
                          ],
                        ),
                        Expanded(child: Container()),
                        Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              boxShadow: [
                                BoxShadow(
                                    color: color.AppColor.gradientFirst
                                        .withOpacity(0.8),
                                    blurRadius: 10,
                                    offset: Offset(4, 8))
                              ]),
                          child: Icon(Icons.play_circle_fill,
                              size: 60,
                              color: color.AppColor.homePageContainerTextSmall),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
