import 'package:flutter/material.dart';

class ClientCard extends StatelessWidget {
  final String clientName;
  final String workStatus;
  final String orderStatus;
  final String managerName;
  final String positionName;
  // final VoidCallback onPressed;

  ClientCard({
    required this.clientName,
    required this.workStatus,
    required this.orderStatus,
    required this.managerName,
    required this.positionName,
    //required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Card(
        elevation: 4,
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Client Name: $clientName',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8),
              Text('Work Status: $workStatus'),
              SizedBox(height: 8),
              Text('Order Status: $orderStatus'),
              SizedBox(height: 8),
              Row(
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.grey[200],
                    // You can add the photo here
                    // child: Icon(Icons.person),
                  ),
                  SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Manager: $managerName',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text('Position: $positionName'),
                    ],
                  ),
                  Spacer(),
                  ElevatedButton(
                    onPressed: (){},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                    ),
                    child: Text(
                      'Contact Us',
                      style: TextStyle(color: Colors.white),
                    ),
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
