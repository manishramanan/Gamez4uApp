import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'Cricket_academy.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({super.key});

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final TextStyle myStyle = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 13,
    color: Colors.black,
  );
  final TextStyle myStyle1 = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 18.5,
    color: Colors.black,
  );
  final TextStyle myStyle2 = const TextStyle(
    fontFamily: 'Gilroy',
    fontWeight: FontWeight.w900,
    fontSize: 9.4,
    color: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        title: const Text("Cricket Academy2"),
        centerTitle: true,
        backgroundColor: const Color(0xFF00A4E4),
        // leading: IconButton(
        //   iconSize: 25,
        //   icon: const Icon(Icons.close), //close
        //   onPressed: () {
            // Navigator.of(context).push(MaterialPageRoute(
            //   builder: (context) => CrickAcademyPage(),
            // ));
        //   },
        // ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.check_rounded))
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.03),
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("INDIAN CRICKET ACADEMY", style: myStyle1),
                  Row(
                    children: [
                      Text("3.0 ", style: myStyle),
                      const StarRating(rating: 3),
                      Text("\t (230) \t", style: myStyle),
                      Text("CRICKET CLUB", style: myStyle),
                    ],
                  ),
                  Text(
                      "800.mi-140 13th main road, near Janatha market,Rajaji nagar-560034",
                      style: myStyle2),
                  Row(
                    children: [
                      Text("Hours : ", style: myStyle),
                      Text("9:30 to 10:30", style: myStyle),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Days : ", style: myStyle),
                      Text("Mon to Sun", style: myStyle),
                    ],
                  ),
                  Row(
                    children: [
                      Text("Phone : ", style: myStyle),
                      Text("9876543210", style: myStyle),
                    ],
                  ),
                  first2(),
                  Text(
                    "About the Academy",
                    style: myStyle1,
                  ),
                  Text(
                    "The National Cricket Academy is a cricket facility of the BCCI for the purpose of developing young cricketers who have been identified as having the potential to represent the Indian cricket team. It was established in the year 2000 and is located in Chinnaswamy Cricket Stadium, Bengaluru, Karnataka in India.",
                    style: myStyle,
                  ),
                  Text(
                    "Cricket is no less than a religion in India. From chawls to plush housing societies. From schools to offices. Cricket is an important element of Indian lives. From a father’s memories to a youngster’s role model, the names of cricketers are taken in every house here. After all, cricketers are one of the most successful sportspersons. But in a competitive environment.",
                    style: myStyle,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: const [
                          ReuseImage(
                            pic: AssetImage("images/cricket.jpg"),
                          ),
                          ReuseImage(
                            pic: AssetImage("images/basketball1.png"),
                          ),
                          ReuseImage(
                            pic: AssetImage("images/chess1.jpg"),
                          ),
                          ReuseImage(
                            pic: AssetImage("images/football.png"),
                          ),
                          ReuseImage(
                            pic: AssetImage("images/baseball.jpg"),
                          ),
                          ReuseImage(
                            pic: AssetImage("images/kabaddi.jpg"),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget first2() {
    return Positioned(
      right: MediaQuery.of(context).size.width * 0.05,
      top: MediaQuery.of(context).size.width * 0.035,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.globe,
                  size: MediaQuery.of(context).size.height * 0.025,
                  color: Color(0xFF00A4E4),
                ),
              ),
              Text("Website", style: myStyle2),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.directions,
                  color: Color(0xFF00A4E4),
                ),
              ),
              Text("Direction", style: myStyle2),
            ],
          ),
          Column(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  color: Color(0xFF00A4E4),
                ),
              ),
              Text("Enquiry", style: myStyle2),
            ],
          ),
        ],
      ),
    );
  }
}

class StarRating extends StatelessWidget {
  final double rating;

  const StarRating({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        if (index < rating.floor()) {
          return Icon(Icons.star,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        } else if (index < rating) {
          return Icon(Icons.star_half,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        } else {
          return Icon(Icons.star_border,
              color: Colors.yellow[700],
              size: MediaQuery.of(context).size.width * 0.045);
        }
      }),
    );
  }
}

class ReuseImage extends StatelessWidget {
  const ReuseImage({super.key, required this.pic});

  final AssetImage pic;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.19,
        height: MediaQuery.of(context).size.height * 0.13,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          shape: BoxShape.rectangle,
          image: DecorationImage(
            image: pic,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
