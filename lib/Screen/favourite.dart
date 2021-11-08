import 'package:flutter/material.dart';
import 'package:jookebox_design/const/const.dart';
import 'package:jookebox_design/widget/circle.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
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
            icon: Icon(Icons.arrow_back),
            color: ColorsConsts.black,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: IconButton(
                    onPressed: () {}, icon: Image.asset('assets/more.png')))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Text(
                'Favourite',
                style: TextStyle(fontSize: 2, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: height * .2,
              width: width,
              child: ListView.builder(
                itemCount: 8,
                scrollDirection: Axis.horizontal,
                itemBuilder: (BuildContext context, int index) {
                  return SizedBox(
                    height: height * .07,
                    width: width * .4,
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Text(
                              'Photos',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              '4527 files',
                              style:
                                  TextStyle(color: ColorsConsts.grey, fontSize: 15),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            CustomAvatar(),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Folders',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    CircleAvatar(
                        radius: 18,
                        backgroundColor: ColorsConsts.violet,
                        child: Icon(
                          Icons.add,
                          size: 20,
                        ) // Provide your custom image
                        ),
                  ]),
            ),
            SizedBox(
              height: height, width: width,
              child: ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      padding: EdgeInsets.only(
                          left: 15, right: 15, top: 5, bottom: 5),
                      height: height * .17,
                      width: width / 1,
                      child: Card(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.folder,
                                  color: ColorsConsts.yellow,
                                  size: 40,
                                )),
                            SizedBox(
                              width: 30,
                            ),
                            Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0, top: 30),
                                  child: Text(
                                    'Products',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 18.0, top: 10),
                                  child: Text(
                                    '150 files',
                                    style: TextStyle(
                                        color: ColorsConsts.grey, fontSize: 15),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 80,
                            ),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.more_vert)),
                          ],
                        ),
                      ));
                },
              ),
            )
          ]),
        ));
  }
}
