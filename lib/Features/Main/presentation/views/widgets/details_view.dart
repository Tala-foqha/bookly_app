// Features/Main/presentation/views/widgets/details_view.dart
import 'package:bookly_app/Features/Main/presentation/views/widgets/details_view_bod_bloc_builder.dart';

import 'package:flutter/material.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key, });
  static const routeName = 'BookDetails';
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: DetailsViewBodyBlocBuilder(),
    );
  }
}
