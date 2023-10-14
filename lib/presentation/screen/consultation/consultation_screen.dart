import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reachout/presentation/screen/consultation/widgets/appointment_tab_screen.dart';
import 'package:reachout/presentation/screen/consultation/widgets/consultation_tab_screen.dart';

class ConsultationScreen extends ConsumerStatefulWidget {
  final bool? shouldAutoFocus;

  const ConsultationScreen({
    super.key,
    this.shouldAutoFocus = false,
  });

  @override
  ConsumerState<ConsultationScreen> createState() => _ConsultationScreenState();
}

class _ConsultationScreenState extends ConsumerState<ConsultationScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Consultation',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        bottom: TabBar(
          controller: _tabController,
          labelColor: Colors.white,
          dividerColor: Colors.white,
          indicatorColor: Colors.white,
          unselectedLabelColor: Colors.white.withOpacity(0.5),
          tabs: const [
            Tab(
              text: 'Consultation',
            ),
            Tab(
              text: 'Appointment',
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: const [
          ConsultationTabScreen(),
          AppointmentTabScreen(),
        ],
      ),
    );
  }
}
