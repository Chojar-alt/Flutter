import 'package:flutter/material.dart';
import 'package:untitled3/ColorScheme.dart';
import 'HomePage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: {
        '/HomePage' :(context)=>HomePage(),
      },
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightBlue,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height*0.4,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('asset/images/splash.png'),
                      fit: BoxFit.contain
                  )
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("TUTAJ ZNAJDZIESZ NAJLEPSZEGO NAUCZYCIELA",style: TextStyle(
                      fontSize: 12,
                  ),),
                  Text("SZYBKO, TANIO,  BEZPIECZNIE \n ŁATWO",style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w700,
                  ),textAlign: TextAlign.center,),
                  Center(
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            width: 15,
                            color: Colors.black.withOpacity(0.1),
                          )
                      ),
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: darkBlue,
                        ),
                        child: IconButton(
                          onPressed: openHomePage,
                          icon: Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  void openHomePage()
  {
    Navigator.pushNamed(context, '/HomePage');
  }
}
