import 'package:flutter/material.dart';
import 'package:travel_mobile_app/constants/palette.dart';
import 'package:travel_mobile_app/widgets/flight_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: _appBar(),
      body: _body(),
      bottomNavigationBar: _bottomNavigationBar(),
    );
  }

  AppBar _appBar() {
    return AppBar(
      elevation: 0,
      toolbarHeight: kToolbarHeight + kToolbarHeight / 5 + 50,
      flexibleSpace: Column(
        children: [
          AppBar(
            elevation: 0,
            backgroundColor: Palette.primaryColor,
            leading: const Icon(Icons.arrow_back_ios),
            title: _appBarTitle(),
            toolbarHeight: kToolbarHeight + kToolbarHeight / 5,
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.more_horiz),
              )
            ],
          ),
          _filterBar(),
        ],
      ),
    );
  }

  Widget _filterBar() {
    return Container(
      padding: const EdgeInsets.only(left: 10),
      alignment: Alignment.centerLeft,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            filterCard("Free Protection"),
            filterCard("Free Antigen"),
          ],
        ),
      ),
    );
  }

  Widget _appBarTitle() {
    const double altTextFontSize = 10;
    const TextStyle altTextStyle = TextStyle(
      fontSize: altTextFontSize,
      color: Colors.white70,
    );

    const double titleFontSize = 16;
    const TextStyle titleStyle = TextStyle(fontSize: titleFontSize);

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Jakarta",
                style: titleStyle,
              ),
              SizedBox(
                width: 5,
              ),
              Icon(
                Icons.arrow_forward,
                size: titleFontSize,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Singapore",
                style: titleStyle,
              ),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Fri,28 May",
              style: altTextStyle,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.circle,
              size: 3,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "1 pax",
              style: altTextStyle,
            ),
            SizedBox(
              width: 5,
            ),
            Icon(
              Icons.circle,
              size: 3,
            ),
            SizedBox(
              width: 5,
            ),
            Text(
              "Economy",
              style: altTextStyle,
            ),
            SizedBox(
              width: 2,
            ),
            Icon(
              Icons.keyboard_arrow_down,
              size: altTextFontSize,
            ),
          ],
        ),
      ],
    );
  }

  Widget filterCard(String text) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: const Color(0xFFE6F0F7),
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Palette.primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 12,
        ),
      ),
    );
  }

  Widget _body() {
    return SingleChildScrollView(
      child: Column(
        children: const [
          FlightCard(),
          FlightCard(),
          FlightCard(),
          FlightCard(),
          FlightCard(),
          FlightCard(),
        ],
      ),
    );
  }

  Widget _bottomNavigationBar() {
    return Container(
      height: kBottomNavigationBarHeight + kBottomNavigationBarHeight / 5,
      decoration: const BoxDecoration(
        color: Palette.primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _bottomNavigationBarItem(
              "assets/images/filter_icon.png", "Filter", true, 0, 30),
          Image.asset(
            "assets/images/dividing_line.png",
            scale: 2,
          ),
          _bottomNavigationBarItem(
              "assets/images/sort_icon.png", "Sort", false, 30, 0),
        ],
      ),
    );
  }

  Widget _bottomNavigationBarItem(
    String image,
    String text,
    bool checkCircle,
    double rightPadding,
    double leftPadding,
  ) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10,
        bottom: 20,
        left: leftPadding,
        right: rightPadding,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            scale: 2,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          if (checkCircle)
            const Icon(
              Icons.check_circle,
              color: Colors.white,
            ),
        ],
      ),
    );
  }
}
