// Features/Main/presentation/views/widgets/read_button.dart

import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ReadButton extends StatelessWidget {
  const ReadButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
      },
      child: Container(
        height: 35,
        width: 211,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: Color(0xff3B9AAF)
        ),
        child: Center(
          child: Text('Read Now',
          style: AppStyles.bold10.copyWith(
            fontSize: 16,
            color: Colors.white
          ),
          ),
        ),
      ),
    );
  }
}
