import 'package:flutter/material.dart';
class SelectLanguage extends StatefulWidget {
  final List languageList;
  final getLanguageName;
  SelectLanguage({Key key, this.languageList, this.getLanguageName}):super(key:key);
  @override
  _SelectLanguageState createState() => _SelectLanguageState();
}

class _SelectLanguageState extends State<SelectLanguage> {
  String languageName;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: DropdownButton(
        value: languageName,
        dropdownColor: Colors.grey[200],
        elevation: 5,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 36.0,
        isExpanded: true,
        style: TextStyle(
          color: Colors.indigo,
          fontSize: 20.0,
        ),
        hint: Text('Select Your Language'),
        onChanged: (newValue){
          setState(() {
            languageName=newValue;
            widget.getLanguageName(languageName);
          });
        },
        items: widget.languageList.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Center(child: Text(value)),
          );
        }).toList(),
      ),
    );
  }
}
