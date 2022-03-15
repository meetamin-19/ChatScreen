import 'package:flutter/material.dart';

class ChatMssgScreen extends StatefulWidget {
  const ChatMssgScreen({Key? key}) : super(key: key);

  @override
  State<ChatMssgScreen> createState() => _ChatMssgScreenState();
}

class _ChatMssgScreenState extends State<ChatMssgScreen> {
  final _scrollerController = ScrollController();
  @override
  Widget build(BuildContext context) {
    var orientIsPortrait =  MediaQuery.of(context).orientation == Orientation.portrait;
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.black,
            body: CustomScrollView(
                controller: _scrollerController,
                keyboardDismissBehavior:
                ScrollViewKeyboardDismissBehavior.onDrag,
                slivers: [
                  SliverAppBar(
                    backgroundColor: Colors.black,
                    pinned: true,
                    collapsedHeight:orientIsPortrait? 113 : 56,
                    flexibleSpace: Container(
                      height:orientIsPortrait? 113 : 56,
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
                                child: Icon(
                                  Icons.chevron_left,
                                  size:orientIsPortrait ? 40 :30,
                                  color: Color(0xffB68B4C),
                                )),
                          ),
                          Expanded(
                              child: Padding(
                                padding: EdgeInsets.only(
                                    left:orientIsPortrait ? MediaQuery
                                        .of(context)
                                        .size
                                        .width * 0.15: MediaQuery.of(context).size.width *.3)  ,
                                child: Row(
                                  children: [
                                    Container(
                                      height:
                                          orientIsPortrait ?
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .width * 0.1 : 40,
                                      width:
                                          orientIsPortrait ?
                                      MediaQuery
                                          .of(context)
                                          .size
                                          .width * 0.1 : 40,
                                      decoration: const BoxDecoration(
                                          color: Colors.grey,
                                          shape: BoxShape.circle),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment
                                          .center,
                                      crossAxisAlignment: CrossAxisAlignment
                                          .start,
                                      children: const [
                                        Text(
                                          "Pariddhi Patel",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          "Paridhi Beautician Studio",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      height: orientIsPortrait? MediaQuery
                          .of(context)
                          .size
                          .height * 0.76 : MediaQuery.of(context).size.height *0.655,
                      child: ListView.builder(
                        controller: _scrollerController,
                        shrinkWrap: true,
                        padding: EdgeInsets.all(10.0),
                        itemBuilder: (context, index) {
                          if (index % 2 == 0) {
                            return sentMessage();
                          } else {
                            // This is a received message
                            return recievedMessage();
                          }
                        },
                        itemCount: 30,
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: Container(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      color: Color(0xff242426),
                      child: Row(
                        children: [Expanded(flex: 6, child: Container(
                          height: 40,
                          width: MediaQuery.of(context).size.width * .6,
                          child: TextField(
                            style: TextStyle(color: Colors.white),
                            cursorColor: Colors.white,
                            cursorHeight: 20,
                            decoration: InputDecoration(
                              fillColor: Color(0xff19191D),
                              filled: true,
                              hintText: "Write Message",
                              hintStyle: TextStyle(
                                color: Colors.white
                              ),
                              contentPadding: EdgeInsets.all(8),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)
                                ),
                              //   suffixIcon:
                                suffixIcon:Container(
                                  padding: EdgeInsets.only(right: 5),
                                  width: 60,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Transform.rotate(angle: -45,child: const Icon(Icons.attachment_outlined,color: Colors.white,)),
                                      const Icon(Icons.sentiment_very_satisfied_outlined,color: Colors.white,)
                                    ],
                                  ),
                                ),
                            ),
                          ),
                        )),
                          Expanded(flex: 1, child: const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Icon(Icons.send,color: Colors.white,),
                          ))
                        ],
                      ),
                    ),
                  )
                ])));
  }

  Container recievedMessage() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: const Text('This is a received ',
                style: TextStyle(color: Colors.white)),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xff242426),
                borderRadius: BorderRadius.circular(8.0)),
            margin: EdgeInsets.only(left: 10.0),
          ),
          Container(
            child: const Text(
              "13:30",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 10.0,
                  fontStyle: FontStyle.normal),
            ),
            margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.start,
      ),
      margin: const EdgeInsets.only(bottom: 10.0),
    );
  }

  Container sentMessage() {
    return Container(
        child: Column(children: <Widget>[
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xff242426),
                  borderRadius: BorderRadius.circular(8.0)),
              margin: EdgeInsets.only(right: 10.0),
              child: const Text(
                'This ia message bruh aggggfdg aeafbdfgre bzfdgggg',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
            Container(
              child: const Text(
                "22:30",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10.0,
                    fontStyle: FontStyle.normal),
              ),
              margin: EdgeInsets.only(left: 5.0, top: 5.0, bottom: 5.0),
            )
          ])
        ]));
  }
}
