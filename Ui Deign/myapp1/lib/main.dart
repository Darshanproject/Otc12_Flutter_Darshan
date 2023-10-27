// import 'package:flutter/material.dart';

// import 'package:myapp1/Screens/task1.dart';
// void main(){
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return  MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Task()
//     );
//   }
// }

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Sentence Reversal'),
        ),
        body: SentenceReversalWidget(),
      ),
    );
  }
}

class SentenceReversalWidget extends StatefulWidget {
  @override
  _SentenceReversalWidgetState createState() => _SentenceReversalWidgetState();
}

class _SentenceReversalWidgetState extends State<SentenceReversalWidget> {
  String inputText = "";
  int skipNumber = 0;
  String outputText = "";

  void reverseSentences() {
    List<String> sentences = inputText.split('.');

    for (int i = 0; i < sentences.length - 1; i++) {
      List<String> words = sentences[i].trim().split(' ');
      int skip = skipNumber;
      if (skip > words.length) {
        skip = words.length;
      }
      List<String> reversedSentence =
          words.sublist(0, words.length - skip).reversed.toList();
      reversedSentence.addAll(words.sublist(words.length - skip));
      sentences[i] = reversedSentence.join(' ');
    }

    outputText = sentences.join('. ');
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            maxLines: 5,
            onChanged: (value) {
              inputText = value;
            },
            decoration: InputDecoration(labelText: 'Input Paragraph'),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              skipNumber = int.tryParse(value) ?? 0;
            },
            decoration: InputDecoration(labelText: 'Skip Number'),
          ),
          ElevatedButton(
            onPressed: reverseSentences,
            child: Text('Reverse Sentences'),
          ),
          SizedBox(height: 20),
          Text(
            'Output Paragraph:',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(outputText),
        ],
     ),
);
}
}