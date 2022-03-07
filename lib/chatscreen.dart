import 'package:flutter/material.dart';

class ChatScreenPage extends StatefulWidget {
  const ChatScreenPage({Key? key}) : super(key: key);

  @override
  State<ChatScreenPage> createState() => _ChatScreenPageState();
}

// Color(0xff141414)

class _ChatScreenPageState extends State<ChatScreenPage> {
  final FocusNode _focus = FocusNode();
  final _searchController = TextEditingController();

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
                            child: Container(
                                width: 50,
                                color: const Color(0xff212122),
                                child: const Icon(
                                  Icons.chevron_left,
                                  size: 40,
                                  color: Color(0xffB68B4C),
                                )),
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
                        style: const TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SliverToBoxAdapter(
                child: SizedBox(height: 10,)
            ),
            SliverAppBar(
              // snap: true,
              // floating: true,
              backgroundColor: Colors.black,
              pinned: true,
              expandedHeight: 90,
              collapsedHeight: 90,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  padding: const EdgeInsets.only(top: 10),
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
                              decoration:const BoxDecoration(color: Colors.green,shape: BoxShape.circle),
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
            const SliverToBoxAdapter(
              child: SizedBox(height: 20,),
            ),
            SliverList(delegate: SliverChildBuilderDelegate(
                    (context, ind) {
                  return InkWell(
                    onTap: () { },
                    child: Card(
                        color: Colors.black,
                        child: SizedBox(
                          height: 80,
                          // width: double.infinity,
                          child: Row(
                            children: [
                              Expanded(flex: 1,child: Container(
                                decoration: const BoxDecoration(shape: BoxShape.circle,color: Colors.grey),
                                height:56,
                                width: 56,
                                // color: Colors.grey,
                              )),
                              const SizedBox(width: 10,),
                              Expanded(flex: 6,child: Container(
                                padding: const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: const [
                                      Text("Paridhi_14",style: TextStyle(color: Colors.white,fontSize: 16),),
                                      Text("50 min",style: TextStyle(color: Colors.white,fontSize: 14),)
                                    ],),
                                    const SizedBox(height: 5,),
                                    const Text("Hi There Heloo ......",style: TextStyle(color: Colors.white,fontSize: 13),),
                                  ],
                                ),
                              ),)
                            ],

                          ),
                        )),
                  );
                },
                childCount: 15
            ))
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
