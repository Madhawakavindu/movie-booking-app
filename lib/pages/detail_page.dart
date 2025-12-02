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

  @override
  Widget build(BuildContext context) {
    final dates = getFormattedDates();

    return Scaffold(
      backgroundColor: Colors.black,
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
              margin: EdgeInsets.only(left: 20.0, top: 30.0),
              child: Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(30),
                child: Container(
                  padding: EdgeInsets.all(8),
                  //margin: EdgeInsets.only(left: 20.0, top: 30.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(Icons.arrow_back, color: Colors.black),
                ),
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20.0, top: 20.0, right: 10.0),
                margin: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height / 2.2,
                  left: 5.0,
                  right: 5.0,
                ),
                // height: 200,
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
                      "Avengers:Endgame",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "2019 ‧ Action/Sci-fi ‧ 3h 1m",
                      style: TextStyle(
                        color: const Color.fromARGB(174, 255, 255, 255),
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "The Avengers, shattered after Thanos wipes out half of all life, reunite with their remaining allies to restore the universe. They plan a dangerous time-travel mission to recover the Infinity Stones and undo the destruction. In a final epic battle against Thanos, they save the universe but suffer great sacrifices that change their team forever.",
                      style: TextStyle(
                        color: const Color.fromARGB(174, 255, 255, 255),
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    ListView.builder(
                      itemCount: dates.length,
                      itemBuilder: (context, index) {
                        return Container(
                          decoration: BoxDecoration(color: Color(0xffeed51e)),
                          child: Text(
                            dates[index],
                            style: TextStyle(color: Colors.white),
                          ),
                        );
                      },
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
