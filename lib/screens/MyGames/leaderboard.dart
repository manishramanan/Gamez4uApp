import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LeaderPage extends StatefulWidget {
  const LeaderPage({super.key});

  @override
  State<LeaderPage> createState() => _LeaderPageState();
}

class _LeaderPageState extends State<LeaderPage> {
  @override
  Widget build(BuildContext context) {
    final TextStyle myStyle =
        TextStyle(color: Color(0xFF00A4E4), fontWeight: FontWeight.bold);
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        title: Text(
          'Leader Board',
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: height * 0.06),
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                DataTable(
                  columns: [

                    DataColumn(
                      label: Text(
                        'SL.NO',
                        style: myStyle,
                      ),
                      //  numeric: false,
                    ),
                    DataColumn(
                      label: Text(
                        'NAME',
                        style: myStyle,
                      ),
                      //  numeric: false,
                    ),
                    DataColumn(
                      label: Text(
                        'RANK',
                        style: myStyle,
                      ),
                      // numeric: false,
                    ),
                    DataColumn(
                      label: Text(
                        'TROPHIES',
                        style: myStyle,
                      ),
                      // numeric: false,
                    ),
                  ],
                  rows: [
                    DataRow(cells: [
                      DataCell(Text('1')),
                      DataCell(Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.medal,
                            color: Color.fromARGB(255, 218, 166, 10),
                          ),
                          Text('Shivam'),
                        ],
                      )),
                      DataCell(Text('3380')),
                      DataCell(Text('2145')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.medal,
                            color: Color.fromARGB(255, 135, 135, 135),
                          ),
                          Text('Hari'),
                        ],
                      )),
                      DataCell(Text('3267')),
                      DataCell(Text('1902')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('2')),
                      DataCell(Row(
                        children: [
                          Icon(
                            FontAwesomeIcons.medal,
                            color: Color.fromARGB(255, 109, 16, 9),
                          ),
                          Text(
                            'Vishal',
                          ),
                        ],
                      )),
                      DataCell(Text('3123')),
                      DataCell(Text('1890')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('4')),
                      DataCell(Text('Peter')),
                      DataCell(Text('2800')),
                      DataCell(Text('1789')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('5')),
                      DataCell(Text('Lal')),
                      DataCell(Text('2600')),
                      DataCell(Text('1678')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('6')),
                      DataCell(Text('Akshansh')),
                      DataCell(Text('2489')),
                      DataCell(Text('1567')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('7')),
                      DataCell(Text('Rangadurai')),
                      DataCell(Text('2234')),
                      DataCell(Text('1456')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('8')),
                      DataCell(Text('Vikas')),
                      DataCell(Text('2178')),
                      DataCell(Text('1356')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('9')),
                      DataCell(Text('Mohan')),
                      DataCell(Text('1800')),
                      DataCell(Text('1267')),
                    ]),
                    DataRow(cells: [
                      DataCell(Text('10')),
                      DataCell(Text('Peter')),
                      DataCell(Text('1589')),
                      DataCell(Text('1098')),
                    ]),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
