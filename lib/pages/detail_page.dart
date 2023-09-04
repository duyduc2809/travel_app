import 'package:flutter/material.dart';
import 'package:flutter_cubit/misc/colors.dart';
import 'package:flutter_cubit/widgets/app_button.dart';
import 'package:flutter_cubit/widgets/app_large_text.dart';
import 'package:flutter_cubit/widgets/app_text.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int gottenStars = 3;

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
                  decoration: const BoxDecoration(
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
                      icon: const Icon(Icons.menu),
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
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
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
                        Row(children: [
                          Wrap(
                            children: List.generate(5, (index) {
                              return Icon(
                                Icons.star,
                                color: index < gottenStars
                                    ? AppColors.textColor2
                                    : AppColors.textColor2,
                              );
                            }),
                          ),
                          const SizedBox(width: 10),
                          AppText(
                            text: '(4.0)',
                            color: AppColors.textColor2,
                          )
                        ]),
                        const SizedBox(
                          height: 25,
                        ),
                        AppLargeText(
                          text: 'People',
                          color: Colors.black.withOpacity(0.8),
                          size: 20,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        AppText(
                          text: 'Number of people in your group',
                          color: AppColors.mainColor,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Wrap(
                          children: List.generate(5, (index) {
                            return Container(
                              margin: const EdgeInsets.only(right: 10),
                              child: AppButtons(
                                color: Colors.black,
                                backgroundColor: AppColors.buttonBackground,
                                size: 50,
                                boderColor: AppColors.buttonBackground,
                                text: (index + 1).toString(),
                              ),
                            );
                          }),
                        ),
                      ]),
                ))
          ],
        ),
      ),
    );
  }
}
