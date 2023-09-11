// ignore_for_file: prefer_const_constructors, unused_local_variable, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:e_commers_app/constant/colors.dart';
import 'package:e_commers_app/provider/cart.dart';
import 'package:e_commers_app/widgets/appbar.dart';
import 'package:e_commers_app/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyProduct extends StatelessWidget {
  const MyProduct({super.key});

  @override
  Widget build(BuildContext context) {
    final classInstancee = Provider.of<Cart>(context);
    return Scaffold(
        drawer: MyDrawer(),
        appBar: AppBar(
          actions: [
            CartAndPrice(),
          ],
          backgroundColor: appbarGreen,
          title: Text("Check out"),
        ),
        body: Column(
          children: [
            Container(
              height: 450,
              color: Colors.grey[100],
              padding: EdgeInsets.all(5),
              child: ListView.builder(
                itemCount: classInstancee.selectedItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 50,
                    padding: EdgeInsets.all(5),
                    margin: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey[350],
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  classInstancee.selectedItems[index].imgPath),
                            ),
                            Text(
                              "   ${classInstancee.selectedItems[index].location}",
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        ),
                        IconButton(
                            onPressed: () {
                              classInstancee.removeItem(
                                  (classInstancee.selectedItems[index]));
                            },
                            icon: Icon(Icons.remove))
                      ],
                    ),
                  );
                },
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(
                "  Pay ${classInstancee.price} \$ ",
                style: TextStyle(fontSize: 20),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(BTNpink),
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12)))),
            ),
          ],
        ));
  }
}
