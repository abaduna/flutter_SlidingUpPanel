import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  final List<String> personas = ['Juan', 'Maria', 'Pedro', 'Ana', 'Luis', 'Juana', 'Carlos', 'Luisa', 'Miguel', 'Laura'];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.1,
      ),
      child: ListView.builder(
        itemCount: personas.length,
        itemBuilder: (context, index) => Card(
          elevation: 2.0,
          margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: Colors.blue[200],
              child: Text(
                personas[index][0], // Primera letra del nombre
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            title: Text(
              personas[index],
              style: const TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
          ),
        ),
      ),
    );
  }
}