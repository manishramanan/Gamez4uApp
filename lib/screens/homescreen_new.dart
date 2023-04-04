import 'package:flutter/material.dart';
import 'package:games4u/screens/Responsive/responsive.dart';
import 'package:games4u/api_services/home.dart';
import 'package:games4u/shared/menu_drawer.dart';

class HomeNew extends StatefulWidget {
  const HomeNew({super.key});

  @override
  State<HomeNew> createState() => _HomeNewState();
}

class _HomeNewState extends State<HomeNew> {
  List names = [
    "Cricket",
    "Tennis",
    "Hockey",
    "Football",
    "Chess",
    "Basketball",
    "Kabaddi",
    "Baseball",
    "TableTennis"
  ];
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 30,
    fontFamily: "gilroy",
    fontWeight: FontWeight.bold,
  );
  // ignore: unused_field
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
    Text(
      'Index 3: School',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF00A4E4),
      extendBodyBehindAppBar: true,
      drawer: const Drawer(
        child: MenuDrawer(),
      ),
      
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          height: 35,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.white,
          ),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Search",
              fillColor: Colors.white,
              filled: true,
              contentPadding: const EdgeInsets.all(12),
              suffixIcon: IconButton(
                color: Colors.blue,
                onPressed: (() {}),
                icon: const Icon(Icons.search), 
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),
            ),
            style: const TextStyle(
              color: Colors.black,
              fontSize: 17,
            ),
          ),
        ),
        actions: [
          IconButton(
            alignment: Alignment.centerRight,
            color: Colors.white,
            onPressed: () {},
            icon: const Icon(
              Icons.location_on,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF00A4E4),
                Color.fromARGB(254, 254, 254, 254),
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Column(
            children: [
              Expanded(flex: 1,child: ApiSports()),
              // Expanded(
              //   flex: 1,
              //   child: ResponsiveWidget1(
              //     mobile: Gamesname(),
              //     tab: Gamesname1(),
              //   ),
              // ),
              const Text(
                'UPCOMING TOURNAMNETS',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 17,
                    color: Colors.white,
                    fontFamily: "Gilroy"),
                textAlign: TextAlign.center,
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 10),
                child:  ApiTourt(),
              ),
              // Expanded(
              //   flex: 1,
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 10),
              //     child: ResponsiveWidget(mobile: images2(), tab: images1()),
              //   ),
              // ),
              const ApiSponsers(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "ACADEMY NEAR ME",
                  style: TextStyle(
                      fontSize: 17,
                      fontFamily: "gilroy",
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
              ),
              const ExampleOne(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Container(
                  padding: const EdgeInsets.all(2),
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.035,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black87,
                        offset: Offset(0, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'CURRENT NEWS',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          fontFamily: "Gilroy"),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  "The Athletic delivers powerful stories and smart analysis that bring sports fans closer to the heart of the game.",
                  maxLines: 3,
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: "Gilroy",
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.black87,
                          offset: Offset(0, 2),
                          blurRadius: 4,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          // Image on the left
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Align(
                              alignment: Alignment.topLeft,
                              child: CircleAvatar(
                                backgroundImage:
                                    const AssetImage("images/chess1.jpg"),
                                radius:
                                    MediaQuery.of(context).size.width * 0.07,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Text(
                                  'Sai Vishal',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black,
                                    fontFamily: "gilroy",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const Spacer(),
                                const Text(
                                  'The Athletic delivers powerful stories.',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                    fontFamily: "gilroy",
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    children: [
                                      IconButton(
                                          iconSize: 22,
                                          onPressed: () {},
                                          icon:
                                              const Icon(Icons.favorite_border)),
                                      IconButton(
                                          iconSize: 20,
                                          onPressed: () {},
                                          icon: const Icon(Icons.message)),
                                      IconButton(
                                          iconSize: 20,
                                          onPressed: () {},
                                          icon: const Icon(Icons.share)),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.gamepad_outlined, color: Colors.black),
            label: 'Game',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_outlined, color: Colors.black),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message_outlined, color: Colors.black),
            label: 'Message',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: const Color(0xFF00A4E4),
        onTap: _onItemTapped,
      ),
    );
  }

  Widget gamebuilder(
      String buttonText, void Function() onPressed, String imagepath) {
    return Row(
      children: [
        TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(
              Colors.black,
            ),
          ),
          onPressed: null,
          child: Text(
            buttonText,
            style: const TextStyle(color: Colors.white),
          ),
        ),
        Image(image: AssetImage(imagepath))
      ],
    );
  }

  Widget academy(buttonText, void Function() ontap, String imagePath) {
    return GestureDetector(
      onTap: ontap,
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width / 4.5,
            height: MediaQuery.of(context).size.height * 0.16,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              shape: BoxShape.rectangle,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Text(
              buttonText,
              style: const TextStyle(
                  fontFamily: "Gilroy",
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }

  Widget images1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Expanded(
          child: CircleAvatar(
            foregroundImage: AssetImage("images/kabaddi.jpg"),
            radius: 50,
          ),
        ),
        Expanded(
          child: CircleAvatar(
            foregroundImage: AssetImage("images/basketball123.png"),
            radius: 50,
          ),
        ),
        Expanded(
          child: CircleAvatar(
            foregroundImage: AssetImage("images/hockey.jpg"),
            radius: 50,
          ),
        ),
        Expanded(
          child: CircleAvatar(
            foregroundImage: AssetImage("images/soccer.jpg"),
            radius: 50,
          ),
        ),
        Expanded(
          child: CircleAvatar(
            foregroundImage: AssetImage("images/tenns.jpg"),
            radius: 50,
          ),
        ),
        Expanded(
          child: CircleAvatar(
            foregroundImage: AssetImage("images/cricket.jpg"),
            radius: 50,
          ),
        ),
      ],
    );
  }

  Widget images2() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: const [
          CircleAvatar(
            foregroundImage: AssetImage("images/kabaddi.jpg"),
            radius: 40,
          ),
          SizedBox(width: 15),
          CircleAvatar(
            foregroundImage: AssetImage("images/basketball123.png"),
            radius: 40,
          ),
          SizedBox(width: 15),
          CircleAvatar(
            foregroundImage: AssetImage("images/hockey.jpg"),
            radius: 40,
          ),
          SizedBox(width: 15),
          CircleAvatar(
            foregroundImage: AssetImage("images/soccer.jpg"),
            radius: 40,
          ),
          SizedBox(width: 15),
          CircleAvatar(
            foregroundImage: AssetImage("images/tenns.jpg"),
            radius: 40,
          ),
          SizedBox(width: 15),
          CircleAvatar(
            foregroundImage: AssetImage("images/cricket.jpg"),
            radius: 40,
          ),
        ],
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Widget Gamesname() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: names.length,
      itemBuilder: (context, index) {
        return Row(
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
              onPressed: () {},
              child: Text(
                names[index],
                style: const TextStyle(
                    fontSize: 15,
                    fontFamily: "gilroy",
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
            ),
            const SizedBox(width: 15),
          ],
        );
      },
    );
  }

  // ignore: non_constant_identifier_names
  Widget Gamesname1() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "Cricket",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "Tennis",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "Hockey",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "Football",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "Chess",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "Basketball",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "Kabaddi",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "Baseball",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
        const SizedBox(width: 15),
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
            onPressed: () {},
            child: const Text(
              "TableTennis",
              style: TextStyle(
                  fontSize: 15,
                  fontFamily: "gilroy",
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
          ),
        ),
      ],
    );
  }
}
