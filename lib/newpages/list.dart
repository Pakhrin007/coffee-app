import 'package:flutter/material.dart';

// ignore: camel_case_types
class Arya extends StatefulWidget {
  const Arya({super.key});

  @override
  State<Arya> createState() => _AryaState();
}

// ignore: camel_case_types
class _AryaState extends State<Arya> {
  var arrnames = ['Aryan', 'santosh', 'bishant'];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return ListTile(
          leading: Text('${index + 1}'),
          title: Text(arrnames[index]),
          subtitle: Text("number"),
          trailing: Icon(Icons.add),
        );
      },
      itemCount: arrnames.length,
    );
  }
}
