import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: SizedBox(
        height: double.infinity,
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * .35,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                    Colors.black54,
                    const Color(0xffB68B4C).withOpacity(0.7)
                  ],
                      stops: const [
                    0.15,
                    1
                  ])),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height * .15,
                child: ClipPath(
                  clipper: CustomShape(),
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.black),
                  ),
                )),
            Positioned(
                top: MediaQuery.of(context).size.height * .3,
                child: Container(
                  color: Colors.black,
                  padding: const EdgeInsets.all(10),
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                "201",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 21),
                              ),
                              Text(
                                "Following",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          ),
                          Column(
                            children: const [
                              Text(
                                "200",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 21),
                              ),
                              Text(
                                "Followers",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              )
                            ],
                          )
                        ],
                      ),
                      Center(
                        child: ElevatedButton(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: const Text(
                              "Follow",
                              style: TextStyle(fontSize: 21),
                            ),
                          ),
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                              shape: const StadiumBorder(),
                              primary: const Color(0xffB68B4C)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10),
                        height: MediaQuery.of(context).size.height * .5,
                        child: GridView.builder(
                            itemCount: 60,
                            gridDelegate:
                                const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              crossAxisSpacing: 4.0,
                              mainAxisSpacing: 4.0,
                            ),
                            itemBuilder: (BuildContext context, int index) {
                              return Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  color: Colors.grey,
                                ),
                                height: 120,
                                width: 80,
                              );
                            }),
                      ),
                    ],
                  ),
                )),
            Stack(
              children: [
                Positioned(
                  top: 20,
                  child: InkWell(
                    onTap: () {
                      print("cool 1");
                    },
                    child: ClipRRect(
                      borderRadius: const BorderRadius.horizontal(
                          left: Radius.zero, right: Radius.circular(100)),
                      child: Container(
                          width: 50,
                          color: const Color(0xff212122),
                          child: const Icon(
                            Icons.chevron_left,
                            size: 40,
                            color: Color(0xffB68B4C),
                          )),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 40),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Paridhi_14",
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ),
                        const Text(
                          "Mumbai ",
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Stack(
                          children: [
                            Container(
                              height: 127,
                              width: 127,
                              decoration: BoxDecoration(
                                // color: Colors.transparent,
                                  shape: BoxShape.circle,
                                  gradient: LinearGradient(colors: [
                                    Color(0xff833AB4),
                                    Color(0xff7318AF).withOpacity(.91),
                                    Color(0xffE81111).withOpacity(.81),
                                    Color(0xffEF9311).withOpacity(.85)
                                  ])),
                            ),
                            Container(
                              height: 126,
                              width: 126,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                            ),

                          ],
                        ),

                      ],
                    ),
                  ),
                ),
                // Container(
                //   height: 130,
                //   width: 130,
                //   decoration: BoxDecoration(
                //       shape: BoxShape.circle,
                //       gradient: LinearGradient(colors: [
                //         Color(0xff833AB4),
                //         Color(0xff7318AF).withOpacity(.91),
                //         Color(0xffE81111).withOpacity(.81),
                //         Color(0xffEF9311).withOpacity(.85)
                //       ])),
                // )
              ],
            )
          ],
        ),
      ),
    ));
  }
}

class CustomShape extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    double height = size.height;
    double width = size.width;

    var path = Path();

    path.moveTo(0, height);
    path.lineTo(0, height - 100);
    path.quadraticBezierTo(width / 2, 0, width, height - 100);
    path.lineTo(width, height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
