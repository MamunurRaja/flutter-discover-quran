import 'package:flutter/material.dart';
import 'package:dis_qua/selectReligions.dart';
import 'package:dis_qua/selectLanguage.dart';
import 'package:dis_qua/religion.dart';
import 'package:dis_qua/language.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String name;
  String selectedReligion;
  String selectedLanguage;
  List religionList=religionListNames();
  List languageList=languageListNames();

  String getReligionName(relName){
    setState(() {
      selectedReligion=setReligion(relName);
      print(selectedReligion);
    });
  }

  String getLanguageName(lanName){
    setState(() {
      selectedLanguage=setLanguage(lanName);
      print(selectedLanguage);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.indigo,
        title: Text('Discover Quran'),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          children:<Widget> [
            Container(
                width: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Wrap(
                      children: <Widget>[
                        Image.network('https://discoverquran.com/images/logo.png')
                      ],
                    ),
                  ],
                )
            ),
            SizedBox(height: 20.0,),
            SelectReligions(religionList:religionList, getReligionName:getReligionName),
            SizedBox(height: 20.0,),
            SelectLanguage(languageList:languageList, getLanguageName:getLanguageName),
            SizedBox(height:20.0 ,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                RaisedButton(
                  textColor: Colors.white,
                  color: Colors.indigo,
                  child: Text("GO"),
                  onPressed: () {
                    setState(() {
                      print('button is clicked');
                      print(selectedReligion);
                    });
                  },
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(30.0),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
