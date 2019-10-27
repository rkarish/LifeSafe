import 'package:flutter/material.dart';
import 'package:life_safe/strings.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.title)),
      body: SafeArea(
        child: Center(
          child: Text(
            Strings.dashboard,
          ),
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: _buildDrawer(),
        ),
      ),
    );
  }

  List<Widget> _buildDrawer() {
    return [
      Expanded(
        child: Container(
          color: Colors.grey[700],
          child: SafeArea(
            child: ListView(
              padding: EdgeInsets.only(
                top: 15.0,
                left: 25.0,
              ),
              children: _buildMenuSelections(),
            ),
          ),
        ),
      ),
      Container(
        color: Colors.grey[600],
        padding: EdgeInsets.only(
          bottom: 25.0,
          left: 25.0,
        ),
        child: Align(
          alignment: FractionalOffset.bottomLeft,
          child: Container(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                children: _buildBottomMenuSelections(),
              ),
            ),
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildMenuSelections() {
    return [
      ListTile(
        onTap: () {
          print('Dashboard pressed.\n');
        },
        title: Text(
          Strings.dashboard,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          print('Onboarding Start pressed.\n');
        },
        title: Text(
          Strings.onboardingStart,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          print('Report Bugs pressed.\n');
        },
        title: Text(
          Strings.reportBugs,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
      ExpansionTile(
        title: Text(
          Strings.uploadFile,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              top: 15.0,
              bottom: 20.0,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  print('Upload - Life Docs pressed.\n');
                },
                child: Text(
                  Strings.uploadLifeDocs,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              top: 15.0,
              bottom: 20.0,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  print('Upload - Private pressed.\n');
                },
                child: Text(
                  Strings.uploadPrivate,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      ExpansionTile(
        title: Text(
          Strings.myNotifiers,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              top: 15.0,
              bottom: 20.0,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: GestureDetector(
                onTap: () {
                  print('Add Notifier pressed.\n');
                },
                child: Text(
                  Strings.addNotifier,
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 50.0,
              top: 15.0,
              bottom: 20.0,
            ),
            child: Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: () {
                    print('My Contacts pressed.\n');
                  },
                  child: Text(
                    Strings.myContacts,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                )),
          ),
        ],
      ),
      ListTile(
        onTap: () {
          print('Log Out pressed.\n');
        },
        title: Text(
          Strings.logout,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ),
    ];
  }

  List<Widget> _buildBottomMenuSelections() {
    return [
      Divider(),
      ListTile(
        onTap: () {
          print('Email Us pressed.\n');
        },
        leading: Icon(
          Icons.email,
          color: Colors.white,
        ),
        title: Text(
          Strings.emailUs,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      ListTile(
        onTap: () {
          print('Call Us pressed.\n');
        },
        leading: Icon(
          Icons.phone,
          color: Colors.white,
        ),
        title: Text(
          Strings.callUs,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    ];
  }
}
