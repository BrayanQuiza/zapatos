import 'package:diseno/colors.dart';
import 'package:flutter/material.dart';

class paymentConfirmScreen extends StatefulWidget {
  const paymentConfirmScreen({super.key});

  @override
  State<paymentConfirmScreen> createState() => _paymentConfirmScreenState();
}

class _paymentConfirmScreenState extends State<paymentConfirmScreen> {

  int _type = 1;
  void _handlenRadio(Object? e) => setState(() {
    _type = e as int;
  });

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_outlined,
         color: Colors.black,
         ),
         title: Text("Confirm order", style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
          color: Colors.black
         ),),
      ),
      body: SafeArea(
        child: Padding(
        padding: EdgeInsets.all(30),
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              Container(
                width: size.width,
                height: 5,
                decoration: BoxDecoration(
                  border: _type == 1 ? Border.all(width: 1, color: Colors.black) : Border.all(width: 0.3, color: Colors.grey,),
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.transparent,
                ),
                child: Center(
                  child: Padding(padding: EdgeInsets.only(right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Radio(value: 1, 
                          groupValue: _type,
                          onChanged: _handlenRadio,
                          activeColor: clrs.kPrimary,
                          ),
                          Text("Amazon pay"),
                        ],
                      )
                    ],
                  ),
                  ),
                ),
              ),
            ],
          ),
        ),
        ),
        ),
    );
  }
}