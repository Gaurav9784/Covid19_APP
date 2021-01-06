import 'package:flutter/material.dart';

class WorldWidePanel extends StatelessWidget {
  final Map worldData;

  const WorldWidePanel({Key key, this.worldData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 2,
        ),
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        children: [
          StatusPanel(
            title: "CONFIRMED",
            count: worldData['cases'].toString(),
            textColor: Colors.red,
            panelColor: Colors.red[100],
          ),
          StatusPanel(
            title: "ACTIVE",
            count: worldData['active'].toString(),
            textColor: Colors.blue[900],
            panelColor: Colors.blue[100],
          ),
          StatusPanel(
            title: "RECOVERED",
            count: worldData['recovered'].toString(),
            textColor: Colors.green,
            panelColor: Colors.green[100],
          ),
          StatusPanel(
            title: "DEATHS",
            count: worldData['deaths'].toString(),
            textColor: Colors.grey[900],
            panelColor: Colors.grey[400],
          ),
        ],
      ),
    );
  }
}

class StatusPanel extends StatelessWidget {
  final Color panelColor;
  final Color textColor;
  final String title;
  final String count;

  const StatusPanel(
      {Key key, this.panelColor, this.textColor, this.title, this.count})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: 80,
      margin: EdgeInsets.all(10),
      width: width / 2,
      color: panelColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: textColor,
            ),
          ),
          Text(
            count,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
