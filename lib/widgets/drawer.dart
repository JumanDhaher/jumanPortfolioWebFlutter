import 'package:flutter/material.dart';
import 'package:juman_portfolio/screens/home_page.dart';

class DrawerWidget extends StatelessWidget {
  Widget _buildListTile(
      String title, BuildContext context, Function tapHandler) {
    return ListTile(
      title: Text(
        title,
        style: TextStyle(
          color: Colors.black,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: tapHandler,
    );
  }

  @override
  Widget build(BuildContext context) {
    var _width = MediaQuery.of(context).size.width * .65;

    return Drawer(
        child: Column(
      children: [
        AppBar(
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'JUMAN',
            style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        _buildListTile('Home', context, () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomePage()));
        }),
        Divider(),
        _buildListTile('Work', context, () {
          //  Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
        }),
        Divider(),
        _buildListTile('Services', context, () {
          //  Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
        }),
        Divider(),
        _buildListTile('Contact', context, () {
          //  Navigator.of(context).pushReplacementNamed(TabsScreen.routeName);
        }),
      ],
    ));
  }
}
