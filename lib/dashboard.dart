import 'package:flutter/material.dart';
import 'package:life_safe/strings.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(Strings.title)),
      body: Center(
        child: Text(
          Strings.dashboard,
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.grey[700],
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  padding: EdgeInsets.only(
                    top: 100,
                    left: 25,
                  ),
                  children: <Widget>[
                    ListTile(
                      onTap: () {
                        print('Dashboard pressed.\n');
                      },
                      title: Text(
                        Strings.dashboard,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
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
                          fontSize: 20,
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
                          fontSize: 20,
                        ),
                      ),
                    ),
                    ExpansionTile(
                      title: Text(
                        Strings.uploadFile,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            left: 50,
                            top: 15,
                            bottom: 20,
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
                            left: 50,
                            top: 15,
                            bottom: 20,
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
                          fontSize: 20,
                        ),
                      ),
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                            left: 50,
                            top: 15,
                            bottom: 20,
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
                            left: 50,
                            top: 15,
                            bottom: 20,
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
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[600],
                padding: EdgeInsets.only(bottom: 25, left: 25),
                child: Align(
                  alignment: FractionalOffset.bottomLeft,
                  child: Container(
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        children: <Widget>[
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
