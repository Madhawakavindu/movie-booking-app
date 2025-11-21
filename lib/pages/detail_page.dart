import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  List<String> getFormattedDates() {
    final now = DateTime.now();
    final formatter = DateFormat('EEE d');
    return List.generate(7, (index) {
      final date = now.add(Duration(days: index));
      return formatter.format(date);
    });
  }

  int track = 0;

  @override
  Widget build(BuildContext context) {
    final dates = getFormattedDates();
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "images/trnding/aveng.png",
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.only(left: 20.0, top: 30.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Icon(Icons.arrow_back, color: Colors.black),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20.0, top: 20.0),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.3,
                  // left: 7.0,
                  //right: 7.0,
                ),

                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Color(0xff1e232c),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Avengers Endgame",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Action / Sci-fi",
                      style: TextStyle(
                        color: const Color.fromARGB(189, 255, 255, 255),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Text(
                      "After Thanos wipes out half of all life, the universe falls into ruin. The remaining Avengers reunite with their allies to reverse his actions, restore balance, and face the ultimate battle—one that demands teamwork, sacrifice, and courage.",
                      style: TextStyle(
                        color: const Color.fromARGB(189, 255, 255, 255),
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      height: 60,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: dates.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              track = index;
                              setState(() {});
                            },
                            child: Container(
                              width: 100,
                              margin: EdgeInsets.only(right: 20.0),
                              decoration: BoxDecoration(
                                color: Color(0xffeed51e),
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: track == index
                                      ? Colors.white
                                      : Colors.black,
                                  width: 5.0,
                                ),
                              ),
                              child: Center(
                                child: Text(
                                  dates[index],
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 30.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffeed51e),
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "08:00 PM",
                            style: TextStyle(
                              color: const Color.fromARGB(189, 255, 255, 255),
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffeed51e),
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "10:00 PM",
                            style: TextStyle(
                              color: const Color.fromARGB(189, 255, 255, 255),
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(0xffeed51e),
                              width: 3.0,
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            "06:00 PM",
                            style: TextStyle(
                              color: const Color.fromARGB(189, 255, 255, 255),
                              fontSize: 22.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
