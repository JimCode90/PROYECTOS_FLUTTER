import 'package:flutter/material.dart';

void main() => runApp(ListeView2Screen());

class ListeView2Screen extends StatelessWidget {

  final options = const['elemento1', 'elemento2', 'elemento3', 'elemento4'];
  
  const ListeView2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Tipo 2'),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => ListTile(
            leading: const Icon( Icons.access_time ),
            title: Text(options[index]),
            trailing: const Icon( Icons.arrow_forward_ios_outlined),
            onTap: () {

            },
          ),
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length
      )
    );
  }
}
