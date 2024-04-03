import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:treding/app/modules/home/controllers/home_controller.dart';

import '../widgets/stock_list_tile.dart';

class ProfileView extends GetView<HomeController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: const Color(0xFFebebed),
      appBar: AppBar( backgroundColor: const Color(0xFFebebed),
        title: const Text('Dahbi Navaghan'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))],
      ),
      body: Container(
        width: Get.width,
        decoration: const BoxDecoration(borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
        child: Stack(
          children: [
            Container(
              width: Get.width,
              margin: const EdgeInsets.only(top: 65),
              padding: const EdgeInsets.only(
                top: 70,
              ),
              decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.vertical(top: Radius.circular(24))),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    _accountMenu(),
                    const SizedBox(
                      height: 22,
                    ),
                    _consoleMenu(),
                    const SizedBox(
                      height: 22,
                    ),
                    _supportMenu(),
                    const SizedBox(
                      height: 22,
                    ),
                    _otherstMenu(),
                    const SizedBox(
                      height: 22,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.0),
                      child: Text(
                        "versions 0.0.1",
                        style: TextStyle(color:Colors.grey,fontSize: 16),
                      ),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
                child: Container(
                  decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white),
                  child: Container(
                    decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.1), spreadRadius: 5, blurRadius: 7, offset: const Offset(0, 3))]),
                    child: Container(
                      decoration: const BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(5)), color: Colors.white),
                      child: const Padding(
                        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 22),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Dabhi navaghan",
                                  style: TextStyle(fontSize: 18),
                                ),
                                Text("dabhinavaghan@dmial.com")
                              ],
                            ),
                            CircleAvatar(
                              radius: 36,
                              child: Text(
                                "N",
                                style: TextStyle(fontSize: 36),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _accountMenu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Account",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("Funds"),
          trailing: Text(
            "₹",
            style: TextStyle(fontSize: 26),
          ),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("App Clone"),
          trailing: Icon(Icons.lock),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("Profile"),
          trailing: Icon(Icons.person),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("Setting"),
          trailing: Icon(Icons.settings),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("Connected apps"),
          trailing: Icon(Icons.square),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        ListTile(
          title: Text("Logout"),
          trailing: Icon(Icons.logout),
          visualDensity: VisualDensity(vertical: -4),
          onTap: () {},
          splashColor: Colors.blue,
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
      ],
    );
  }

  Widget _consoleMenu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Console",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Wrap(
          spacing: 16,
          children: [
            TextButton(onPressed: () {}, child: Text("Portfolio")),
            TextButton(onPressed: () {}, child: Text("Tradebook")),
            TextButton(onPressed: () {}, child: Text("P&L")),
            TextButton(onPressed: () {}, child: Text("Tax P&L")),
            TextButton(onPressed: () {}, child: Text("Gift Stocks")),
            TextButton(onPressed: () {}, child: Text("Family")),
            TextButton(onPressed: () {}, child: Text("Download")),
          ],
        )
      ],
    );
  }

  Widget _supportMenu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Support",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("Support Portal"),
          trailing: Icon(Icons.sports_basketball),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("User Manual"),
          trailing: Icon(Icons.question_mark),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("Call"),
          trailing: Icon(Icons.call),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
      ],
    );
  }

  Widget _otherstMenu() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.0),
          child: Text(
            "Others",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("Invite Friends"),
          trailing: Icon(Icons.person_add),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
        const ListTile(
          title: Text("Licence"),
          trailing: Icon(Icons.document_scanner),
          visualDensity: VisualDensity(vertical: -4),
        ),
        Divider(
          color: Colors.grey.shade300,
          thickness: 1,
        ),
      ],
    );
  }
}
