
// class DialogContainer extends StatelessWidget {
//   final Widget title;
//   final Widget message;
//   final Widget actions;
//   final Widget header;
//   final Color borderColor;

//   const DialogContainer({
//     Key key,
//     this.title,
//     this.message,
//     this.actions,
//     this.header,
//     this.borderColor,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       color: Colors.transparent,
//       child: Center(
//         child: Container(
//           margin: EdgeInsets.symmetric(horizontal: Spacing.xxl),
//           decoration: BoxDecoration(
//               color: Colors.white, borderRadius: BorderRadius.circular(4)),
//           child: ClipRRect(
//             borderRadius: BorderRadius.circular(4),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 vSpaceL,
//                 IconTheme(child: header, data: IconThemeData(size: 60)),
//                 SizedBox(height: Spacing.s),
//                 Padding(
//                     child: DefaultTextStyle(
//                         child: title,
//                         overflow: TextOverflow.ellipsis,
//                         maxLines: 3,
//                         textAlign: TextAlign.center,
//                         style: Theme.of(context)
//                             .textTheme
//                             .headline6
//                             .copyWith(color: Colors.black)),
//                     padding: const EdgeInsets.symmetric(horizontal: Spacing.l)),
//                 SizedBox(height: Spacing.m),
//                 Padding(
//                     child: DefaultTextStyle(
//                         maxLines: 5,
//                         child: message,
//                         overflow: TextOverflow.ellipsis,
//                         textAlign: TextAlign.center,
//                         style: Theme.of(context)
//                             .textTheme
//                             .bodyText2
//                             .copyWith(color: AQColors.darkGrayishBlue)),
//                     padding:
//                         const EdgeInsets.symmetric(horizontal: Spacing.xl)),
//                 vSpaceL,
//                 actions,
//                 vSpaceL,
//                 Container(height: Spacing.xxs, color: borderColor)
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
