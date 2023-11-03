import 'package:flutter/material.dart';
import 'package:link_aja/app/widget/appBar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Transaction History',
            style: TextStyle(
              color: Colors.black,
              fontFamily: 'Arial',
              fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            bottom: TabBar(indicatorColor: Color.fromARGB(255, 244, 0, 0),
            tabs: [
              Tab(
                child: Text(
                  'Pending',
                  style: TextStyle(color: Colors.black, fontFamily: 'Inter')
                ),
              ),
              Tab(
                child: Text(
                  'Done', style: TextStyle(color: Colors.black),
                ),
              ),
            ],
            ),
          ),
          body: TabBarView(
            children: [
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
              Image.network(
                'https://cdn-icons-png.flaticon.com/128/10409/10409930.png',
                width: 200,
                height: 200,
              ),
              SizedBox(height: 40),
              Text(
                'All Transaction is Complated!',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 12),
              Text(
                'Any Pending Transaction Will Appear in This Page',
                style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
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