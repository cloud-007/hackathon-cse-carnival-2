import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/theme/color.dart';

class AppointmentTabScreen extends ConsumerStatefulWidget {
  const AppointmentTabScreen({super.key});

  @override
  ConsumerState<AppointmentTabScreen> createState() =>
      _AppointmentTabScreenState();
}

class _AppointmentTabScreenState extends ConsumerState<AppointmentTabScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0);
  }

  String getRandomDay() {
    final List<String> days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    final random = Random();
    int randomNumber = random.nextInt(7);
    return days[randomNumber];
  }

  String getRandomName() {
    final List<String> names = [
      'Dr. John Doe',
      'Mark Doe',
      'Sasuke Uchiha',
      'Naruto Uzumaki',
    ];
    final random = Random();
    int randomNumber = random.nextInt(4);
    return names[randomNumber];
  }

  String getRandomTitle() {
    final List<String> titles = [
      'Researcher',
      'Doctor',
      'Professor',
      'Scientist',
    ];
    final random = Random();
    int randomNumber = random.nextInt(4);
    return titles[randomNumber];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 100,
                      padding: const EdgeInsets.all(24),
                      margin: const EdgeInsets.symmetric(horizontal: 16),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.white,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '2',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Today',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '7',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Upcoming',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '2',
                                style: Theme.of(context).textTheme.titleLarge,
                              ),
                              const SizedBox(height: 4),
                              Text(
                                'Cancelled',
                                style: Theme.of(context).textTheme.bodyText2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  GestureDetector(
                    child: Container(
                      height: 100,
                      margin: const EdgeInsets.only(right: 12),
                      width: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: colorPrimary,
                      ),
                      child: const Icon(
                        Icons.add,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 16),
              Container(
                height: 600,
                padding: const EdgeInsets.only(top: 24, left: 16, right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Container(
                      height: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey.shade100,
                      ),
                      child: TabBar(
                        controller: _tabController,
                        labelColor: colorPrimary,
                        unselectedLabelColor: Colors.black,
                        tabs: const [
                          Tab(
                            text: 'Upcoming',
                          ),
                          Tab(
                            text: 'Past',
                          ),
                          Tab(
                            text: 'Cancelled',
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 16),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Today',
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 16),
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 140,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1000,
                                              ),
                                              child: Image.asset(
                                                'assets/icons/profile.png',
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    getRandomName(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium,
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    getRandomTitle(),
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              color: colorText,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        Container(
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.green.shade100,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Icon(
                                                Icons.timelapse_outlined,
                                                color: Colors.green,
                                              ),
                                              const SizedBox(width: 16),
                                              Text(
                                                getRandomDay(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                              const Expanded(
                                                child: Text(
                                                  '9:00AM - 10:00AM',
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 16);
                                },
                                itemCount: 2,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Past',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 16),
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 140,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1000,
                                              ),
                                              child: Image.asset(
                                                'assets/icons/profile.png',
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Dr. John Doe',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium,
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    'Researcher',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              color: colorText,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        Container(
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.green.shade100,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Icon(
                                                Icons.timelapse_outlined,
                                                color: Colors.green,
                                              ),
                                              const SizedBox(width: 16),
                                              Text(
                                                getRandomDay(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                              const Expanded(
                                                child: Text(
                                                  '9:00AM - 10:00AM',
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 16);
                                },
                                itemCount: 2,
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cancelled',
                                textAlign: TextAlign.start,
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                              const SizedBox(height: 16),
                              ListView.separated(
                                shrinkWrap: true,
                                physics: const NeverScrollableScrollPhysics(),
                                itemBuilder: (context, index) {
                                  return Container(
                                    height: 140,
                                    padding: const EdgeInsets.all(16),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: Colors.grey.shade100,
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                1000,
                                              ),
                                              child: Image.asset(
                                                'assets/icons/profile.png',
                                                height: 50,
                                                width: 50,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            const SizedBox(width: 16),
                                            Expanded(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Dr. John Doe',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .titleMedium,
                                                  ),
                                                  const SizedBox(height: 4),
                                                  Text(
                                                    'Researcher',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodyMedium,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const Icon(
                                              Icons.arrow_forward,
                                              color: colorText,
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 16),
                                        Container(
                                          height: 40,
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16,
                                          ),
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: Colors.red.shade100,
                                          ),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              const Icon(
                                                Icons.timelapse_outlined,
                                                color: Colors.red,
                                              ),
                                              const SizedBox(width: 16),
                                              Text(
                                                getRandomDay(),
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodyMedium,
                                              ),
                                              const Expanded(
                                                child: Text(
                                                  '9:00AM - 10:00AM',
                                                  textAlign: TextAlign.end,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },
                                separatorBuilder: (context, index) {
                                  return const SizedBox(height: 16);
                                },
                                itemCount: 2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
