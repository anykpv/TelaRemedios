import 'package:flutter/material.dart';

class TelaRemedios extends StatefulWidget {
  const TelaRemedios({super.key});

  @override
  State<TelaRemedios> createState() => _TelaRemediosState();
}

class _TelaRemediosState extends State<TelaRemedios> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF7CB6E3), // azul claro
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF2C6B82), // azul escuro
        title: Text(
          'Remédios',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          buildRemedio('Broncodilatador', '1 vez ao dia - 08:00'),
          buildRemedio('Corticosteroide', '2 vezes ao dia - 08:00 e 20:00'),
          buildRemedio('Opioide', 'Conforme necessidade'),
          buildRemedio('Antibiótico', '3 vezes ao dia - 08:00, 14:00 e 20:00'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Color(0xFF2C6B82), // azul escuro
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget buildRemedio(String nome, String descricao) {
    return Container(
      height: 130,
      margin: EdgeInsets.only(bottom: 16),
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white, // branco
        borderRadius: BorderRadius.circular(12), // bordas arredondadas
      ),
      child: Row(
        children: [
          Icon(Icons.medication_liquid, size: 40, color: Color(0xFF2C6B82)), // azul escuro
          SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nome,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 4),
              Text(
                descricao,
                style: TextStyle(
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
