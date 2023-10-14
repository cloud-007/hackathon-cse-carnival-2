import 'package:flutter/material.dart';
import 'package:reachout/presentation/routes.dart';
import 'package:reachout/presentation/screen/main_screen.dart';

class HomeSearch extends StatelessWidget {
  const HomeSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).popAndPushNamed(
          Routes.main,
          arguments: MainScreenArgs(index: 1, shouldAutoFocus: true),
        );
      },
      child: Container(
          height: 50,
          margin: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: const Row(
            children: [
              SizedBox(width: 8),
              Icon(Icons.search),
              SizedBox(width: 8),
              Expanded(
                child: Text(
                  'Search for anything',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ),
              SizedBox(width: 8),
            ],
          )),
    );
  }
}
