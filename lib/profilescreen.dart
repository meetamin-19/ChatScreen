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
                child: Stack(children: [
                  Container(
                    height: MediaQuery.of(context).size.height * .30,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                          Colors.black45,
                          Colors.black26,
                          const Color(0xffB68B4C).withOpacity(.6)
                        ],
                            stops: const [
                          0.15,
                          0.25,
                          1
                        ])),
                  ),
                  Positioned(
                      top: MediaQuery.of(context).size.height * .16,
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
                          mainAxisSize: MainAxisSize.min,
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
                            SizedBox(
                              height: 20,
                            ),
                            Center(
                              child: ElevatedButton(
                                child: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 10.0,),
                                  child: Text(
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
                              padding: EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                              height: MediaQuery.of(context).size.height *0.5,
                              child: GridView.builder(
                                // padding: EdgeInsets.symmetric(vertical: 30),
                                shrinkWrap: true,
                                physics: ScrollPhysics(),
                                  itemCount: 40,
                                  gridDelegate:
                                       SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 3,
                                          crossAxisSpacing: 4.0,
                                          mainAxisSpacing: 4.0,
                                          mainAxisExtent: MediaQuery.of(context).size.height * (.086)),
                                  itemBuilder:
                                      (BuildContext context, int index) {
                                    return Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10)),
                                        color: Colors.grey,
                                      ),
                                      height: 80,
                                      width: 126,
                                    );
                                  }),
                            ),
                          ],
                        ),
                      )),
                  Stack(
                    children: [
                      Positioned(
                        top: MediaQuery.of(context).size.height * .05,
                        child: InkWell(
                          onTap: () {},
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
                        child: Container(
                          margin: EdgeInsets.only(
                              top: MediaQuery.of(context).size.height * .08),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "Paridhi_14",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              const Text(
                                "Mumbai ",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              const SizedBox(
                                height: 22,
                              ),
                              Stack(
                                children: [
                                  Container(
                                    height: 131,
                                    width: 131,
                                    decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(100)),
                                        gradient: LinearGradient(colors: [
                                          const Color(0xff833AB4),
                                          const Color(0xff7318AF)
                                              .withOpacity(.91),
                                          const Color(0xffE81111)
                                              .withOpacity(.81),
                                          const Color(0xffEF9311)
                                              .withOpacity(.85)
                                        ])),
                                  ),
                                  // Container(
                                  //   height: 128,
                                  //   width: 128,
                                  //   decoration: const BoxDecoration(
                                  //     shape: BoxShape.circle,
                                  //     color: Colors.blue
                                  //   ),
                                  // ),
                                  Container(
                                    margin:
                                        const EdgeInsets.only(top: 2, left: 2),
                                    height: 126,
                                    width: 126,
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(100)),
                                        color: Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ]))));
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
