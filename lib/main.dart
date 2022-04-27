import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      title: 'My app',
      home: SafeArea(
        child: MyScaffold(),
      ),
    ),
  );
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({required this.title, Key? key}) : super(key: key);

  final Widget title;

  // Point out that the function is also defined in an ancestor class
  // but is being redefined to do something else
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.0,
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      decoration: BoxDecoration(color: Colors.blue[500]),
      child: Row(
        children: [
          const IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Navigation menu',
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          const IconButton(
            icon: Icon(Icons.search),
            tooltip: 'Search',
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

class MyScaffold extends StatelessWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: const Text("My App Bar"),
            ),
            body: Container(
                child: Container(
                    height: 360,
                    color: Colors.grey,
                    margin: const EdgeInsets.all(8),
                    child: Column(
                      children: [
                        Container(
                          child: Row(children: [
                            Container(
                                child: const CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/dp.png'),
                            )),
                            const SizedBox(width: 20),
                            Expanded(
                              child: Container(
                                child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text("My App"),
                                      Text("Learning")
                                    ]),
                              ),
                            ),
                            const SizedBox(width: 20),
                            Container(
                              child: const Icon(Icons.more_vert),
                            ),
                          ]),
                        ),
                        Container(
                            height: 280,
                            width: double.infinity,
                            child: Image.network(
                                "https://avatars.githubusercontent.com/u/40692082?v=4",
                                fit: BoxFit.cover)),
                        Container(
                            child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                child: Row(children: const [
                              Icon(Icons.thumb_up),
                              Text("Like"),
                            ])),
                            Container(
                                child: Row(children: const [
                              Icon(Icons.message),
                              Text("Comment"),
                            ])),
                            Container(
                                child: Row(children: const [
                              Icon(Icons.share),
                              Text("Share"),
                            ])),
                          ],
                        )),
                      ],
                    )))));
  }
}
