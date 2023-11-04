import 'package:flutter/material.dart';
import 'package:link_aja/app/widget/appBar.dart';

class InboxPage extends StatelessWidget {
  const InboxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Inbox',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold),
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/128/4908/4908412.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 40),
              Text(
                'Comming Soon',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              ],
              ),
              ),
              Center(child: Text('Transaction is Completed!')),
            ],
          ),
          bottomNavigationBar: Navbar(),
          ),
          ),
    );
  }
}