import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  List<String> catNames = [
    "Kepegawaian",
    "Akademik",
    'Classes',
    'Free Course',
    'BookStore',
    'Live Course',
    'LeaderBoard',
  ];

  List<Color> catColors = [
    Color(0xFF674AEF), // Kepegawaian color
    Color(0xFFFFCF2F),
    Color(0xFF6FE08D),
    Color(0xFF61BDFD),
    Color(0xFFFC7F7F),
    Color(0xFFCB84FB),
    Color(0xFF78E667),
  ];

  List<List<Icon>> catIcons = [
    // Kepegawaian icons
    [
      Icon(Icons.dashboard, size: 30, color: Colors.white),
      Icon(Icons.category, size: 30, color: Colors.white),
      Icon(Icons.video_library, size: 30, color: Colors.white),
      Icon(Icons.assignment, size: 30, color: Colors.white),
      Icon(Icons.store, size: 30, color: Colors.white),
      Icon(Icons.play_circle_fill, size: 30, color: Colors.white),
    ],
    // Category icons
    [
      Icon(Icons.category, size: 30, color: Colors.white),
      Icon(Icons.video_library, size: 30, color: Colors.white),
      Icon(Icons.assignment, size: 30, color: Colors.white),
      Icon(Icons.store, size: 30, color: Colors.white),
      Icon(Icons.play_circle_fill, size: 30, color: Colors.white),
      Icon(Icons.emoji_events, size: 30, color: Colors.white),
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(top: 15, left: 15, right: 15, bottom: 10),
            decoration: BoxDecoration(
              color: catColors[0], // Kepegawaian color
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.dashboard, size: 30, color: Colors.white),
                    Icon(Icons.notifications, size: 30, color: Colors.white),
                  ],
                ),
                SizedBox(height: 20),
                Padding(
                  padding: EdgeInsets.only(left: 3, bottom: 15),
                  child: Text(
                    "My UMKT",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 1,
                      wordSpacing: 2,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 5, bottom: 20),
                  width: MediaQuery.of(context).size.width,
                  height: 55,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Pencarian...",
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                      ),
                      prefixIcon: Icon(
                        Icons.search,
                        size: 25,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          for (int i = 0; i < 2; i++) buildCategorySection(i),
        ],
      ),
    );
  }

  Widget buildCategorySection(int index) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              catNames[index],
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 20, left: 15, right: 15),
          child: GridView.builder(
            itemCount: catIcons[index].length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.1,
            ),
            itemBuilder: (context, i) {
              return Column(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: catColors[index], // Use index here
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: catIcons[index][i],
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    catNames[index], // Use index here
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }
}
