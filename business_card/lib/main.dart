import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.red,
                child: Image(
                    image: NetworkImage(
                        'https://cdn-icons-png.flaticon.com/512/3135/3135715.png')),
              ),
              const Text(
                'Anurag Kumar',
                style: TextStyle(
                    fontSize: 40,
                    fontFamily: 'Pacifico',
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Developer',
                style: TextStyle(
                    fontSize: 35,
                    fontFamily: 'SourceSansPro-Black',
                    color: Colors.teal.shade900,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade200,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(20),
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                color: Colors.white,
                child: Row(
                  children: [
                    const Icon(
                      Icons.phone,
                      size: 40,
                      color: Colors.teal,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      '07970940623',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 40),
                    )
                  ],
                ),
              ),
              Card(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  color: Colors.white,
                  child: ListTile(
                    leading: const Icon(
                      Icons.email,
                      size: 40,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'anuragibt@gmail.com',
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro',
                          fontSize: 25),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
