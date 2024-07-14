import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedFilterIndex = 0;
  List<String> data = ["Healthy ", "Technology", "Finance", "Arts ", "Sports"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: ' Dogecoin to the Moon...',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
              IconButton(
                icon: Icon(Icons.search),
                color: Colors.red,
                onPressed: () {
                 
                },
              ),
              IconButton(
                icon: Icon(Icons.notifications),
                color: Colors.red,
                onPressed: () {
                  
                },
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Latest News",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      TextButton(
                        onPressed: () {
                          
                        },
                        child: Text(
                          "See All",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(Icons.arrow_forward),
                        color: Colors.blue,
                        onPressed: () {
                          
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 240.0,
              margin: EdgeInsets.symmetric(horizontal: 16.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Stack(
                children: [
                  Image.asset(
                    'assets/images/man.jpg',
                    width: double.infinity,
                    height: 240.0,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'by Ryan Browne                    ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 16),
                        Text(
                          ' Crypto investors should be prepared to lose all their money, BOE governor says',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 0,
                    right: 0,
                    child: Text(
                      '“I’m going to say this very bluntly again,” he added. “Buy them only if you’re prepared to lose all your money.”',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),

            SizedBox(height: 20),
            SizedBox(
              height: 50,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      setState(() {
                        _selectedFilterIndex = index;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(4),
                      padding: EdgeInsets.all(2),
                      width: 100,
                      decoration: BoxDecoration(
                        color: _selectedFilterIndex == index ? Colors.red[400] : Color.fromARGB(255, 223, 222, 227),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          data[index],
                          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            SizedBox(height: 20),

            // الصور
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildImageWithText('assets/images/doctor.jpg', '5 things to know about the conundrum of lupus', ' SpecMatt Villano', 'Sunday, 9 May 2021 '),
                SizedBox(height: 16),
                _buildImageWithText('assets/images/yoga.jpg', '4 ways families can ease anxiety together', 'Zain Korsgaard ', ' Sunday, 9 May 2021'),
                SizedBox(height: 16),
                _buildImageWithText('assets/images/bride.jpg', 'What to do if you are planning or attending a wedding during the pandemic', ' ', ' '),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  
  Widget _buildImageWithText(String imagePath, String mainText, String leftBottomText, String rightBottomText) {
    return Container(
      padding: EdgeInsets.all(8),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              imagePath,
              width: 500,
              height: 128,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            bottom: 8,
            left: 8,
            child: Text(
              leftBottomText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 8,
            right: 8,
            child: Text(
              rightBottomText,
              style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            top: 8,
            left: 8,
            child: Text(
              mainText,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}