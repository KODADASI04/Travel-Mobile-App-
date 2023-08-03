import 'package:flutter/material.dart';

class FlightCard extends StatelessWidget {
  const FlightCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        left: 10,
        right: 10,
      ),
      child: Card(
        color: Colors.white,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          children: [
            _flightTypeRow(),
            _flightInfoRow(),
            _flightDetailRow(),
          ],
        ),
      ),
    );
  }

  Widget _flightTypeRow() {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 3,
            vertical: 8,
          ),
          alignment: Alignment.center,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            color: Colors.red,
          ),
          width: 150,
          child: const Text(
            "Free Protection",
            style: TextStyle(
              fontSize: 14,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }

  Widget _flightInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(
            children: [
              _hourCityColumn("15:00", "CGK"),
              _flightDestinationIcon(),
              _hourCityColumn("18:00", "SIN"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: const [
                  Text(
                    "Rp 884.000",
                    style: TextStyle(
                      color: Color(0xFFFFA216),
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "/pax",
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              Row(
                children: [
                  Image.asset(
                    "assets/images/points.png",
                    scale: 2.5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    "Earn 2300 points",
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 11,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _flightDestinationIcon() {
    return Column(
      children: [
        const Text(
          "1h 50m",
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Row(
          children: [
            const Icon(
              Icons.circle,
              color: Colors.grey,
              size: 8,
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.grey,
                border: Border.symmetric(
                  vertical: BorderSide(
                    color: Colors.grey,
                    width: 30,
                  ),
                ),
              ),
              height: 0.5,
            ),
            const Icon(
              Icons.circle,
              color: Colors.grey,
              size: 8,
            ),
          ],
        ),
        const SizedBox(
          height: 3,
        ),
        const Text(
          "Direct",
          style: TextStyle(
            fontSize: 10,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }

  Widget _hourCityColumn(String hour, String cityCode) {
    return Container(
      margin: const EdgeInsets.only(
        top: 15,
      ),
      child: Column(
        children: [
          Text(
            hour,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            margin: const EdgeInsets.all(5),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: const Color(0xFFF3F3F3),
            ),
            child: Text(
              cityCode,
              style: const TextStyle(
                fontSize: 12,
                color: Color(0xFF797979),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _flightDetailRow() {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 10,
        bottom: 10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(
                "assets/images/flight_icon.png",
                scale: 2.5,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text("Batik + Scoot"),
            ],
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              "Detail",
              style: TextStyle(
                color: Color(0xFF0063A7),
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
