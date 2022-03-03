import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

// Color(0xff141414)

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              collapsedHeight: 171,
              // backgroundColor: Colors.,
              // pinned: true,
              floating: true,
              // title: const Text("Chat"),
              // centerTitle: true,
              // leading:
              expandedHeight: 151,

              flexibleSpace: FlexibleSpaceBar(
                background: Column(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      // padding: EdgeInsets.only(top: 20),
                      height: 103,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(25),
                              bottomLeft: Radius.circular(25)),
                          color: Color(0xff141414)),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: const BorderRadius.horizontal(
                                left: Radius.zero, right: Radius.circular(100)),
                            child: Material(
                              elevation: 4,
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
                          Expanded(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: MediaQuery.of(context).size.width *
                                          0.35),
                                  child: const Text(
                                    "Chat",
                                    style: TextStyle(color: Colors.white),
                                  )))
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                          left: 25, right: 25, top: 10, bottom: 0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white)),
                          suffixIcon: Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                        ),
                        textInputAction: TextInputAction.search,
                        cursorColor: Colors.white,
                        cursorHeight: 25,
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverAppBar(
              backgroundColor: Colors.black,
              pinned: true,
              collapsedHeight: 90,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: EdgeInsets.only(top: 10),
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 70,
                        width: 70,
                        decoration: const BoxDecoration(
                            color: Colors.grey, shape: BoxShape.circle),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 10,
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Card(
                  color: Colors.black,
                  child: SizedBox(
                    height: 100,
                    // width: double.infinity,
                    child: ListTile(
                    ),
                  ));
              },
            ))
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
