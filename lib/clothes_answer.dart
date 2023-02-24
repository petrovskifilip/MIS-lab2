import 'package:flutter/material.dart';

class ClothesAnswer extends StatelessWidget {
  final String _choiceText;
  final Function tapped;
  ClothesAnswer(this.tapped, this._choiceText);
  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      padding: EdgeInsets.all(6),
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.green),
            textStyle: MaterialStateProperty.all(const TextStyle(
              color: Colors.red,
            ))),
        child: Text(this._choiceText),
        onPressed: () {},
      ),
    );
  }
}
