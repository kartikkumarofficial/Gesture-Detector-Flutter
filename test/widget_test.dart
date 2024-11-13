// // try#1
//
//
// // onHorizontalDragUpdate: (details) {
// //   setState(() {
// //     action = 'Horizontally Dragged left \n started at: ${details.localPosition}';
// //   });
// // },
// // onVerticalDragStart: (details){
// //   setState(() {
// //     action='Vertically Dragged Down\nat ${details.localPosition}';
// //   });
// // },
//
//
// //try#2
//
// onPanStart:(details){
// startx = details.localPosition.dx;
// starty = details.localPosition.dy;
// },
//
// onHorizontalDragUpdate: (details){
// double finalx = details.localPosition.dx - startx;
// if (finalx > 0) {
// setState(() {
// action = 'Dragged Right';
// });
// } else if (finalx < 0) {
// setState(() {
// action = 'Dragged Left';
// });
// }
// },
//
// // onVerticalDragUpdate: (details){
// //   double finaly = details.localPosition.dy - starty;
// //   if (finaly > 0) {
// //     setState(() {
// //       action = 'Dragged Down';
// //     });
// //   } else if (finaly < 0) {
// //     setState(() {
// //       action = 'Dragged Up';
// //     });
// //   }
// // },