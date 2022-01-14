import 'package:dictionary_app/widgets/get_dictionary_form_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[900],
      body: getDictionaryFormWidget(context),
    );
  }

}