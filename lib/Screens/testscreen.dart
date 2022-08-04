import 'package:flutter/cupertino.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter/material.dart';

class Testscreen extends StatefulWidget {
  const Testscreen({Key? key}) : super(key: key);

  @override
  State<Testscreen> createState() => _TestscreenState();
}

class _TestscreenState extends State<Testscreen> {
  Widget iconbutton(
      IconData icon, String txt, Color txtcolor, Color iconcolor) {
    return InkWell(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            color: iconcolor,
            size: 28,
          ),
          Text(txt,
              style: TextStyle(
                color: txtcolor,
                fontWeight: FontWeight.bold,
                fontSize: 15,
              ))
        ],
      ),
    );
  }

  Widget info(String txt, Color txtcolor, Color cotcolor) {
    return Container(
        height: 50,
        width: 38,
        decoration: BoxDecoration(
          border: Border.all(color: Vx.gray400),
          borderRadius: BorderRadius.circular(10),
          color: cotcolor,
        ),
        child: txt.text.bold.size(17).color(txtcolor).makeCentered());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: 'Subscription'.text.white.make(),
        backgroundColor: const Color.fromARGB(255, 16, 30, 65),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15)),
        ),
        elevation: 0,
        centerTitle: true,
      ),
      drawer: Hero(
        tag: "demo",
        child: Drawer(
          child: ListView(),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 40,
            child: Row(
              children: [
                Row(
                  children: [
                    "Active".text.size(17).extraBold.make().px20().py12(),
                    "Expired".text.size(17).gray500.make().px64().py12(),
                    "Add New".text.size(17).gray500.make().px16().py12(),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 18,
            width: double.infinity,
            color: Vx.gray200,
          ),
          Column(
            children: [
              Container(
                height: 600,
                width: double.infinity,
                color: Colors.white54,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                        color: Colors.white,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            iconbutton(CupertinoIcons.car, 'Vehicle',
                                    Colors.grey, Colors.grey)
                                .px20(),
                            iconbutton(Icons.text_fields, 'Terms', Colors.grey,
                                    Colors.grey)
                                .px20(),
                            iconbutton(Icons.person, 'Driver', Colors.black,
                                    Colors.black)
                                .px20(),
                            iconbutton(Icons.message, 'Reviews', Colors.grey,
                                    Colors.grey)
                                .px24(),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 90,
                        width: double.infinity,
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 40,
                              backgroundImage: NetworkImage(
                                  'https://t3.ftcdn.net/jpg/02/26/33/90/360_F_226339055_JpvadLUXEq4VnymA195aQlrvSQVAq3rz.jpg'),
                            ).px12(),
                            Container(
                              height: 70,
                              width: 200,
                              color: Colors.white,
                              child: Column(
                                children: [
                                  "Joshua Miller"
                                      .text
                                      .size(17)
                                      .bold
                                      .black
                                      .make(),
                                  "Pioneer driver since Oct 2021"
                                      .text
                                      .blue500
                                      .semiBold
                                      .make(),
                                  "2016 Peugeot 208"
                                      .text
                                      .size(17)
                                      .semiBold
                                      .gray300
                                      .make(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 18,
                        child: "Subscription information"
                            .text
                            .blue600
                            .bold
                            .size(17)
                            .make()
                            .pOnly(
                              right: 150,
                            ),
                      ),
                      Container(
                        height: 70,
                        width: double.infinity,
                        color: Colors.white,
                        child: Row(
                          children: [
                            Container(
                              height: 70,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(color: Vx.gray400),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      "Weekly Cost"
                                          .text
                                          .bold
                                          .gray400
                                          .size(18)
                                          .make()
                                          .pOnly(top: 10, bottom: 10, left: 10),
                                      const Icon(
                                        Icons.info,
                                        color: Vx.gray400,
                                        size: 18,
                                      ).pOnly(top: 10, bottom: 10, left: 8),
                                    ],
                                  ),
                                  "\$120"
                                      .text
                                      .black
                                      .bold
                                      .size(20)
                                      .makeCentered(),
                                ],
                              ),
                            ).px16(),
                            Container(
                              height: 70,
                              width: 150,
                              decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Vx.gray400,
                                  ),
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      "Availability"
                                          .text
                                          .bold
                                          .gray400
                                          .size(18)
                                          .make()
                                          .pOnly(top: 10, bottom: 10, left: 20),
                                      const Icon(
                                        Icons.info,
                                        color: Vx.gray400,
                                        size: 18,
                                      ).pOnly(top: 10, bottom: 10, left: 10),
                                    ],
                                  ),
                                  "10/20"
                                      .text
                                      .black
                                      .bold
                                      .size(20)
                                      .makeCentered(),
                                ],
                              ),
                            ).px12(),
                          ],
                        ),
                      ).py8(),
                      "Available Days & Hours"
                          .text
                          .blue700
                          .bold
                          .size(16)
                          .make()
                          .pOnly(right: 160, top: 10, bottom: 2),
                      Container(
                        height: 70,
                        width: 340,
                        decoration: BoxDecoration(
                            border: Border.all(color: Vx.gray400),
                            borderRadius: BorderRadius.circular(15),
                            color: Vx.white),
                        child: Row(
                          children: [
                            info("M", Vx.white, Vx.black).px4().pOnly(left: 5),
                            info("T", Vx.white, Vx.black).px4(),
                            info("W", Vx.white, Vx.black).px4(),
                            info("T", Vx.white, Vx.black).px4(),
                            info("F", Vx.white, Vx.black).px4(),
                            info("S", Vx.gray400, Vx.white).px4(),
                            info("S", Vx.gray400, Vx.white).px4()
                          ],
                        ),
                      ).py2(),
                      "From 08:00 to 11:00 "
                          .text
                          .black
                          .size(17)
                          .bold
                          .make()
                          .py2(),
                      "From 13:00 to 17:00 "
                          .text
                          .black
                          .size(17)
                          .bold
                          .make()
                          .py2(),
                      "Driver Terms & Conditions"
                          .text
                          .bold
                          .blue600
                          .size(17)
                          .make()
                          .pOnly(right: 130, top: 3),
                      "Maximum numbers of booking per day"
                          .text
                          .bold
                          .gray600
                          .size(15)
                          .make()
                          .pOnly(right: 80, top: 2, left: 10),
                      "Unlimited"
                          .text
                          .gray400
                          .fontWeight(FontWeight.w400)
                          .size(15)
                          .make()
                          .pOnly(right: 270, top: 2),
                      "Maximum travel distance per day"
                          .text
                          .bold
                          .gray600
                          .size(15)
                          .make()
                          .pOnly(right: 120, top: 2, left: 10),
                      "Unlimited"
                          .text
                          .gray400
                          .fontWeight(FontWeight.w400)
                          .size(15)
                          .make()
                          .pOnly(right: 270, top: 2, bottom: 0.1),
                      "Subscribers can book for"
                          .text
                          .bold
                          .blue600
                          .size(17)
                          .make()
                          .pOnly(right: 150, top: 2),
                      "For themselves plus one friend"
                          .text
                          .bold
                          .gray600
                          .size(15)
                          .make()
                          .pOnly(right: 130, top: 2, left: 10),
                      "Available locations"
                          .text
                          .bold
                          .blue600
                          .size(17)
                          .make()
                          .pOnly(right: 190, top: 2),
                      "Suburd 1, Suburb 2, Suburb 3, Suburb 4"
                          .text
                          .bold
                          .gray600
                          .size(15)
                          .make()
                          .pOnly(right: 84, top: 2, left: 10),
                      ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                  fixedSize: const Size(340, 50),
                                  primary:
                                      const Color.fromARGB(255, 16, 30, 65)),
                              child: "Cancel Subscription"
                                  .text
                                  .bold
                                  .size(17)
                                  .white
                                  .make())
                          .py20()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
