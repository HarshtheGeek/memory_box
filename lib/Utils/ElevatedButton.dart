import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback Ontap;
  const RoundButton({super.key, required this.title,
    required this.Ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: Ontap,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
          color: Color(0xFF150640),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(child: Text(title,style: TextStyle(color: Colors.white,fontFamily: 'Productsansmedium'),)),
      ),
    );
  }
}
