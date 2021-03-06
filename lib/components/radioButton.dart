/// Custom radio button input used for selecting the level of expertise in skills

import 'package:arezue/utils/colors.dart';
import 'package:flutter/material.dart';

class RadioWidget extends StatefulWidget {
  RadioWidget({this.numExpertise, this.handler});

  final Function handler;
  final int numExpertise;
  @override
  RadioWidgetState createState() =>
      RadioWidgetState(numExpertise: this.numExpertise, handler: this.handler);
}

class RadioWidgetState extends State<RadioWidget> {
  RadioWidgetState({this.numExpertise, this.handler});

  int selectedRadioTile;
  Function handler;
  int numExpertise;

  @override
  void initState() {
    super.initState();
    if (numExpertise == null) {
      selectedRadioTile = 5;
    } else {
      selectedRadioTile = numExpertise;
    }
  }

  setSelectedRadioTile(int val) {
    setState(() {
      selectedRadioTile = val;
      handler(val, "expertise");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
      margin: const EdgeInsets.only(right: 50, left: 50, bottom: 20, top: 0),
      //height: 200,
      decoration: BoxDecoration(
          color: ArezueColors.primaryColor,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: ArezueColors.shadowColor,
              blurRadius: 10.0,
              spreadRadius: 5.0,
              offset: Offset(
                0.0,
                0.0,
              ),
            ),
          ]),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          RadioListTile(
            value: 5,
            groupValue: selectedRadioTile,
            title: Text("Beginner"),
            onChanged: (val) {
              setSelectedRadioTile(val);
            },
            activeColor: Colors.green,
            selected: selectedRadioTile == 5,
          ),
          RadioListTile(
            value: 3,
            groupValue: selectedRadioTile,
            title: Text("Intermediate"),
            onChanged: (val) {
              setSelectedRadioTile(val);
              //submitHandler(val);
            },
            activeColor: Colors.green,
            selected: selectedRadioTile == 3,
          ),
          RadioListTile(
            value: 1,
            groupValue: selectedRadioTile,
            title: Text("Expert"),
            onChanged: (val) {
              setSelectedRadioTile(val);
              //submitHandler(val);
            },
            activeColor: Colors.green,
            selected: selectedRadioTile == 1,
          ),
        ],
      ),
    );
  }
}
