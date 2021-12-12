import 'package:flutter/material.dart';

import "./BisectionMethod.dart";
import "./FalsePositionMethod.dart";

class Root extends StatelessWidget {
  Widget buildGridView(BuildContext context) {
    return GridView(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
      ),
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(BisectionMethod.routeName);
          },
          child: Card(
            child: Center(
              child: Text(
                "Bisection Method",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
            ),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.of(context).pushNamed(FalsePositionMethod.routeName);
          },
          child: Card(
            child: Center(
                child: Text(
              "False Position Method",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            )),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    void _bottomModalSheetHandler(BuildContext context) {
      showModalBottomSheet(
          context: context,
          builder: (ctx) {
            return Container(
              padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 70,
                          backgroundImage: NetworkImage(
                              "https://avatars.githubusercontent.com/u/54496134?v=4"),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.person,
                        size: 25,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Pramesh Karki",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.home,
                        size: 25,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Kathmandu,Nepal",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.phone,
                        size: 25,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "+977-9842473580",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.public,
                        size: 25,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "https://www.karkipramesh.com.np",
                        style: TextStyle(fontSize: 18),
                      )
                    ],
                  ),
                ],
              ),
            );
          });
    }

    return Scaffold(
      appBar: AppBar(
        title: Text("Numerical Methods"),
        actions: [
          IconButton(
            icon: Icon(
              Icons.person,
              size: 30,
            ),
            onPressed: () {
              _bottomModalSheetHandler(context);
            },
          )
        ],
      ),
      body: buildGridView(context),
    );
  }
}
