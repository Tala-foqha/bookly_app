// Features/Main/presentation/views/widgets/latest_list_view.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/details_view.dart';
import 'package:bookly_app/Features/Main/presentation/views/widgets/latest_item.dart';
import 'package:flutter/material.dart';
class LatestListView extends StatelessWidget {
  const LatestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: EdgeInsets.all(20),
        itemCount: 7,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, DetailsView.routeName);
              },
              child: LatestItem()),
          );
        },
      ),
    );
  }
}
