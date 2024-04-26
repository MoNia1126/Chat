import 'package:assignment1/message_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.purpleAccent,
      appBar: AppBar(
        leadingWidth: 90,
        backgroundColor: Colors.black,
        leading: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
            const CircleAvatar(
                radius: 20,
                backgroundImage: AssetImage('assets/images/person.jpg')),
          ],
        ),
        title: const Text('Person'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.videocam)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.call)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: <Widget>[
            Container(
              // height: 70,
              // alignment: Alignment.topRight,
              child: Column(
                children: [
                  MessageWidget(
                      imagePath: 'assets/images/person1.jpg',
                      message: 'This is My First Message'),
                  SizedBox(
                    height: 40,
                  ),
                  MessageWidget(
                      imagePath: 'assets/images/person2.jpg',
                      message: 'This is My Second Message'),
                ],
              ),
            ),
            // Container(
            //   alignment: Alignment.topRight,
            //   child: Row(
            //     children: [
            //       MessageWidget(imagePath: 'assets/images/person2.jpg', message: 'This is My Second App'),
            //     ],
            //   ),
            // ),

            ListView(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 55,
                    child: Card(
                      margin:
                          const EdgeInsets.only(left: 2, right: 2, bottom: 8),
                      color: Colors.black,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25)),
                      child: TextFormField(
                        textAlignVertical: TextAlignVertical.center,
                        decoration: InputDecoration(
                          hintStyle: const TextStyle(color: Colors.white),
                          border: InputBorder.none,
                          hintText: "Type a Message",
                          prefixIcon: IconButton(
                              icon: const Icon(Icons.emoji_emotions,
                                  color: Colors.white),
                              onPressed: () {}),
                          suffixIcon: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.attach_file,
                                      color: Colors.white)),
                            ],
                          ),
                          contentPadding: const EdgeInsets.all(8),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8, right: 5),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.black,
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.mic,
                            color: Colors.white,
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
