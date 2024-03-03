import 'package:aarogya_meds/screens/Home/home_card.dart';
import 'package:aarogya_meds/utils/common.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeMain extends StatefulWidget {
  const HomeMain({super.key});

  @override
  State<HomeMain> createState() => _HomeMainState();
}

class _HomeMainState extends State<HomeMain> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                width: double.infinity,
                height: 310,
                child: Padding(
                  padding: appPagePadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 50),
                      const Text(
                        'Good Morning Saantha',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w500,
                          color: AppColors.white,
                        ),
                      ),
                      const Text(
                        'What do you want to do today?',
                        style: TextStyle(
                          fontSize: 13,
                          color: AppColors.white,
                        ),
                      ),
                      const SizedBox(height: 25),
                      TextFormField(
                        controller: searchController,
                        readOnly: false,
                        onTap: () {},
                        style: const TextStyle(fontSize: 14),
                        keyboardType: TextInputType.text,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: AppColors.white,
                          hintText: 'Search by drug or pharmacy',
                          hintStyle: const TextStyle(color: Colors.black38),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 15,
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.search),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 80),
              const Padding(
                padding: appPagePadding,
                child: Column(
                  children: [
                    Text(
                      'Daily Insights',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: appPagePadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    HomeCard(
                      title: 'Daily Plan',
                      onTap: () {},
                    ),
                    HomeCard(
                      title: 'Daily Plan',
                      onTap: () {},
                    ),
                    HomeCard(
                      title: 'Daily Plan',
                      onTap: () {},
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 200,
            left: 0,
            right: 0,
            child: Padding(
              padding: appPagePadding,
              child: Container(
                height: 170,
                decoration: BoxDecoration(
                    color: AppColors.primarylite,
                    borderRadius: BorderRadius.circular(8)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 20, horizontal: 15),
                      child: SizedBox(
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Get latest drug news',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 10),
                              child: Text(
                                'This widget is the root of your application.',
                                style: TextStyle(
                                    fontSize: 12, color: AppColors.textprimary),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                              width: 110,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.primary,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: appBorderRadius,
                                  ),
                                ),
                                onPressed: () {},
                                child: const Text(
                                  'Learn More',
                                  style: TextStyle(
                                    color: AppColors.white,
                                    fontSize: 11,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Image.asset('lib/assets/home-medical-drug.png')
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
