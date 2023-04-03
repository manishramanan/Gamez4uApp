import 'package:flutter/material.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({Key? key}) : super(key: key);

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  List<Map<String, dynamic>> data = [
    {
      'leading': 'Vishal',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Hari',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'leading1': 'lbw b Sai',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },

    // add more rows as needed
  ];

  // Item of the ListView
  Widget _listItem(index) {
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
                      top: MediaQuery.of(context).size.height * 0.002),
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
    return Material(
      child: ListView.builder(
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
                        child: Text(
                          'Batting',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('R'),
                        Text('B'),
                        Text("4s"),
                        Text("6s"),
                      ],
                    ),
                    trailing: Text("SR"),
                  ),
                ),

                // The fist list item
                _listItem(index),
              ],
            );
          }
          return _listItem(index);
        },
      ),
    );
  }
}

class BowlingScreen extends StatefulWidget {
  const BowlingScreen({super.key});

  @override
  State<BowlingScreen> createState() => _BowlingScreenState();
}

class _BowlingScreenState extends State<BowlingScreen> {
  List<Map<String, dynamic>> bowlingdata = [
    {
      'leading': 'Vishal',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Hari',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },
    {
      'leading': 'Anagha',
      'title': ['9', '4', '2', '0'],
      'strike': '120',
    },

    // add more rows as needed
  ];

  Widget _listItem1(index) {
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
                      child: Text(
                        'Bowling',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('O'),
                      Text('M'),
                      Text("R"),
                      Text("W"),
                    ],
                  ),
                ),
              ),

              // The fist list item
              _listItem1(index),
            ],
          );
        }
        return _listItem1(index);
      },
    );
  }
}

class FallWickets extends StatefulWidget {
  const FallWickets({super.key});

  @override
  State<FallWickets> createState() => _FallWicketsState();
}

class _FallWicketsState extends State<FallWickets> {
  List<Map<String, dynamic>> wicketsdata = [
    {
      'leading': 'Vishal',
      'title': [
        '1-56',
        '(16.2)',
      ],
    },
    {
      'leading': 'Hari',
      'title': [
        '2-34',
        '(20.4)',
      ],
    },
    {
      'leading': 'Anagha',
      'title': [
        '3-45',
        '(30.5)',
      ],
    },
    {
      'leading': 'Anagha',
      'title': [
        '4-54',
        '(42.5)',
      ],
    },
    {
      'leading': 'Anagha',
      'title': [
        '5-65',
        '(50.5)',
      ],
    },
    {
      'leading': 'Anagha',
      'title': [
        '6-75',
        '(65.5)',
      ],
    },
    {
      'leading': 'Anagha',
      'title': [
        '7-85',
        '(70.5)',
      ],
    },

    // add more rows as needed
  ];

  Widget _listItem2(index) {
    return ListTile(
      leading: SizedBox(
        width: MediaQuery.of(context).size.width * 0.3,
        child: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.025),
            child: Column(
              children: [
                Text(
                  wicketsdata[index]['leading'],
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          for (String title in wicketsdata[index]['title']) Text(title),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: wicketsdata.length,
      itemBuilder: (_, index) {
        if (index == 0) {
          return Column(
            children: [
              // The header
              Container(
                color: Color.fromARGB(255, 214, 210, 210),
                child: ListTile(
                  leading: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.3,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Fall Of Wickets',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('Score'),
                      Text('Overs'),
                    ],
                  ),
                ),
              ),

              // The fist list item
              _listItem2(index),
            ],
          );
        }
        return _listItem2(index);
      },
    );
  }
}
