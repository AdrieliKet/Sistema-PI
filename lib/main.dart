import 'package:flutter/material.dart';

void main() {
  runApp(const ImPoor());
}

class ImPoor extends StatefulWidget {
  const ImPoor({Key? key}) : super(key: key);

  @override
  State<ImPoor> createState() => _ImPoorState();
}

class _ImPoorState extends State<ImPoor> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Poor',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.lightBlue[100]),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Saúde Viral Tech"),
      ),
      body: Center(
        child: InkWell(
          onTap: () => showDialog(
            barrierDismissible: false,
            context: context,
            builder: (context) => AlertDialog(
              title: Text("Alerta"),
              content: Text("Alerta descrição"),
              actions: [
                TextButton(
                  child: Text("Sim"),
                  onPressed: () => Navigator.of(context).pop(),
                ),
                TextButton(
                  child: Text("Não"),
                  onPressed: () => Navigator.of(context).pop(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
