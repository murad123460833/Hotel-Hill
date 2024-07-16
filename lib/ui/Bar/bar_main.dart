import 'package:flutter/material.dart';
import 'package:hill_site_inn/model/rs_foodList.dart';
import 'package:hill_site_inn/provider/provider1.dart';
import 'package:hill_site_inn/ui/Bar/bar_2nd.dart';

import 'package:provider/provider.dart';

import '../../model/bar_foodList.dart';
import '../../provider/provider2nd.dart';

class bar_main_page extends StatefulWidget {
  const bar_main_page({Key? key}) : super(key: key);

  @override
  State<bar_main_page> createState() => _bar_main_pageState();
}

class _bar_main_pageState extends State<bar_main_page> {
  @override
  Widget build(BuildContext context) {
    Provider2nd pro = Provider2nd();
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black26,
        title: Text(
          "Order now",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => bar_2nd()));
            },
            child: Icon(Icons.shopping_cart, color: Colors.white),
          ),
          SizedBox(
            width: 30,
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            shrinkWrap: true,
            itemCount: bar_foodList.length,
            itemBuilder: (context, index) {
              bar_food food = bar_foodList[index];
              return Consumer<Provider2nd>(
                builder: (context, value, child) {
                  return InkWell(
                    onTap: () {
                      value.toal(index);
                      if (value.vlb.contains(index)) {
                        // context.read<FavariteProvider>().remove(index);
                        value.rm(index);
                      } else {
                        // context.read<FavariteProvider>().addItem(index);
                        value.ad(index);

                        print(index);
                      }
                    },
                    child: Container(
                      margin: EdgeInsets.all(5),
                      padding: EdgeInsets.all(5),
                      color: Colors.white12,
                      child: Column(
                        children: [
                          Image.asset(
                            food.imageurl ?? "",
                            height: 100,
                            width: 150,
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  Text(
                                    food.title ?? "",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(" Price  ${food.price}",
                                      style: TextStyle(color: Colors.white70)),
                                ],
                              ),
                              Spacer(),
                              IconButton(
                                onPressed: () {},
                                icon: value.vlb.contains(index)
                                    ? Icon(
                                        Icons.shopping_cart,
                                        color: Colors.green,
                                      )
                                    : Icon(
                                        Icons.shopping_cart_outlined,
                                        color: Colors.white,
                                      ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            },
          )),
        ],
      ),
    );
  }
}
