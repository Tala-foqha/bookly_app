// Features/Main/presentation/views/widgets/books_tab.dart
import 'package:bookly_app/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class BooksTab extends StatefulWidget {
   BooksTab({super.key});

  @override
  State<BooksTab> createState() => _BooksTabState();
}

class _BooksTabState extends State<BooksTab> {
 final List<String>tabs=[
  'Latest',
  'Popular',
  'Trending'

];

int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35,right: 44.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(tabs.length, (index){
            bool isSelected=currentIndex==index;
        // SizedBox(width: 24,);
          return GestureDetector(
          
            onTap: (){
              setState(() {
                currentIndex=index;
              });
      
            },
            child: Container(
              padding: EdgeInsets.all(5),
              height: 33,
              width: 76,
            decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                border: Border.all(
                  color:isSelected?Color(0xff9691D6) :Color(0xffFFE3E3)
                ),
                boxShadow: [
                  BoxShadow(
            
            color: Colors.black.withOpacity(0.25),
            offset: Offset(0, 4),
            blurRadius: 4,
            spreadRadius: 0
                  )
                ]
            
                
            ),
            child: Center(
              child: Text(tabs[index],style: AppStyles.bold24.copyWith(fontSize: 14,
                color: Colors.black),),
            ),
            ),
          );
        })
      
        
      ),
    );
  }
}