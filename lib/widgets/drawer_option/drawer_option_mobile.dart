import 'package:flutter/material.dart';

class DrawerOptionMobilePortrait extends StatelessWidget {
  final String title;
  final IconData iconData;
  final String toPage;
  const DrawerOptionMobilePortrait({
    Key key,
    this.title,
    this.iconData, this.toPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final String currRoute = ModalRoute.of(context).settings.name;
    final TextDirection currentDirection = Directionality.of(context);
    final bool isRTL = (currentDirection == TextDirection.rtl);

    return Container(
      padding: const EdgeInsets.only(left: 3),
      height: 50,
      decoration: (currRoute == toPage || currRoute == "/$title" + "s") ? BoxDecoration(
          color: (currRoute == toPage || currRoute == "/$title" + "s") ? Colors.grey.shade100 : Colors.transparent,
        border: Border(
            left:  isRTL ? BorderSide() : BorderSide(width: 5.0, color: Colors.green),
            right: isRTL ? BorderSide(width: 5.0, color: Colors.green) : BorderSide(),
        )
      ) : null,
      child: MaterialButton(
        onPressed: () => Navigator.of(context).pushReplacementNamed(toPage),
        splashColor: Colors.green.shade200,
        highlightColor: Colors.green.shade200,
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              size: 30,
              color: (currRoute == toPage || currRoute == "/$title" + "s") ? Colors.green : Colors.black,
            ),
            SizedBox(
              width: 20,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 20, color: Colors.black54),
            )
          ],
        ),
      ),
    );
  }
}

class DrawerOptionMobileLandscape extends StatefulWidget {
  final IconData iconData;

  const DrawerOptionMobileLandscape({Key key, this.iconData}) : super(key: key);

  @override
  _DrawerOptionMobileLandscapeState createState() => _DrawerOptionMobileLandscapeState();
}

class _DrawerOptionMobileLandscapeState extends State<DrawerOptionMobileLandscape> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 50,
      alignment: Alignment.center,
      child: IconButton(
        icon: Icon(widget.iconData, color: isSelected ? Colors.green : Colors.black12,),
        onPressed: (){
      },),
    );
  }
}