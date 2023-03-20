import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LivePage extends StatefulWidget {
  const LivePage({super.key});

  @override
  State<LivePage> createState() => _LivePageState();
}

class _LivePageState extends State<LivePage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 242, 240, 240),
                border: Border.all(
                    width: 0.2, color: Color.fromARGB(255, 242, 240, 240)),
              ),
              child: Padding(
                padding: EdgeInsets.only(
                  right: MediaQuery.of(context).size.width * 0.1,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left:
                                      MediaQuery.of(context).size.width * 0.06),
                              child: Text(
                                "AUSTRALIA",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontFamily: "Gilroy",
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.03),
                            Text(
                              "1st inn",
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.bold,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                                width:
                                    MediaQuery.of(context).size.width * 0.05),
                            Text(
                              "386-6 ( 134 )",
                              style: TextStyle(
                                fontSize: 19,
                                fontFamily: "Gilroy",
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "CRR",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "2.88",
                          style: TextStyle(
                              fontSize: 14,
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 0.03,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 242, 240, 240),
                      border: Border.all(width: 0.2, color: Colors.grey),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "P'SHIP : 8(18)",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                        Text(
                          "OVS LEFT : 46.0",
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Gilroy",
                            fontWeight: FontWeight.bold,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  ),
                  LiveBatting(),
                  LiveBowling(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class LiveBatting extends StatefulWidget {
  const LiveBatting({super.key});

  @override
  State<LiveBatting> createState() => _LiveBattingState();
}

class _LiveBattingState extends State<LiveBatting> {
  final TextStyle myStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black87,
      fontFamily: "Gilroy",
      fontWeight: FontWeight.bold);
  List<Map<String, dynamic>> data = [
    {
      'leading': 'Vishal *',
      'leading1': 'batting',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Hari',
      'leading1': '',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    // add more rows as needed
  ];

  // Item of the ListView
  Widget _listItem3(index) {
    return ListTile(
      leading: SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.018),
            child: Column(
              children: [
                Text(
                  data[index]['leading'],
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.bold),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: MediaQuery.of(context).size.height * 0.003,
                      right: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                    data[index]['leading1'],
                    style: TextStyle(fontSize: 11, color: Colors.grey),
                  ),
                ),
              ],
            ),
          ),
        ),
        // style: const TextStyle(fontSize: 18)),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (String title in data[index]['title']) Text(title),
        ],
      ),
      trailing: Text(data[index]['strike']),
      // style: const TextStyle(fontSize: 18, color: Colors.purple)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (_, index) {
        if (index == 0) {
          return Column(
            children: [
              // The header
              Container(
                color: Color.fromARGB(255, 214, 210, 210),
                child: ListTile(
                  leading: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Batting', style: myStyle),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'R',
                        style: myStyle,
                      ),
                      Text(
                        'B',
                        style: myStyle,
                      ),
                      Text(
                        "4s",
                        style: myStyle,
                      ),
                      Text(
                        "6s",
                        style: myStyle,
                      ),
                    ],
                  ),
                  trailing: Text(
                    "SR",
                    style: myStyle,
                  ),
                ),
              ),

              // The fist list item
              _listItem3(index),
            ],
          );
        }
        return _listItem3(index);
      },
    );
  }
}

class LiveBowling extends StatefulWidget {
  const LiveBowling({super.key});

  @override
  State<LiveBowling> createState() => _LiveBowlingState();
}

class _LiveBowlingState extends State<LiveBowling> {
  final TextStyle myStyle = const TextStyle(
      fontSize: 16,
      color: Colors.black87,
      fontFamily: "Gilroy",
      fontWeight: FontWeight.bold);
  List<Map<String, dynamic>> bowlingdata = [
    {
      'leading': 'Vishal',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },

    // add more rows as needed
  ];

  List<String> balls = ['W', '1', '2', '6', '0', '4'];

  Widget _listItem4(index) {
    return ListTile(
      leading: SizedBox(
        width: MediaQuery.of(context).size.width * 0.25,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.025),
            child: Column(
              children: [
                Text(
                  bowlingdata[index]['leading'],
                  style: TextStyle(
                      fontSize: 15,
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
        // style: const TextStyle(fontSize: 18)),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (String title in bowlingdata[index]['title']) Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: bowlingdata.length,
      itemBuilder: (_, index) {
        if (index == 0) {
          return Column(
            children: [
              // The header
              Container(
                color: Color.fromARGB(255, 214, 210, 210),
                child: ListTile(
                  leading: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.25,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Bowling', style: myStyle),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'O',
                        style: myStyle,
                      ),
                      Text(
                        'M',
                        style: myStyle,
                      ),
                      Text(
                        "R",
                        style: myStyle,
                      ),
                      Text(
                        "W",
                        style: myStyle,
                      ),
                    ],
                  ),
                ),
              ),
              // The fist list item
              _listItem4(index),
              SizedBox(
                height: 35,
                child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemCount: balls.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        //  margin: EdgeInsets.all(5),
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.cyan,
                            width: 1.3,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            balls[index],
                            style: TextStyle(
                              fontFamily: "Gilroy",
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              )
            ],
          );
        }
        return _listItem4(index);
      },
    );
  }
}
