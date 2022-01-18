import 'package:flutter/material.dart';
import 'package:untitled3/ColorScheme.dart';
import 'TeacherPage.dart';
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homePage(),
      routes: {
        '/TeacherPage' : (context)=>TeacherPage(),
      },
    );
  }
}
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
            size: 30,
          ), onPressed: () {  },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              color: Colors.black,
              size: 30,
            ), onPressed: () {  },
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height*0.3,
            width: MediaQuery.of(context).size.width,
            child: Container(
              padding: EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Witaj", style: TextStyle(
                      fontSize: 16,
                  ),),
                  Text("Matusz", style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700
                  ),),
                  Container(
                    height: 70,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        color: Colors.white
                    ),
                    child: Row(
                      children: [
                        IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                            size: 30,
                          ), onPressed: () {  },
                        ),
                        Expanded(
                          child: TextField(
                            style: TextStyle(
                                fontSize: 18,
                            ),
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Znajdź swojego korepetytora"
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 30,)
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30),
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Nasi nauczyciele", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600
                      ),),
                    ],
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          tutorWidget("boy1", "Janusz", "Hiszpański", "150"),
                          tutorWidget("girl", "Ola", "Polski", "130"),
                          tutorWidget("boy2", "Kamil", "Angieslki", "100"),
                          tutorWidget("boy2", "Paweł", "Matematyka", "200"),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
  InkWell tutorWidget(String img, String name, String subj, String price)
  {
    return InkWell(
      onTap: openTeacherPage,
      child: Container(
        margin: EdgeInsets.only(top: 20),
        height: 130,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            color: lightBlue.withOpacity(0.5)
        ),
        child: Row(
          children: [
            Container(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(30)),
                    child: Container(
                      height: 125,
                      width: 150,
                      decoration: BoxDecoration(
                      ),
                    ),
                  ),
                  Container(
                    height: 130,
                    padding: EdgeInsets.only(left: 5, top: 5),
                    child: Stack(
                      children: [
                        Container(
                          width: 60,
                          height: 60,
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.star,
                              color: darkBlue,
                              size: 40,
                            ),
                          ),
                        ),
                        Container(
                          width: 60,
                          height: 60,
                          child: Center(
                            child: Text("5.0", style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.w700,
                                color: Colors.white
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 50,
                    child: Hero(
                      tag: img,
                      child: Container(
                        width: 100,
                        height: 130,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/images/$img.png'),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 5,),
                    Text(name, style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w700
                    ),),
                    Text('Nauka: $subj', style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: darkBlue
                    ),),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("\$$price zł/h",style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500
                          ),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
  void openTeacherPage()
  {
    Navigator.pushNamed(context, '/TeacherPage');
  }
}

