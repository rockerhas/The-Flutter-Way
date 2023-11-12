import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class GridScreen extends StatelessWidget {
  GridScreen({super.key});

  var rewards = [
    {
      'name': 'ES - Dodot Activity',
      'price': 2750,
      'displayName': 'Dodot Activity',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/4M8Kd3Uca0ZdLLEHTUdgFo/62de6cab9586bb026a2455d2735b095e/DODOT-activity.png',
      'type': 'pack',
      'displayType': 'Diaper pack',
    },
    {
      'name': 'ES - Mixture Dummy Reward 3',
      'price': 1,
      'displayName': 'ES - Mixture Dummy Reward 3',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/uzaClsnDKUU4m7vh8mKOX/7e521d2cbd74635905cb4872487a1af2/UK_2_Paper.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES Test 1 dummy 1',
      'price': 1,
      'displayName': '20% OFF - Pampers Premium Protection Single Pack',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/1wt49Rhkz1KB6nF1ts9l1B/9283c439fb64e9afdf0be0d391151e04/20-_-_dm-dro_-_updated_-_en__1_.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES - 3 euro gratis / Cupón 3 € ',
      'price': 600,
      'displayName': '3€ coupon ',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/FWpc7GIWFj1eqAEmYdp5W/e056aca3a97cc96f24aae7f7ca822759/DODOT-3EUR-CT.png',
      'type': 'coupon',
      'displayType': 'Paper coupon'
    },
    {
      'name': 'ES - Mixture Dummy Reward 4',
      'price': 1,
      'displayName': 'ES - Mixture Dummy Reward 4',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/uzaClsnDKUU4m7vh8mKOX/7e521d2cbd74635905cb4872487a1af2/UK_2_Paper.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES - MICS TEST - 10€ URL',
      'price': 1,
      'displayName': 'ES - MICS TEST - 10€ URL',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/uzaClsnDKUU4m7vh8mKOX/7e521d2cbd74635905cb4872487a1af2/UK_2_Paper.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES Test 1 dummy 1',
      'price': 1,
      'displayName': '20% OFF - Pampers Premium Protection Single Pack',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/1wt49Rhkz1KB6nF1ts9l1B/9283c439fb64e9afdf0be0d391151e04/20-_-_dm-dro_-_updated_-_en__1_.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES - 3 euro gratis / Cupón 3 € ',
      'price': 600,
      'displayName': '3€ coupon ',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/FWpc7GIWFj1eqAEmYdp5W/e056aca3a97cc96f24aae7f7ca822759/DODOT-3EUR-CT.png',
      'type': 'coupon',
      'displayType': 'Paper coupon'
    },
    {
      'name': 'ES - MICS TEST - 3€ Alphanumeric',
      'price': 3,
      'displayName': 'ES - MICS TEST - 3€ Alphanumeric',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/uzaClsnDKUU4m7vh8mKOX/7e521d2cbd74635905cb4872487a1af2/UK_2_Paper.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES - Mixture Dummy Reward 1',
      'price': 1,
      'displayName': 'ES - Mixture Dummy Reward 1',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/uzaClsnDKUU4m7vh8mKOX/7e521d2cbd74635905cb4872487a1af2/UK_2_Paper.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES Test 1 dummy 1',
      'price': 1,
      'displayName': '20% OFF - Pampers Premium Protection Single Pack',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/1wt49Rhkz1KB6nF1ts9l1B/9283c439fb64e9afdf0be0d391151e04/20-_-_dm-dro_-_updated_-_en__1_.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES - 3 euro gratis / Cupón 3 € ',
      'price': 600,
      'displayName': '3€ coupon ',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/FWpc7GIWFj1eqAEmYdp5W/e056aca3a97cc96f24aae7f7ca822759/DODOT-3EUR-CT.png',
      'type': 'coupon',
      'displayType': 'Paper coupon'
    },
    {
      'name': 'ES - Mixture Dummy Reward 2',
      'price': 1,
      'displayName': 'ES - Mixture Dummy Reward 2',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/uzaClsnDKUU4m7vh8mKOX/7e521d2cbd74635905cb4872487a1af2/UK_2_Paper.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES Test 1 dummy 1',
      'price': 1,
      'displayName': '20% OFF - Pampers Premium Protection Single Pack',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/1wt49Rhkz1KB6nF1ts9l1B/9283c439fb64e9afdf0be0d391151e04/20-_-_dm-dro_-_updated_-_en__1_.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    },
    {
      'name': 'ES - 3 euro gratis / Cupón 3 € ',
      'price': 600,
      'displayName': '3€ coupon ',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/FWpc7GIWFj1eqAEmYdp5W/e056aca3a97cc96f24aae7f7ca822759/DODOT-3EUR-CT.png',
      'type': 'coupon',
      'displayType': 'Paper coupon'
    },
    {
      'name': 'ES - MICS TEST - 4€ Barcode',
      'price': 1,
      'displayName': 'ES - MICS TEST - 4€ Barcode',
      'image':
          'https://images.ctfassets.net/f49je7c850hm/uzaClsnDKUU4m7vh8mKOX/7e521d2cbd74635905cb4872487a1af2/UK_2_Paper.png',
      'type': 'coupon',
      'displayType': 'E-coupon'
    }
  ];

  @override
  Widget build(BuildContext context) {
    return _buildListScreenMainWidget(context);
  }

  Widget _buildListScreenMainWidget(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildDynamicGridView(context, rewards),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: const Text("Rewards List (Demo)"),
    );
  }

  Widget _buildDynamicGridView(
      BuildContext context, List<Map<String, Object>> rewards) {
    return Container(
      // color: const Color(0xFF00B2A9),
      color: Colors.orange,
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
                  // color: Color(0XFF00B2A9)),
                  color: Colors.orange),
            ),
          ),
        ],
      ),
    );
  }
}
