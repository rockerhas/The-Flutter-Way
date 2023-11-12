import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:the_flutter_way/utils/routes.dart';

class LearnStatelessWidgetScreen extends StatelessWidget {
  const LearnStatelessWidgetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return _buildStatelessWidgetTree(context);
  }

  Widget _buildStatelessWidgetTree(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      appBar: _buildAppBar(),
      body: _buildColumnDemo(context),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.blue,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(20.0))),
      title: const Text("Home"),
      centerTitle: true,
      // flexibleSpace: Container(
      //   color: Colors.green,
      // ),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () => {},
      ),
      actions: [
        _buildIconButton(Icons.book, onIconPressed: () {}),
        _buildIconButton(Icons.search, onIconPressed: () {}),
        _buildIconButton(Icons.add_shopping_cart, onIconPressed: () {}),
      ],
    );
  }

  Widget _buildStatelessWidgetsBody(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        mainAxisSize: MainAxisSize.max,
        children: [_buildTopImage(context), _buildButtons(context)],
      ),
    );
  }

  Widget _buildTopImage(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(width: 5.0, color: Colors.orangeAccent),
        // borderRadius: const BorderRadius.all(Radius.circular(16.0)),
        boxShadow: const [
          BoxShadow(color: Colors.black38, spreadRadius: 5.0, blurRadius: 5.0)
        ],
        image: const DecorationImage(
            image: AssetImage("assets/images/my_pic.jpg"), fit: BoxFit.contain),
      ),
      margin: const EdgeInsets.all(16.0),
      padding: const EdgeInsets.all(16.0),
      width: 450.0,
      height: 250,
    );
  }

  Widget _buildButtons(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        icon: const Icon(Icons.add_shopping_cart),
        label: const Text("Let's Begin"),
        onPressed: () {
          Navigator.pushNamed(context, AppRoutes.tipCalculator);
        },
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(24.0),
            backgroundColor: Colors.yellow.shade500,
            foregroundColor: Colors.black,
            elevation: 16,
            shadowColor: Colors.black,
            shape: const StadiumBorder(
                side: BorderSide(color: Colors.black, width: 3)),
            fixedSize: const Size(200.0, 60.0),
            alignment: Alignment.centerLeft,
            textStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            )),
      ),
    );
  }

  Widget _buildIconButton(IconData iconData,
      {required Null Function() onIconPressed}) {
    return IconButton(
      icon: Icon(iconData),
      onPressed: () => {onIconPressed()},
    );
  }

  Widget _buildRow1(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: const Row(children: [
        Expanded(
          child: Image(
              image: AssetImage("assets/images/my_pic.jpg"),
              width: 200.0,
              height: 150.0),
        ),
        Expanded(
          flex: 2,
          child: Image(
              image: AssetImage("assets/images/my_pic.jpg"),
              width: 200.0,
              height: 150.0),
        ),
        Expanded(
          child: Image(
              image: AssetImage("assets/images/my_pic.jpg"),
              width: 200.0,
              height: 150.0),
        ),
      ]),
    );
  }

  Widget _buildRow2(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Icon(
          Icons.star,
          color: Colors.blue,
        ),
        Icon(
          Icons.star,
          color: Colors.blue,
        ),
        Icon(
          Icons.star,
          color: Colors.blue,
        ),
        Icon(
          Icons.star_border_outlined,
          color: Colors.blue,
        ),
        Icon(
          Icons.star_border_outlined,
          color: Colors.blue,
        ),
      ]),
    );
  }

  Widget _buildRow3(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16.0),
      child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              children: [Icon(Icons.phone), Text("Phone")],
            ),
            Column(
              children: [Icon(Icons.route), Text("Route")],
            ),
            Column(
              children: [Icon(Icons.share), Text("Share")],
            ),
          ]),
    );
  }

  Widget _buildColumnDemo(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(top: 16.0),
      child: Column(children: [
        Expanded(child: _buildRow1(context)),
        Expanded(child: _buildRow2(context)),
        Expanded(child: _buildRow3(context)),
      ]),
    );
  }

  Widget _buildStaticListView(BuildContext context) {
    return ListView(
      reverse: false,
      scrollDirection: Axis.vertical,
      children: [
        ListTile(
          tileColor: Colors.orangeAccent,
          leading: const CircleAvatar(child: Icon(Icons.alarm_on_sharp)),
          title: const Text("Sales"),
          subtitle: const Text("Sales of the week"),
          trailing: const Text("1500"),
          onTap: () {},
        ),
        const Gap(8),
        const ListTile(
            tileColor: Colors.orangeAccent,
            leading: CircleAvatar(
                child: Icon(Icons.supervised_user_circle_outlined)),
            title: Text("Customer"),
            subtitle: Text("Total customers visited"),
            trailing: Text("2500")),
        const Gap(8),
        const ListTile(
            tileColor: Colors.orangeAccent,
            leading: CircleAvatar(
                backgroundColor: Colors.blue,
                foregroundColor: Colors.white,
                child: Icon(Icons.monetization_on)),
            title: Text("Profit"),
            subtitle: Text("Profit of the week"),
            trailing: Text("3500")),
        const Gap(8),
        const ListTile(
            leading: CircleAvatar(child: Icon(Icons.accessibility)),
            title: Text("Employee"),
            subtitle: Text("Employee of the week"),
            trailing: Text("5500")),
      ],
    );
  }

  Widget _buildStaticListViewUsingColumns(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ListTile(
            tileColor: Colors.orangeAccent,
            leading: const CircleAvatar(child: Icon(Icons.alarm_on_sharp)),
            title: const Text("Sales"),
            subtitle: const Text("Sales of the week"),
            trailing: const Text("1500"),
            onTap: () {},
          ),
          const Gap(8),
          const ListTile(
              tileColor: Colors.orangeAccent,
              leading: CircleAvatar(
                  child: Icon(Icons.supervised_user_circle_outlined)),
              title: Text("Customer"),
              subtitle: Text("Total customers visited"),
              trailing: Text("2500")),
          const Gap(8),
          const ListTile(
              tileColor: Colors.orangeAccent,
              leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  child: Icon(Icons.monetization_on)),
              title: Text("Profit"),
              subtitle: Text("Profit of the week"),
              trailing: Text("3500")),
          const Gap(8),
          const ListTile(
              leading: CircleAvatar(child: Icon(Icons.accessibility)),
              title: Text("Employee"),
              subtitle: Text("Employee of the week"),
              trailing: Text("5500")),
        ],
      ),
    );
  }

  Widget _buildDynamicGridView(
      BuildContext context, List<Map<String, Object>> rewards) {
    return Container(
      color: const Color(0xFF00B2A9),
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisSpacing: 8, crossAxisCount: 2),
        itemCount: rewards.length,
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          var item = rewards.elementAt(index);
          var image = item['image'].toString();
          var price = item['price'].toString();
          var displayName = item['displayName'].toString();
          var displayType = item['displayType'].toString();
          return _rewardGridItem(image, displayName, displayType, price);
          // return Column(children: [Container(color: Colors.blue,child: Text("data"))],);
        },
      ),
    );
  }

  Widget _rewardGridItem(String rewardImageUrl, String rewardName,
      String rewardType, String rewardPrice) {
    return Container(
      margin: const EdgeInsets.all(8.0),
      // width: 250.0,
      // height: 350.0,
      decoration: BoxDecoration(
          color: const Color(0xFFE4F7F3),
          borderRadius: BorderRadius.circular(16.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                borderRadius:
                const BorderRadius.vertical(top: Radius.circular(16.0)),
                image: DecorationImage(
                    image: NetworkImage(rewardImageUrl), fit: BoxFit.cover)),
            width: double.infinity,
            height: 100.0,
          ),
          const Gap(8),
          Expanded(
            child: Text(
              rewardName,
              maxLines: 3,
              // Set the maximum number of lines
              overflow: TextOverflow.ellipsis,
              // Use ellipsis (...) for overflow
              style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF1C5972)),
            ),
          ),
          const Gap(8),
          Expanded(
            child: Text(
              rewardType,
              style: const TextStyle(fontSize: 13.0, color: Color(0XFF7C96A4)),
            ),
          ),
          // const Gap(8),
          Expanded(
            child: Text(
              '\$ $rewardPrice',
              style: const TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0XFF00B2A9)),
            ),
          ),
        ],
      ),
    );
  }
}
