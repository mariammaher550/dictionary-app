import 'package:flutter/material.dart';
getDictionaryFormWidget(BuildContext context) {

  return Container(
    padding: const EdgeInsets.all(16),
    child:  Column(
      children: [
        const Spacer(),
        const Text(
          "Dictionary App",
          style: TextStyle(
            color: Colors.deepOrangeAccent,
            fontSize: 34,
            fontWeight: FontWeight.bold,
          ),
        ),
       const  Text(
          "Search any word you want quickly",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
       const SizedBox(
          height: 32,
        ),
        TextField(
          decoration: InputDecoration(
            hintText: "Search a word",
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.transparent),
            ),
            fillColor: Colors.grey[100],
            filled: true,
            prefixIcon: const Icon(Icons.search),
            hintStyle: const TextStyle(color: Colors.white),
          ),
        ),
       const Spacer(),
        Container(
          width: double.infinity,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                primary: Colors.deepOrangeAccent,
                padding: const EdgeInsets.all(16)),
            child: const Text("SEARCH"),
          ),
        ),
      ],
    ),
  );
}