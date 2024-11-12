import 'package:flutter/material.dart';

class PaneUp extends StatelessWidget {
  const PaneUp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(62, 244, 67, 54),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20), 
          topRight: Radius.circular(20)),
      ),
      child: Column(
        children: [
       Icon(Icons.drag_handle),
       Image.network('https://www.google.com/images/branding/googlelogo/1x/googlelogo_color_272x92dp.png',
       color: Colors.white,
      fit: BoxFit.contain,
      ),
        ],
      ),
    );
  }
}
