import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cloning Youtube Application',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: "Flutter App"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  Widget _buildName() {
    return TextFormField(
      decoration:
          const InputDecoration(icon: Icon(Icons.mail), hintText: "Name"),
    );
  }

  Widget _buildEmail() {
    return TextFormField();
  }

  Widget _buildPassword() {
    return TextFormField();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              _buildName(),
              const SizedBox(
                height: 30,
              ),
              _buildEmail(),
              const SizedBox(
                height: 30,
              ),
              _buildPassword()
            ],
          ),
        ),
      ),
    ));
  }
}
