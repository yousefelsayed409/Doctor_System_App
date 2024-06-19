// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class OnBoardingView extends StatelessWidget {
//   const OnBoardingView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         appBar: _buildAppBar(context),
//         body: Container(
//           height: 590.v,
//           width: double.maxFinite,
//           padding: EdgeInsets.symmetric(vertical: 31.v),
//           child: Stack(
//             alignment: Alignment.topCenter,
//             children: [
//               Opacity(
//                 opacity: 0.06,
//                 child: CustomImageView(
//                   imagePath: ImageConstant.imgGroup,
//                   height: 443.v,
//                   width: 356.h,
//                   alignment: Alignment.topLeft,
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.topCenter,
//                 child: SizedBox(
//                   height: 491.v,
//                   width: double.maxFinite,
//                   child: Stack(
//                     alignment: Alignment.bottomCenter,
//                     children: [
//                       CustomImageView(
//                         imagePath: ImageConstant.imgImage,
//                         height: 491.v,
//                         width: 375.h,
//                         alignment: Alignment.center,
//                       ),
//                       Align(
//                         alignment: Alignment.bottomCenter,
//                         child: Container(
//                           height: 239.v,
//                           width: double.maxFinite,
//                           decoration: BoxDecoration(
//                             gradient: LinearGradient(
//                               begin: Alignment(0.5, 0),
//                               end: Alignment(0.5, 1),
//                               colors: [
//                                 theme.colorScheme.onPrimaryContainer
//                                     .withOpacity(0),
//                                 theme.colorScheme.onPrimaryContainer,
//                               ],
//                             ),
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Padding(
//                   padding: EdgeInsets.only(
//                     left: 43.h,
//                     right: 41.h,
//                   ),
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [
//                       Container(
//                         width: 279.h,
//                         margin: EdgeInsets.only(
//                           left: 4.h,
//                           right: 5.h,
//                         ),
//                         child: Text(
//                           "Best Doctor Appointment App",
//                           maxLines: 2,
//                           overflow: TextOverflow.ellipsis,
//                           textAlign: TextAlign.center,
//                           style: TextStyle(
//                             color: theme.colorScheme.primary,
//                             fontSize: 32.fSize,
//                             fontFamily: 'Inter',
//                             fontWeight: FontWeight.w700,
//                           ),
//                         ),
//                       ),
//                       SizedBox(height: 13.v),
//                       SizedBox(
//                         width: 290.h,
//                         child: RichText(
//                           text: TextSpan(
//                             children: [
//                               TextSpan(
//                                 text:
//                                     "Manage and schedule all of your medical appointments ",
//                                 style: theme.textTheme.bodySmall,
//                               ),
//                               TextSpan(
//                                 text:
//                                     "easily with Docdoc to get a new experience.",
//                                 style: theme.textTheme.bodySmall,
//                               ),
//                             ],
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: _buildGetStarted(context),
//       ),
//     );
//   }
// }