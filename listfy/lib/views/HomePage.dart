import 'package:flutter/material.dart';
import 'package:listfy/views/CategoriesList.dart';
import 'package:listfy/components/CardItem.dart';
import 'package:listfy/components/Tabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListFy'),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: Color.fromARGB(255, 223, 218, 218),
      body: Column(
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => CategoriesList(),
                    ),
                  );
                },
                child: Tabbar(name: 'Categorias'),
              ),
              Tabbar(name: 'Cidades'),
            ],
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index) {
                  return CardItem(
                    title: 'Sofá',
                    price: '500',
                    picture: 'https://source.unsplash.com/150x180/?couch',
                    city: 'São José',
                    date: '18/11',
                  );
                }),
          )
        ],
      ),
    );
  }
}
