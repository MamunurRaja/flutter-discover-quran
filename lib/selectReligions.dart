import 'package:flutter/material.dart';

class SelectReligions extends StatefulWidget {
  final List religionList;
  final getReligionName;
  SelectReligions({Key key, this.religionList, this.getReligionName}):super(key:key);
  @override
  _SelectReligionsState createState() => _SelectReligionsState();
}

class _SelectReligionsState extends State<SelectReligions> {
  String name;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 16.0, right: 16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2.0),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: DropdownButton(
        value: name,
        dropdownColor: Colors.grey[200],
        elevation: 5,
        icon: Icon(Icons.arrow_drop_down),
        iconSize: 36.0,
        isExpanded: true,
        style: TextStyle(
          color: Colors.indigo,
          fontSize: 20.0,
        ),
        hint: Text('Select Your Religion'),
        onChanged: (newValue){
          setState(() {
            name=newValue;
            widget.getReligionName(name);
            print(name);
          });
        },
        items: widget.religionList.map((value) {
          return DropdownMenuItem(
            value: value,
            child: Center(child: Text(value)),
          );
        }).toList(),
      ),
    );
  }
}
