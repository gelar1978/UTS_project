// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/1101190196/login1101190196.dart';

// class hal1101190196old extends StatefulWidget {
//   // final String output;
//   hal1101190196old({super.key});

//   @override
//   State<hal1101190196old> createState() => _hal1101190196oldState();
// }

// class _hal1101190196oldState extends State<hal1101190196old> {
//   final TextEditingController _textEditingController = TextEditingController();
//   String _output = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Feni Nur Septiani/Page-1'),
//       ),
//       body: ListView(
//         children: [
//           Column(
//             children: [
//               Container(
//                 height: 200,
//                 width: 200,
//                 decoration: const BoxDecoration(
//                   // color: Colors.red.withOpacity(0.1),
//                   image: DecorationImage(
//                     image: NetworkImage(
//                         'https://anaktelkom.com/wp-content/uploads/2021/08/Logo-Telkom-University-900x1024.png'),
//                     fit: BoxFit.fitHeight,
//                   ),
//                 ),
//               ),
//               Center(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     TextField(
//                       controller: _textEditingController,
//                       decoration: InputDecoration(
//                         icon: Icon(Icons.key),
//                         hintText: 'Ketikkan 7 digit pertama NIM anda',
//                       ),
//                     ),
//                     // Text('$output'),
//                     Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: ElevatedButton(
//                               child: Text('Main Page'),
//                               onPressed: () {
//                                 Navigator.pop(
//                                     context, _textEditingController.text);
//                               },
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: ElevatedButton(
//                               child: Text('Next Page'),
//                               onPressed: () async {
//                                 if (_textEditingController.text ==
//                                     1101190.toString()) {
//                                   final result = await Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => hal1101190196_2(
//                                           pesan1: _textEditingController.text),
//                                     ),
//                                   );
//                                   setState(() {
//                                     _output = result ?? '';
//                                   });
//                                 }
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//                 width: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("NIM/No. Telp."),
//               ),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20.0), //or 15.0
//                 child: Container(
//                   height: 70.0,
//                   width: 390.0,
//                   color: Color(0xffFF0E58),
//                   child: Center(
//                       child: Text(
//                     _output,
//                     style: TextStyle(fontSize: 28),
//                   )),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class hal1101190196_2 extends StatefulWidget {
//   // hal1101190196_2({super.key,required this.pesan1});
//   String pesan1 = '';
//   hal1101190196_2({super.key, required this.pesan1});
//   @override
//   _hal1101190196_2State createState() => _hal1101190196_2State();
// }

// class _hal1101190196_2State extends State<hal1101190196_2> {
//   String NIM7 = '';
//   TextEditingController _textEditingController0 = TextEditingController();
//   TextEditingController _textEditingController1 = TextEditingController();
//   TextEditingController _textEditingController2 = TextEditingController();
//   String _output = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Feni Nur Septiani/Page-2'),
//       ),
//       body: ListView(
//         children: [
//           //Silakan lanjutkan........................
//           Column(
//             children: [
//               Center(
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 20,
//                       width: 20,
//                     ),
//                     TextField(
//                       controller: _textEditingController0,
//                       decoration: InputDecoration(
//                         icon: Icon(Icons.key),
//                         hintText: 'Ketikkan Alamat Email Anda',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                       width: 20,
//                     ),
//                     TextField(
//                       controller: _textEditingController1,
//                       decoration: InputDecoration(
//                         icon: Icon(Icons.key),
//                         hintText: 'Ketikkan No handphone Anda',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                       width: 20,
//                     ),
//                     TextField(
//                       controller: _textEditingController2,
//                       decoration: InputDecoration(
//                         icon: Icon(Icons.key),
//                         hintText: 'Ketikkan digit ke-8 NIM Anda',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                       width: 20,
//                     ),
//                     Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: ElevatedButton(
//                               child: Text('Previous Page'),
//                               onPressed: () {
//                                 Navigator.pop(context, _output);
//                               },
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: ElevatedButton(
//                               child: Text('Next Page'),
//                               onPressed: () async {
//                                 if (_textEditingController2.text ==
//                                     1.toString()) {
//                                   String NIM7 = '${widget.pesan1}' +
//                                       _textEditingController2.text;
//                                   final result = await Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => hal1101190196_3(
//                                         pesan1: NIM7,
//                                         pesan2: _textEditingController0.text,
//                                         pesan3: _textEditingController1.text,
//                                       ),
//                                     ),
//                                   );
//                                   setState(() {
//                                     _output = result ?? '';
//                                   });
//                                   ;
//                                 }
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//                 width: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("NIM/No. Telp."),
//               ),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20.0), //or 15.0
//                 child: Container(
//                   height: 70.0,
//                   width: 390.0,
//                   color: Color.fromARGB(0, 7, 252, 117),
//                   child: Center(
//                       child: Text(
//                     _output,
//                     style: TextStyle(fontSize: 28),
//                   )),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class hal1101190196_3 extends StatefulWidget {
//   String pesan1 = '';
//   String pesan2 = '';
//   String pesan3 = '';
//   hal1101190196_3(
//       {super.key,
//       required this.pesan1,
//       required this.pesan2,
//       required this.pesan3});
//   @override
//   _hal1101190196_3State createState() => _hal1101190196_3State();
// }

// class _hal1101190196_3State extends State<hal1101190196_3> {
//   String NIM10 = '';
//   String TLP = '';
//   TextEditingController _textEditingController3 = TextEditingController();
//   String _output = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Feni Nur Septiani/Page-3'),
//       ),
//       body: ListView(
//         children: [
//           //Silakan lanjutkan........................
//           Column(
//             children: [
//               Center(
//                 child: Column(
//                   children: [
//                     CircleAvatar(
//                       backgroundImage: AssetImage('lib/images/fotofeni.png'),
//                       radius: 100,
//                     ),
//                     SizedBox(
//                       height: 20,
//                       width: 20,
//                     ),
//                     Text(
//                       '${widget.pesan2}',
//                       style: TextStyle(fontSize: 22),
//                     ),
//                     SizedBox(
//                       height: 20,
//                       width: 20,
//                     ),
//                     Text(
//                       '${widget.pesan3}',
//                       style: TextStyle(fontSize: 22),
//                     ),
//                     SizedBox(
//                       height: 20,
//                       width: 20,
//                     ),
//                     TextField(
//                       controller: _textEditingController3,
//                       decoration: InputDecoration(
//                         icon: Icon(Icons.key),
//                         hintText: 'Masukkan digit ke-9 dan ke-10 NIM anda',
//                       ),
//                     ),
//                     SizedBox(
//                       height: 20,
//                       width: 20,
//                     ),
//                     Center(
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: ElevatedButton(
//                               child: Text('Previous Page'),
//                               onPressed: () {
//                                 Navigator.pop(context, _output);
//                               },
//                             ),
//                           ),
//                           Padding(
//                             padding: const EdgeInsets.all(8.0),
//                             child: ElevatedButton(
//                               child: Text('Next Page'),
//                               onPressed: () async {
//                                 if (_textEditingController3.text ==
//                                     96.toString()) {
//                                   String NIM10 = '${widget.pesan1}' +
//                                       _textEditingController3.text;
//                                   String TLP = '${widget.pesan3}';
//                                   final result = await Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => hal1101190196_4(
//                                         pesan1: NIM10,
//                                         pesan2: TLP,
//                                         pesan3: _textEditingController3.text,
//                                       ),
//                                     ),
//                                   );
//                                   setState(() {
//                                     _output = result ?? '';
//                                   });
//                                 }
//                               },
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 20,
//                 width: 20,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Text("NIM/No. Telp."),
//               ),
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(20.0), //or 15.0
//                 child: Container(
//                   height: 70.0,
//                   width: 390.0,
//                   color: Color.fromARGB(0, 7, 252, 117),
//                   child: Center(
//                       child: Text(
//                     _output,
//                     style: TextStyle(fontSize: 28),
//                   )),
//                 ),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }

// class hal1101190196_4 extends StatefulWidget {
//   // hal1101190196_2({super.key,required this.pesan1});
//   String pesan1 = '';
//   String pesan2 = '';
//   String pesan3 = '';
//   hal1101190196_4(
//       {super.key,
//       required this.pesan1,
//       required this.pesan2,
//       required this.pesan3});
//   @override
//   _hal1101190196_4State createState() => _hal1101190196_4State();
// }

// class _hal1101190196_4State extends State<hal1101190196_4> {
//   //
//   @override
//   Widget build(BuildContext context) {
//     String allPesan = '${widget.pesan1}/${widget.pesan2}';
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Feni Nur Septiani/Page-4'),
//       ),
//       body: Container(
//         child: Column(
//           children: [
//             Center(
//               child: Column(
//                 children: [
//                   SizedBox(
//                     height: 20,
//                     width: 20,
//                   ),
//                   Text(
//                     '${widget.pesan1} / ${widget.pesan2}',
//                     style: TextStyle(fontSize: 22),
//                   ),
//                   SizedBox(
//                     height: 20,
//                     width: 20,
//                   ),
//                   Center(
//                     child: Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                           child: Text('Previous Page'),
//                           onPressed: () {
//                             Navigator.pop(context, allPesan);
//                           }),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Expanded(
//               child: GridView(
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 1),
//                 children: [
//                   GridView.count(
//                     crossAxisCount: 5,
//                     scrollDirection: Axis.vertical,
//                     padding: EdgeInsets.all(0),
//                     children: List.generate(allPesan.length, (index) {
//                       return Container(
//                         height: 1,
//                         child: Card(
//                           color: Colors.primaries[
//                               Random().nextInt(Colors.primaries.length)],
//                           child: Center(
//                             child: Text(
//                               allPesan[index],
//                               style: TextStyle(
//                                   color: Colors.black,
//                                   fontSize: 30,
//                                   fontWeight: FontWeight.bold),
//                             ),
//                           ),
//                         ),
//                       );
//                     }),
//                   )
//                 ],
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// // <<<<<<< Updated upstream
// // =======
// }

// //This Third Page
// class ThirdPage extends StatelessWidget {
//   final String emailFinal;
//   final String phoneFinal;
//   final String nimFinal;

//   ThirdPage(
//       {required this.emailFinal,
//       required this.phoneFinal,
//       required this.nimFinal});
//   TextEditingController digitNIM = TextEditingController();
//   String nim1 = '';
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Feni Nur Septiani/Page-3'),
//         ),
//         body: Padding(
//           padding: EdgeInsets.all(16.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               CircleAvatar(
//                 radius: 100, // ukuran radius avatar
//                 backgroundImage:
//                     AssetImage('lib/images/fotofeni.png'), // gambar dari assets
//               ),
//               Text(
//                 '$emailFinal',
//                 style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 12.0),
//               Text(
//                 '$phoneFinal',
//                 style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
//                 textAlign: TextAlign.center,
//               ),
//               SizedBox(height: 12.0),
//               TextField(
//                 controller: digitNIM,
//                 keyboardType: TextInputType.number,
//                 maxLength: 2,
//                 decoration: InputDecoration(
//                   labelText: 'Masukkan digit ke-9 dan 10 NIM anda',
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               Center(
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                           child: Text('Previous Page'),
//                           onPressed: () {
//                             Navigator.pop(context);
//                           }),
//                     ),
//                     SizedBox(height: 16.0),
//                     Padding(
//                       padding: const EdgeInsets.all(8.0),
//                       child: ElevatedButton(
//                         child: Text('Next Page'),
//                         onPressed: () {
//                           String digit = digitNIM.text;
//                           if (digit == '96') {
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => FourthPage(
//                                   emailFinal: emailFinal,
//                                   phoneFinal: phoneFinal,
//                                   nimFinal: nimFinal + digitNIM.text,
//                                 ),
//                               ),
//                             );
//                           } else {
//                             showDialog(
//                                 context: context,
//                                 builder: ((context) {
//                                   return AlertDialog(
//                                     title: Text('Error'),
//                                     content: Text(
//                                         'Masukkan NIM ke-9 & 10 dengan benar!'),
//                                     actions: <Widget>[
//                                       TextButton(
//                                         onPressed: () {
//                                           Navigator.of(context).pop();
//                                         },
//                                         child: Text('OK'),
//                                       )
//                                     ],
//                                   );
//                                 }));
//                           }
//                         },
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ));
//   }
// }

// //This Fourth Page
// class FourthPage extends StatelessWidget {
//   final String emailFinal;
//   final String phoneFinal;
//   final String nimFinal;

//   FourthPage(
//       {required this.emailFinal,
//       required this.phoneFinal,
//       required this.nimFinal});

//   @override
//   Widget build(BuildContext context) {
//     List<String> nimList = nimFinal.split('');
//     List<String> phoneList = phoneFinal.split('');

<<<<<<< Updated upstream
    return Scaffold(
      appBar: AppBar(
        title: Text('Feni Nur Septiani/Page-4'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              '$nimFinal / $phoneFinal',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: nimList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Color.fromRGBO(Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256), 1),
                  child: Center(
                    child: Text(nimList[index]),
                  ),
                );
              },
            ),
            GridView.builder(
              shrinkWrap: true,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
              itemCount: phoneList.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Color.fromRGBO(Random().nextInt(256),
                      Random().nextInt(256), Random().nextInt(256), 1),
                  child: Center(
                    child: Text(phoneList[index]),
                  ),
                );
              },
            ),
            ElevatedButton(
              child: Text('Previous Page'),
              onPressed: () {
                Navigator.pop(context, hal1101190196old());
              },
            ),
          ],
        ),
      ),
    );
  }
}
=======
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Feni Nur Septiani/Page-4'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Text(
//               '$nimFinal / $phoneFinal',
//               style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
//             ),
//             GridView.builder(
//               shrinkWrap: true,
//               gridDelegate:
//                   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
//               itemCount: nimList.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Card(
//                   color: Color.fromRGBO(Random().nextInt(256),
//                       Random().nextInt(256), Random().nextInt(256), 1),
//                   child: Center(
//                     child: Text(nimList[index]),
//                   ),
//                 );
//               },
//             ),
//             GridView.builder(
//               shrinkWrap: true,
//               gridDelegate:
//                   SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
//               itemCount: phoneList.length,
//               itemBuilder: (BuildContext context, int index) {
//                 return Card(
//                   color: Color.fromRGBO(Random().nextInt(256),
//                       Random().nextInt(256), Random().nextInt(256), 1),
//                   child: Center(
//                     child: Text(phoneList[index]),
//                   ),
//                 );
//               },
//             ),
//             ElevatedButton(
//               child: Text('Previous Page'),
//               onPressed: () {
//                 Navigator.pop(context, hal1101190196new());
//               },
//             ),
//           ],
//         ),
//    )
//     )
//   }
// >>>>>>> Stashed changes
// }
>>>>>>> Stashed changes
