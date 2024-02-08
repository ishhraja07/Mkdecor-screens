import 'package:flutter/material.dart';
import 'package:untitled11/CategoryDropDownState.dart';
import 'package:untitled11/PhotoUploadField.dart';
import 'Screen_4.dart'; // Import Screen_4

class Screen_5 extends StatefulWidget {
  const Screen_5({Key? key});

  @override
  State<Screen_5> createState() => _Screen_5State();
}

class _Screen_5State extends State<Screen_5> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return GestureDetector( // Wrap with GestureDetector
      onTap: () {
        // Unfocus keyboard when tapped outside of text input
        FocusScope.of(context).unfocus();
      },
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
              SizedBox(width: 20),
              Text(
                "Salesman",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              )
            ],
          ),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Add Product",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(height: 20),
              CategoryDropdown(CategoryName: "Select Categories"),
              SizedBox(height: 20),
              CategoryDropdown(CategoryName: "Select Product"),
              SizedBox(height: 20),
              Container(
                width: screenWidth,
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(horizontal: 10),
                    hintText: 'Add remark',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              PhotoUploadField(),
              SizedBox(height: 20),
              Container(
                width: screenWidth,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Amount',
                    border: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                width: screenWidth,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigate to Screen_4 when save button is pressed
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Screen_4()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
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
