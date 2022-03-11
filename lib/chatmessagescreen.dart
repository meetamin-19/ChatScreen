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
                    collapsedHeight: 113,
                    flexibleSpace: Container(
                      height: 113,
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
                                left: MediaQuery.of(context).size.width * 0.15),
                            child: Row(
                              children: [
                                Container(
                                  height:
                                      MediaQuery.of(context).size.width * 0.1,
                                  width:
                                      MediaQuery.of(context).size.width * 0.1,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      shape: BoxShape.circle),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Pariddhi Patel",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      "Paridhi Beautician Studio",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 12),
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
                      height: MediaQuery.of(context).size.height * 0.76,
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

                ])));
  }

  Container recievedMessage() {
    return Container(
      child: Column(
        children: <Widget>[
          Container(
            child: Text('This is a received ',
                style: TextStyle(color: Colors.white)),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Color(0xff242426),
                borderRadius: BorderRadius.circular(8.0)),
            margin: EdgeInsets.only(left: 10.0),
          ),
          Container(
            child: Text(
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
      margin: EdgeInsets.only(bottom: 10.0),
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
          child: Text(
            'This ia message bruh aggggfdg aeafbdfgre bzfdgggg',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      Row(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
        Container(
          child: Text(
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
