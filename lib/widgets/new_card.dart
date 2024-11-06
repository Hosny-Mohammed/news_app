import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewCard extends StatelessWidget {
  String img, title, description;
  NewCard({super.key, required this.img, required this.title, required this.description});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        child: Card(
          elevation: 25,
          child: Padding(
            padding: const EdgeInsets.all(1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Image(image: NetworkImage(img),
                      width: 350,
                      errorBuilder: (context, error, stackTrace) => const Placeholder()
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left :15),
                  child: Text(title, style: const TextStyle(fontSize: 20, fontWeight:FontWeight.bold ),),
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Text(description, style: const TextStyle(),),
                )
                //Image.network("src", )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
