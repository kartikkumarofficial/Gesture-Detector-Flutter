

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  double startx =0.0;
  double starty = 0.0;
  String action = '';

  @override
  Widget build(BuildContext context) {
    var srcheight = MediaQuery.of(context).size.height;
    var srcwidth = MediaQuery.of(context).size.width;
    List<String> arrDrawerItems = ['item1', 'item2', 'item3'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Gesture Detector',
          style: GoogleFonts.cookie(
            fontSize: srcwidth * 0.1,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      endDrawer: Container(
        height: srcheight * 1,
        width: srcwidth * 0.5,
        color: Colors.greenAccent,
        alignment: Alignment.topLeft,
        child: ListView.builder(
          itemCount: arrDrawerItems.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(arrDrawerItems[index]),
          ),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.black,
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.only(top: srcheight * 0.1),
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      action = 'Single Tapped';
                    });
                  },
                  onDoubleTap: () {
                    setState(() {
                      action = 'Double Tapped';
                    });
                  },
                  onLongPress: () {
                    setState(() {
                      action = 'Long Pressed';
                    });
                  },
                  // onPanStart:(details){
                  //   startx = details.localPosition.dx;
                  //   starty = details.localPosition.dy;
                  // },
                  onHorizontalDragUpdate: (details) {
                    if (details.delta.dx > 0) {
                      setState(() {
                        action = 'Dragged Right';
                      });
                    } else if (details.delta.dx < 0) {
                      setState(() {
                        action = 'Dragged Left';
                      });
                    }
                  },

                  onVerticalDragUpdate: (details) {
                    if (details.delta.dy > 0) {
                      setState(() {
                        action = 'Dragged Down';
                      });
                    } else if (details.delta.dy < 0) {
                      setState(() {
                        action = 'Dragged Up';
                      });
                    }
                  },



                  // onHorizontalDragUpdate: (details){
                  //   double finalx = details.localPosition.dx - startx;
                  //   if (finalx > 0) {
                  //     setState(() {
                  //       action = 'Dragged Right';
                  //     });
                  //   } else if (finalx < 0) {
                  //     setState(() {
                  //       action = 'Dragged Left';
                  //     });
                  //   }
                  // },
                  //
                  // onVerticalDragUpdate: (details){
                  //   double finaly = details.localPosition.dy - starty;
                  //   if (finaly > 0) {
                  //     setState(() {
                  //       action = 'Dragged Down';
                  //     });
                  //   } else if (finaly < 0) {
                  //     setState(() {
                  //       action = 'Dragged Up';
                  //     });
                  //   }
                  // },



                  // onHorizontalDragUpdate: (details) {
                  //   setState(() {
                  //     action = 'Horizontally Dragged left \n started at: ${details.localPosition}';
                  //   });
                  // },
                  // onVerticalDragStart: (details){
                  //   setState(() {
                  //     action='Vertically Dragged Down\nat ${details.localPosition}';
                  //   });
                  // },
                  child: Container(
                    height: srcheight * 0.6,
                    width: srcwidth * 0.9,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Opacity(
                      opacity: 0.3,
                      child: Text(
                        'Tap here',
                        style: GoogleFonts.lato(
                          fontSize: srcwidth*0.08,
                          color: Colors.white,
                          // fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              height: srcwidth * 0.2,
              width: srcwidth * 0.9,
              alignment: Alignment.center,
              child: Center(
                child: Text(
                  action,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
