import 'package:flutter/material.dart';
import 'package:zomato_ui/model/1st_item_list.dart';

class ModelList extends StatelessWidget {
  const ModelList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       scrollDirection: Axis.horizontal,
      
        child: Row(
          children: [
            foodItem(item: item[0]),
            foodItem(item: item[1]),
            foodItem(item: item[2]),
            foodItem(item: item[3]),
            foodItem(item: item[4]),
            foodItem(item: item[5]),
            foodItem(item: item[6]),
            foodItem(item: item[7]),
            foodItem(item: item[8]),
            foodItem(item: item[9]),
            foodItem(item: item[10]),
            foodItem(item: item[11]),
            foodItem(item: item[12]),
            foodItem(item: item[13]),
            foodItem(item: item[14]),
            foodItem(item: item[15]),
            foodItem(item: item[16]),
            foodItem(item: item[17]),
            
          ],
        )
        
      
    );
   
  } 
  Widget foodItem({required Items item}) {
    return Container(
      height: 100,
      width: 100,
      child: Column(children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(item.image),
        ),
        const SizedBox(
          height: 4,
          
        ),
        Text(
          item.title,
        )
        ]
      ),
    );
  }
}


