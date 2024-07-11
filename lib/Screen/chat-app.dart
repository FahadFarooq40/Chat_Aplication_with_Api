// ignore_for_file: file_names, unused_field

import 'package:chat_application/Widget/chat_widgets.dart';
import 'package:chat_application/services/assets_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class ChatApp extends StatefulWidget {
  const ChatApp({super.key});

  @override
  State<ChatApp> createState() => _ChatAppState();
}

class _ChatAppState extends State<ChatApp> {
  bool _isTyping = false; // Start with not typing
  late TextEditingController textEditingController;

  @override
  void initState() {
    textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            AssetsManager.openaiLogo,
            height: 50,
          ),
        ),
        title: const Text(
          "Chat Application",
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Flexible(
              child: ListView.builder(
                  itemCount: 7,
                  itemBuilder: ((context, index) {
                    return const chatWidgets();
                  })),
            ),
            if (_isTyping)
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0),
                child: SpinKitWave(
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            Material(
              color: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: textEditingController,
                        decoration: const InputDecoration(
                          fillColor: Color(0xFF6100F2),
                          filled: true,
                          border: OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Colors.blue,
                                width:
                                    2.0), // Border color and width when enabled
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                                color: Color.fromARGB(255, 20, 29, 45),
                                width:
                                    2.0), // Border color and width when focused
                            borderRadius:
                                BorderRadius.all(Radius.circular(12.0)),
                          ),
                          labelText: 'How can I help you?',
                          labelStyle:
                              TextStyle(color: Colors.black, fontSize: 17),
                          hintText: 'Type something...',
                          hintStyle:
                              TextStyle(color: Colors.white, fontSize: 15),
                          prefixIcon: Icon(
                            Icons.text_fields,
                            color: Colors.white,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                        ),
                        maxLength: 50,
                        obscureText: false,
                        onChanged: (text) {
                          setState(() {
                            _isTyping = text.isNotEmpty;
                          });
                        },
                      ),
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.send,
                        color: Color(0xFF6100F2),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
