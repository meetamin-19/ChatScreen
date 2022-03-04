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
  bool check = true;
  final FocusNode _focus = FocusNode();
  final _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _focus.addListener(_onFocusChange);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    check = !check;
    debugPrint("Focus: ${_focus.hasFocus.toString()}");
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
          slivers: [
            SliverAppBar(
              backgroundColor: Colors.black,
              collapsedHeight: 171,
              floating: true,
              flexibleSpace: FlexibleSpaceBar(
                background: Column(
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
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 25, right: 25, top: 20),
                      child: TextField(
                        focusNode: _focus,
                        controller: _searchController,
                        decoration: const InputDecoration(
                          hintText: "Search",
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
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
            SliverToBoxAdapter(
              child: SizedBox(height: 10,)
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
                      return Stack(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              height: 70,
                              width: 70,
                              decoration: const BoxDecoration(
                                  color: Colors.grey, shape: BoxShape.circle),
                            ),
                          ),
                          Positioned(
                            right: 6,
                            top: 6,
                            child: Container(
                              height: 10,
                              width: 10,
                              decoration:BoxDecoration(color: Colors.green,shape: BoxShape.circle),
                            ),
                          )
                        ],
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
            SliverToBoxAdapter(
              child: SizedBox(height: 20,),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
              (context, index) {
                return InkWell(
                  onTap: () { },
                  child: Card(
                    color: Colors.black,
                    child: SizedBox(
                      height: 80,
                      // width: double.infinity,
                      child: Container(
                        child:Row(
                          children: [
                            Expanded(flex: 1,child: Container(
                              decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.grey),
                              height:56,
                              width: 56,
                              // color: Colors.grey,
                            )),
                            SizedBox(width: 10,),
                            Expanded(flex: 6,child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
                                        Text("Paridhi_14",style: TextStyle(color: Colors.white,fontSize: 16),),
                                        Text("50 min",style: TextStyle(color: Colors.white,fontSize: 14),)
                                      ],),
                                      SizedBox(height: 5,),
                                      Text("Hi There Heloo ......",style: TextStyle(color: Colors.white,fontSize: 13),),
                                    ],
                                  ),
                            ),)
                          ],

                        )
                      ),
                    )),
                );
              },
            ))
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
