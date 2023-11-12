import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gap/gap.dart';
import 'package:the_flutter_way/utils/routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildHomeScreen(context);
  }

  Widget _buildHomeScreen(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home")),
      drawer: _buildDrawer(context),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        child: const Icon(FontAwesomeIcons.qrcode),
        onPressed: () {},
      ),
      body: const Center(child: Text("Home Screen")),
      bottomNavigationBar: _buildBottomAppBar(context),
    );
  }

  Widget _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                  foregroundImage: AssetImage("assets/images/my_pic.jpg")),
              otherAccountsPictures: [
                CircleAvatar(child: Text("H")),
                CircleAvatar(child: Text("A"))
              ],
              accountName: Text("Mohammad Haseeb"),
              accountEmail: Text("mohammadhaseeb1991@gmail.com")),
          const Gap(20),
          ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              leading: const CircleAvatar(
                child: Icon(FontAwesomeIcons.house),
              ),
              title: const Text("Home")),
          const Gap(20),
          ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.list);
                // Navigator.push(context,MaterialPageRoute(builder: (context) => ListScreen(),));
              },
              leading: const CircleAvatar(
                child: Icon(FontAwesomeIcons.gift),
              ),
              title: const Text("Catalog list")),
          const Gap(20),
          ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.grid);
                // Navigator.push(context,MaterialPageRoute(builder: (context) => ListScreen(),));
              },
              leading: const CircleAvatar(
                child: Icon(FontAwesomeIcons.gift),
              ),
              title: const Text("Catalog Grid")),
          const Gap(20),
          ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.tipCalculator);
              },
              leading: const CircleAvatar(
                child: Icon(FontAwesomeIcons.user),
              ),
              title: const Text("Tip Calculator")),
          const Gap(20),
          ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, AppRoutes.counter);
              },
              leading: const CircleAvatar(
                child: Icon(FontAwesomeIcons.calculator),
              ),
              title: const Text("Counter App")),
          const Gap(20),
          ListTile(
              onTap: () {
                showAboutDialog(
                  context: context,
                  applicationName: "The Flutter Way",
                  applicationIcon: const Icon(FontAwesomeIcons.shop),
                  applicationVersion: "1.0.0",
                  applicationLegalese:
                      "The Flutter way app created for the purpose to demonstrate all the learnings of the flutter in the course.",
                );
              },
              leading: const CircleAvatar(
                child: Icon(FontAwesomeIcons.info),
              ),
              title: const Text("About")),
        ],
      ),
    );
  }

  Widget _buildBottomAppBar(BuildContext context) {
    return const BottomAppBar(
      notchMargin: 5.0,
      shape: CircularNotchedRectangle(),
      color: Colors.orange,
      // margin: const EdgeInsets.only(top: 16.0),
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            mainAxisSize: MainAxisSize.max,
            children: [
              // Column(
              //   mainAxisSize: MainAxisSize.min,
              //   children: [Icon(Icons.home), Text("Home")],
              // ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(FontAwesomeIcons.gift),
                  Gap(8),
                  Text("Catalog")
                ],
              ),
              // Column(
              //   mainAxisSize: MainAxisSize.min,
              //   children: [Icon(Icons.person), Text("Profile")],
              // ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [Icon(Icons.settings), Gap(8), Text("Setting")],
              ),
            ]),
      ),
    );
  }
}
