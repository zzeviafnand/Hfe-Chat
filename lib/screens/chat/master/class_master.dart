import 'package:flutter/material.dart';

class ClassMaster extends StatelessWidget {
  const ClassMaster({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 54,
              decoration: BoxDecoration(
                color: const Color(0xFF31ADF3).withAlpha(250),
                borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: const Color(0xFF31ADF3).withAlpha(20)
                  )
                ]
              ),
              child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 2
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TabBar(
                        indicator: BoxDecoration(
                          color: const Color(0xFFacdefa),
                          borderRadius: BorderRadius.circular(20)
                        ),
                        labelColor: const Color(0xFF31ADF3),
                        tabs:const [
                        Tab(text: 'Chat',),
                        Tab(text: 'Status',)
                      ]),
                    ),
                  ),
                ),
            ),
            const SizedBox(
              height: 200,
              child: TabBarView(
                children: [
                  Center(child: Text('Chat')),
                  Center(child: Text('Status'))
                ]),
            ),
          ],
        ),
    );
  }
}