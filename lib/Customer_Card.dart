import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  final String customerName;
  final String address;
  final String mobileNo;
  final String service;
  final String status;

  CustomerCard({
    required this.customerName,
    required this.address,
    required this.mobileNo,
    required this.service,
    required this.status,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        color: Colors.white, // Set the background color to white
        elevation: 4,
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                customerName,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                  fontSize: 24,
                  fontFamily: 'OpenSans',
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Address: $address',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Mobile No: $mobileNo',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: 'Roboto',
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Status: $status',
                style: TextStyle(
                  color: Colors.pink,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  fontFamily: 'OpenSans',
                ),
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.map, size: 32, color: Colors.blue),
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Get Directions',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.blue,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 24),
                  Column(
                    children: [
                      IconButton(
                        icon: Icon(Icons.phone, size: 32, color: Colors.green),
                        onPressed: () {
                          // Add your onPressed logic here
                        },
                      ),
                      SizedBox(height: 4),
                      Text(
                        'Call',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.green,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
