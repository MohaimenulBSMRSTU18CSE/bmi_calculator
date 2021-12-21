import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ExpandedContainer(
                    expandedValue: ExpandedValue(
                      icon: FontAwesomeIcons.venus,
                      textValue: 'FEMALE',
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ExpandedContainer(
                    expandedValue: ExpandedValue(
                      icon: FontAwesomeIcons.mars,
                      textValue: 'MALE',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).backgroundColor,
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
              ),
              child: ExpandedContainer(),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(child: ExpandedContainer()),
                SizedBox(
                  width: 10,
                ),
                Expanded(child: ExpandedContainer())
              ],
            ),
          ),
          Container(
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Color(0xFFDE005A)),
                onPressed: () {},
                child: Text("CALCULATED YOUR BMI")),
          )
        ],
      ),
    );
  }
}

class ExpandedContainer extends StatelessWidget {
  final Widget? expandedValue;

  const ExpandedContainer({
    this.expandedValue,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 155,
        decoration: BoxDecoration(
          color: Theme.of(context).backgroundColor,
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: expandedValue);
  }
}

class ExpandedValue extends StatelessWidget {
  final IconData icon;
  final String textValue;
  ExpandedValue({required this.icon, required this.textValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          icon,
          size: 65,
        ),
        Text(
          textValue,
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
