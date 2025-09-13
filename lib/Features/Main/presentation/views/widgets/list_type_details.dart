// Features/Main/presentation/views/widgets/list_type_details.dart

import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ListTypeDetails extends StatelessWidget {
  const ListTypeDetails( {super.key, required this.text, required this.color});
  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 2, bottom: 2, right: 18, left: 18),
      //height: 14,
      //width: 61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: Text(
        text,
        style: AppStyles.bold14.copyWith(fontSize: 9, color: Colors.white),
      ),
    );
  }
}
