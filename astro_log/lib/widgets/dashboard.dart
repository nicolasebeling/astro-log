import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Container(
            height: 100,
            child: ListView.builder(
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return Container(
                  width: 100,
                  height: 100,
                  child: const Center(
                    child: const Text('Test'),
                  ),
                );
              },
              itemCount: 10,
              scrollDirection: Axis.horizontal,
            ),
          );
        },
        childCount: 10,
      ),
    );
  }
}
