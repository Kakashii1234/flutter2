import 'package:flutter/material.dart';

class TemplateCard extends StatelessWidget{
  final String imagepath;
  final String title;
  final String description;
  TemplateCard({super.key,
    required this.imagepath,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
  Image.asset(imagepath),
  SizedBox(height: 8,),
  Text(title,style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
  Text(description,style: TextStyle(fontSize: 12),)

],
    );
  }
}