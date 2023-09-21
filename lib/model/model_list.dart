import 'package:flutter/material.dart';
import 'package:zomato_ui/model/1st_item_list.dart';

class ModelList extends StatelessWidget {
  const ModelList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
       scrollDirection: Axis.horizontal,
      
        child: Column(
          children: [
            Row(
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
            ),
            Row(
          children: [
            foodItem2(item2: item2[0]),
            foodItem2(item2: item2[1]),
            foodItem2(item2: item2[2]),
            foodItem2(item2: item2[3]),
            foodItem2(item2: item2[4]),
            foodItem2(item2: item2[5]),
            foodItem2(item2: item2[6]),
            foodItem2(item2: item2[7]),
            foodItem2(item2: item2[8]),
            foodItem2(item2: item2[9]),
            foodItem2(item2: item2[10]),
            foodItem2(item2: item2[11]),
            foodItem2(item2: item2[12]),
            foodItem2(item2: item2[13]),
            foodItem2(item2: item2[14]),
            foodItem2(item2: item2[15]),
            foodItem2(item2: item2[16]),
            foodItem2(item2: item2[17]),
            

            
          ],
        )
        
      
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
  Widget foodItem2({required Item2 item2}) {
    return Container(
      height: 100,
      width: 100,
      child: Column(children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage(item2.image),
        ),
        const SizedBox(
          height: 4,
          
        ),
        Text(
          item2.title,
        )
        ]
      ),
    );
  }
}


