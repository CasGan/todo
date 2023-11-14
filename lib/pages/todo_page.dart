import 'package:flutter/material.dart';

class ToDoPage extends StatefulWidget {
  const ToDoPage({super.key});

  @override
  State<ToDoPage> createState() => _ToDoPageState();
}

class _ToDoPageState extends State<ToDoPage> {
  // txt editing controller to get access to what the user typed
  TextEditingController myController = TextEditingController();

  //greeting method var
  String greetingMessage = "";

  //greet user method
  void greetUser() {
    setState(() {
      greetingMessage = "hello " + myController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //greet user message
              Text(greetingMessage),
              TextField(
                controller: myController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: "Type Your Name"),
              ),
              //button
              ElevatedButton(
                onPressed: greetUser,
                child: Text("Tap"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
