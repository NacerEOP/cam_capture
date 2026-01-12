import 'package:flutter/material.dart';


class EntryScreen extends StatefulWidget{
    const EntryScreen ({super.key});

    @override
    State<EntryScreen> createState() => _EntryScreenState();

}

class _EntryScreenState extends State<EntryScreen>{
    @override
    Widget build (BuildContext context){
        return Scaffold(
            appBar: AppBar(
                title: const Text ('Entry Screen'),
            ),
            body: const Center(
                child: Text ('This is the entry screen'),
            ),
        );
    }
}