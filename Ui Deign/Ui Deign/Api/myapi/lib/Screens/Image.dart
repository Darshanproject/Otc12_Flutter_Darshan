// import 'dart:convert';
// import 'dart:typed_data';
// import 'package:flutter/material.dart';
// import 'package:encrypt/encrypt.dart';

// class Screate extends StatefulWidget {
//   const Screate({key}) : super(key: key);

//   @override
//   State<Screate> createState() => _ScreateState();
// }

// class _ScreateState extends State<Screate> {
//   late String secretKey;

//   @override
//   void initState() {
//     super.initState();
//     secretKey = generateRandomKey();
//   }

//   String encryptData(String data, String secretKey) {
//     final key1 = Key.fromUtf8(secretKey);
//     final iv = IV.fromLength(16);
//     final encrypter = Encrypter(AES(key1, mode: AESMode.cbc));
//     final encrypted = encrypter.encrypt(data, iv: iv);
//     return encrypted.base64;
//   }

//   String decrypt(String encryptedText, String secretKey) {
//     final key2 = Key.fromUtf8(secretKey);
//     final iv = IV.fromLength(16);
//     final encrypter = Encrypter(AES(key2, mode: AESMode.cbc));
//     final decrypted = encrypter.decrypt64(encryptedText, iv: iv);
//     return decrypted;
//   }

//   String generateRandomKey() {
//     final codeUnits = List.generate(16, (index) => index % 2 == 0 ? index + 65 : index + 97);
//     return String.fromCharCodes(codeUnits);
//   }

//   @override
//   Widget build(BuildContext context) {
//     String originalText = 'Hello, world!';
//     String encryptedText = encryptData(originalText, secretKey);
//     String decryptedText = decrypt(encryptedText, secretKey);

//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('Original Text: $originalText'),
//             Text('Encrypted Text: $encryptedText'),
//             Text('Decrypted Text: $decryptedText'),
//           ],
//         ),
//       ),
//     );
//   }
// }
