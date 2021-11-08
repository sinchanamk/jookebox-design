import 'package:flutter/material.dart';
import 'package:jookebox_design/const/const.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import 'favourite.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double width = 0.0;
  double height = 0.0;

  @override
  void didChangeDependencies() {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: ColorsConsts.white,
          elevation: 0,
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.more_outlined),
            color: ColorsConsts.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: IconButton(
                    onPressed: () {}, icon: Icon(Icons.more_vert,color: ColorsConsts.black,)))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FavouriteScreen()));
              },
              child: Container(
                padding: EdgeInsets.only(top: 10, left: 5, right: 5),
                height: height * .31,
                width: width / 1,
                child: Card(
                  elevation: 20,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      CircularPercentIndicator(
                        radius: 130.0,
                        animation: true,
                        animationDuration: 1200,
                        lineWidth: 15.0,
                        percent: 0.14,
                        center: const Text(
                          "65% \nUsed",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20.0),
                        ),
                        circularStrokeCap: CircularStrokeCap.square,
                        backgroundColor: ColorsConsts.yellow,
                        progressColor: ColorsConsts.blue,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Text('Total Space'),
                                Text(
                                  '250GB',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            Column(
                              children: [
                                Text('Total Space'),
                                Text(
                                  '250GB',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * .7,
              width: MediaQuery.of(context).size.width / 1,
              child: GridView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 6,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.1,
                    crossAxisSpacing: 1,
                    mainAxisSpacing: 1,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                        padding: EdgeInsets.only(top: 10, left: 10),
                        height: MediaQuery.of(context).size.height * .5,
                        width: MediaQuery.of(context).size.width * .03,
                        child: Card(
                          elevation: 20,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Image.asset('assets/folder1.png'),
                                    iconSize: 50,
                                  ),
                                  IconButton(
                                      onPressed: () {},
                                      icon: Icon(Icons.more_vert_outlined)),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: height*.13),
                                child: Text(
                                  'Photos',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: height*.16),
                                child: Text(
                                  '4,524',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: ColorsConsts.grey,
                                      fontSize: 10),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(right: height*.16),
                                child: Text(
                                  '50%',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 5, bottom: 10),
                                child: LinearPercentIndicator(
                                  width: width*.4,
                                  lineHeight: 14.0,
                                  percent: 0.5,
                                  backgroundColor: ColorsConsts.grey,
                                  progressColor: ColorsConsts.green,
                                ),
                              ),
                            ],
                          ),
                        ));
                  }),
              //  ),
            )
          ]),
        ));
  }
}
