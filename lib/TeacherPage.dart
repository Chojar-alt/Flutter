import 'package:flutter/material.dart';
import 'package:untitled3/ColorScheme.dart';

class TeacherPage extends StatefulWidget {
  @override
  _TeacherPageState createState() => _TeacherPageState();
}

class _TeacherPageState extends State<TeacherPage> {
  TextEditingController _textFieldController = TextEditingController();

  _displayDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Wiadomość'),
            content: TextField(
              controller: _textFieldController,
              textInputAction: TextInputAction.go,
              keyboardType: TextInputType.numberWithOptions(),
              decoration: InputDecoration(hintText: "Zostaw wiadomość dla nauczyciela"),
            ),
            actions: <Widget>[
              new FlatButton(
                child: new Text('Wyślij'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7f4f5),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 200,
                height: 260,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Container(
                        width: 200,
                        height: 240,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('asset/images/iconBg.png'),
                                fit: BoxFit.contain
                            )
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      left: 20,
                      child: Hero(
                        tag: "boy1Big",
                        child: Container(
                          height: 220,
                          width: 200,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/images/boy1Big.png')
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
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Janusz", style: TextStyle(
                          fontSize: 21,
                          fontWeight: FontWeight.w700,
                      ),),
                      SizedBox(height: 5,),
                      Text("Nauczyciel hiszpańskiego", style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: darkBlue,
                      ),),
                      SizedBox(height: 15,),
                      Row(
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            child: RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.star,
                                color: darkBlue,
                              ),
                            ),
                          ),
                          SizedBox(width: 5,),
                          Text("4.9 Ocena", style: TextStyle(
                          ),)
                        ],
                      ),
                      SizedBox(height: 10,),
                      
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            child: Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                padding: EdgeInsets.all(30),
                color: Colors.white,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("O mnie", style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 17,
                      ),),
                      SizedBox(height: 10,),
                      Text(
                        "Od 10 lat zajmuję się nauką hiszpańskiego, moje skuteczne metody edukacji (pasek i drewniana linijka) sprawią, że dziecko bez problemu zaliczy każdy sprawdzian.",
                        style: TextStyle(
                          fontSize: 15,
                        ),),
                    ],
                  ),
                )
            ),
          ),
          Container(
              child: Center(
                child: RaisedButton(
                  child: Text('Poproś o kontakt',style: TextStyle(color: Colors.blue,
                      fontFamily: 'circe',
                      fontWeight: FontWeight.w700,
                      fontSize: 18),),
                  onPressed: () => _displayDialog(context),
                ),
              ),
            ),
        ],
      ),
    );
  }
}


