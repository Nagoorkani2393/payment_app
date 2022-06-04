import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class SettingsPage extends StatelessWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.black,
      child: SafeArea(
        child: Center(
          child: Container(
            width: 220.0,
            height: 300.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              color: Colors.white,
              image: const DecorationImage(
                alignment: Alignment.topCenter,
                image: NetworkImage(
                    "https://wallpapercave.com/wp/wp4676576.jpg",
                   ),
              )
            ),
            child: Column(
              children: const [
                Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.account_balance_wallet_outlined, color: Colors.white,),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}