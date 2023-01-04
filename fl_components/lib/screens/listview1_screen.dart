import 'package:flutter/material.dart';

void main() => runApp(ListeView1Screen());

class ListeView1Screen extends StatelessWidget {

  final options = const['elemento1', 'elemento2', 'elemento3', 'elemento4'];
  
  const ListeView1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 1'),
      ),
      body: ListView(
        children: [

          ...options.map((e) =>
              ListTile(
                leading: Icon( Icons.access_time ),
                title: Text(e),
                trailing: Icon( Icons.arrow_forward_ios_outlined),
              )
          ).toList(),

        ],
      )
    );
  }
}
