import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        child: Stack(
          children: [
            Positioned(
                left: 0,
                right: 0,
                child: Container(
                  width: double.maxFinite,
                  height: 350,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('img/mountain.jpeg'),
                        fit: BoxFit.cover),
                  ),
                )),
            Positioned(
                top: 50,
                left: 20,
                child: Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                    )
                  ],
                )),
            Positioned(
                top: 320,
                child: Container(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 30),
                  color: Colors.red,
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(children: [
                    Row(children: [
                      AppLargeText(
                        text: 'Yosemite',
                        color: Colors.black.withOpacity(0.8),
                      ),
                      AppLargeText(
                        text: '\$ 250',
                        color: AppColors.mainColor,
                      ),
                    ]),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(width: 5),
                        AppText(
                          text: 'USA, California',
                          color: AppColors.textColor1,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
