import 'package:flutter_application_1/1101204104/hal1101204104.dart';
import 'package:flutter_application_1/1101204104/crud1101204104.dart';
import 'package:flutter_application_1/1101204104/home1101204104.dart';
import 'package:flutter_application_1/1101204104/viewdata1101204104.dart';
import 'package:flutter_application_1/services/auth_service.dart';
import 'package:get/get.dart';
// import 'package:haruka1_0/app/data/providers/auth_service.dart';
// import 'package:haruka1_0/app/modules/awg/views/awg_view.dart';
import 'package:flutter/material.dart';

import '../controller/navbar_controller.dart';

class NavBarView extends StatelessWidget {
  NavBarView({Key? key}) : super(key: key);

  final _controller = Get.put(NavBarController());

  final List<Widget> _listPage = [
    home1101204104(),
    hal1101204104old(),
    View1101204104(),
    crud1101204104(),
  ];

  final List<String> _listTitleAppBar = const [
    'Home',
    'Page-1',
    'Page-2',
    'CRUD',
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        // appBar: AppBar(
        //   automaticallyImplyLeading: false,
        //   title: Text("Test"),
        //   actions: <Widget>[
        //     IconButton(
        //       icon: const Icon(
        //         Icons.exit_to_app,
        //         color: Colors.white,
        //       ),
        //       onPressed: () {
        //         _showAlertDialog(context);
        //         // AuthService.signOut();
        //         // Navigator.pop(context);
        //       },
        //     ),
        //   ],
        // ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _controller.currentTab.value,
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.assignment), label: 'Page-1'),
            BottomNavigationBarItem(icon: Icon(Icons.science), label: 'Page-2'),
            BottomNavigationBarItem(icon: Icon(Icons.pages), label: 'CRUD'),
          ],
          onTap: (value) => _controller.pageChange(value),
        ),
        body: _listPage.elementAt(_controller.currentTab.value),
      ),
    );
  }

  _showAlertDialog(BuildContext context) {
    Widget cancelButton = TextButton(
      child: const Text("Batal"),
      onPressed: () => Get.back(),
    );
    Widget continueButton = TextButton(
      child: const Text("Ya"),
      onPressed: () async {
        Get.back();
        AuthService.signOut();
      },
    );

    AlertDialog alert = AlertDialog(
      title: const Text("Konfirmasi"),
      content: const Text("Apakah Anda yakin ingin log out?"),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
