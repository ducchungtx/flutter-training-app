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
            )
          ],
        ),
      ),
    );
  }
}
