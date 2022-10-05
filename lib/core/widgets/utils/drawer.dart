// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:weqpay/features/payments/application/pages/vault.dart';
//
// import '../../../features/payments/application/pages/dashboard.dart';
// import '../../../features/payments/application/pages/payment.dart';
// import '../colors_string.dart';
//
// class MenuDrawer extends StatelessWidget {
//   const MenuDrawer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Drawer(
//       // Add a ListView to the drawer. This ensures the user can scroll
//       // through the options in the drawer if there isn't enough vertical
//       // space to fit everything.
//       child: DecoratedBox(
//         decoration: const BoxDecoration(
//           color: primaryColor,
//         ),
//         child: ListView(
//           // Important: Remove any padding from the ListView.
//           padding: EdgeInsets.zero,
//           children: [
//             DrawerHeader(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Container(
//                     height: 80,
//                     // width: 100,
//                     decoration: BoxDecoration(
//                       color: primaryColor,
//                       borderRadius: BorderRadius.circular(20),
//                     ),
//                     child: Image.asset('assets/images/profile.png'),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(top: 10),
//                     child: Text(
//                       'Usman Fori',
//                       style: GoogleFonts.roboto(
//                         fontWeight: FontWeight.w400,
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                   const Text(
//                     'Usmanfori@gmail.com',
//                     style: TextStyle(),
//                   ),
//                 ],
//               ),
//             ),
//             _menuList(
//               text: 'Dashboard',
//               icon: 'assets/images/dashboard.svg',
//               onTap: () {
//                 // context.router.pushNamed('/Dashboard');
//                 Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => const Dashboard()),
//                 );
//               },
//             ),
//             _menuList(
//               text: 'My Vault',
//               icon: 'assets/images/valut.svg',
//               onTap: () {
//                 Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => const Vault()),
//                 );
//               },
//             ),
//             _menuList(
//               text: 'Payment',
//               icon: 'assets/images/payment.svg',
//               onTap: () {
//                 // context.router.pushNamed('/new-property');
//                 Navigator.of(context).push(
//                   MaterialPageRoute(builder: (context) => const Payment()),
//                 );
//               },
//             ),
//             _menuList(
//               text: 'Inventory',
//               icon: 'assets/images/inventory.svg',
//               onTap: () {
//                 // context.router.pushNamed('/new-property');
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(builder: (context) =>
//                 //   const Profile()), );
//               },
//             ),
//             _menuList(
//               text: 'Transaction',
//               icon: 'assets/images/transcation.svg',
//               onTap: () {
//                 // context.router.pushNamed('/new-property');
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(builder: (context) =>
//                 //   const Profile()), );
//               },
//             ),
//             _menuList(
//               text: 'Settings',
//               icon: 'assets/images/setting.svg',
//               onTap: () {
//                 // context.router.pushNamed('/user-settings');
//               },
//             ),
//             _menuList(
//               text: 'Help',
//               icon: 'assets/images/support.svg',
//               onTap: () {
//                 // Navigator.of(context).push(
//                 //   MaterialPageRoute(builder: (context) =>
//                 //   const CustomerSupport()), );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _menuList({
//     required String text,
//     required String icon,
//     required GestureTapCallback onTap,
//   }) {
//     return ListTile(
//       // tileColor:primaryColor,
//       leading: SvgPicture.asset(
//         icon,
//         // semanticsLabel: 'Acme Logo',
//         color: whiteColor,
//       ),
//       title: Text(
//         text,
//         style: const TextStyle(
//           color: whiteColor,
//         ),
//       ),
//       onTap: onTap,
//     );
//   }
// }
