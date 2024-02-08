import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:untitled11/Customer_Card.dart';

import 'Screen_4.dart';
class Screen_3 extends StatefulWidget {
  const Screen_3({Key? key}) : super(key: key);
  @override
  State<Screen_3> createState() => _Screen_3State();
}
class _Screen_3State extends State<Screen_3> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Text(
                      'S',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20,),
              Text("Salesman",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 18),)
            ],
          ),
        ),
        body: Column(
          children: [
            TabBar(
              controller: _tabController,
              tabs: [
                Tab(text: 'First'),
                Tab(text: 'In Process'),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Center(
                    child: Column(
                      children: [
                        GestureDetector(
                          onTap:(){
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Screen_4()),
                            );
            },
                            child: CustomerCard(customerName: "Sunik Reddy", address: "Plot 10", mobileNo: "12345", service: "", status: "In Process"))
                      ],
                    )
                  ),
                  Column(
                    children: [
                      CustomerCard(customerName: "Sunik Reddy", address: "Plot 10", mobileNo: "12345", service: "", status: "In Process")
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
