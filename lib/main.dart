import 'package:flutter/material.dart';
import 'package:practical_task/views/screens/homepage.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Product List',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    ),
  );
}
