import 'package:flutter/material.dart';

class InputSection extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _InputSectionState();
  }
}

class _InputSectionState extends State<InputSection> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 340,
      height: 290,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your email',
              prefixIcon: Icon(
                Icons.email,
                color: Colors.grey,
              ),
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter your password',
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.grey,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Checkbox(
                      checkColor: Colors.white,
                      fillColor: MaterialStateProperty.all(Colors.green),
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      }),
                  Text(
                    "Remember Password",
                    style: TextStyle(
                      color: Color(0xff6B6B6B),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              Text(
                "Forgot Password",
                style: TextStyle(
                  color: Color(0xff6B6B6B),
                  fontSize: 15,
                ),
              ),
            ],
          ),
          SizedBox(
            width: 150,
            height: 50,
            child: OutlinedButton(
              onPressed: () {},
              child: Text(
                "Sign In",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              style: OutlinedButton.styleFrom(
                  foregroundColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  side: BorderSide(
                    color: Colors.green,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
