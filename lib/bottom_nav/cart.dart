import 'package:flutter/material.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  final List<String> notices = <String>[
    'Holiday\nDear Students our college will remain closed on Jan 1, 2024',
    'Tour Program\n7th Sem BCE Get ready with your gears for exciting tour @ Jawalakhel Zoo',
    'Sports Week\nGet Set Go, Let\s collect the medals as much as you can. Prepare for various sports competition',
    'Food Festival\nEmpty your stomach right now, prepare yourself for the free food festival @ Ncit canteen',
    'Project Defense\n7th Sem BCE, Prepare for project defense'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: notices.length,
        separatorBuilder: (BuildContext context, int index) {
          return SizedBox(height: 10);
        },
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              // Navigator.push(
              //     context,
              //     MaterialPageRoute(
              //       builder: (context) => NoticeBoardDetail(
              //           notices[index],
              //           index % 2 == 0
              //               ? Colors.deepPurple[300]
              //               : Colors.indigo[300]),
              //     ));
            },
            child: Container(
              padding: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0),
                color: index % 2 == 0
                    ? Colors.deepPurple[300]
                    : Colors.indigo[300],
              ),
              child: Text(notices[index],
                  style: TextStyle(
                      fontWeight: FontWeight.w500, color: Colors.white)),
            ),
          );
        },
      ),
    );
  }
}
