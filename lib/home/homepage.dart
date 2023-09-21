import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:zomato_ui/model/model_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      
      backgroundColor: Colors.grey[100],
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Stack(
           children: [
            Column(
              children: [
              
                Container(
                  height: MediaQuery.of(context).size.height * 0.30,
                  width: MediaQuery.of(context).size.width * 1.60,
                  margin: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(borderRadius: BorderRadiusDirectional.all(Radius.circular(25)),image:DecorationImage(image: AssetImage('assets/food-images/dashboard.png')) ),
                  
                ),
                Row(
                
                  children: [
                    const SizedBox(width: 2,),
                    Flexible(child: Divider(thickness: 1,color: Colors.grey[300],)),
                    const SizedBox(width: 15,),
                    const Text("EXPLORE",style: TextStyle(color: Colors.grey),),
                    const SizedBox(width: 15,),
                    Flexible(child: Divider(thickness: 1,color: Colors.grey[300],)),
                    const SizedBox(width: 2,),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  children: [
                      Container(
                        height: MediaQuery.of(context).size.height * 0.20,
                        width: MediaQuery.of(context).size.width * 0.94,
                        margin: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(borderRadius: BorderRadiusDirectional.all(Radius.circular(25)),
                        color: Colors.white ),
                      child:  Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Padding(
                            padding: EdgeInsets.only(top: 30,right: 280),
                            child: Text('Offers',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                          ),
                          Row(
                            children: [
                              const SizedBox(width: 20,),
                              const SizedBox(height: 50,width:250 ,
                                child: Text('Up to 60% OFF, Flat Discounts, and other great offers',textAlign: TextAlign.start,style: TextStyle(fontSize: 15,color: Colors.grey),)),
                             const SizedBox(width: 8,),
                              Padding(
                                padding: const EdgeInsets.only(right: 30),
                                child: Lottie.asset('assets/looties/offer.json',height: 65,width: 60),
                              ),
                            ],
                          )
                        ],
                      ),
                  
                      )
                  ],
                ),
                Row(
                
                  children: [
                    const SizedBox(width: 2,),
                    Flexible(child: Divider(thickness: 1,color: Colors.grey[300],)),
                    const SizedBox(width: 15,),
                const Text("WHAT'S ON YOUR MIND?",style: TextStyle(color: Colors.grey, ),),
                 const SizedBox(width: 15,),
                    Flexible(child: Divider(thickness: 1,color: Colors.grey[300],)),
                    const SizedBox(width: 2,),
                  ],
                ),
                
                const SizedBox(height: 10,),
                 const ModelList()
                ]
                ),
              ],
            
           
        ),
      ),
     appBar: AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
     leadingWidth: 10000,
     bottom: PreferredSize(
       preferredSize: const Size.fromHeight(50),
       child: Container(
         height: 50,
         width: MediaQuery.of(context).size.width * 0.90,
         decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Colors.grey[100]),
         child:  Center(
           child: TextField(
             decoration: const InputDecoration(border: InputBorder.none,prefixIcon: Icon(Icons.search),prefixIconColor: Colors.red,suffixIcon: Icon(Icons.mic_none_rounded,),suffixIconColor: Colors.red,hintText: 'Restaurent name or a dish.'),
             cursorColor: Colors.grey[200],
           )
         ),
       ),),
       toolbarHeight: 50,
      
      leading: const Row(
        children: [
          Icon(Icons.location_on_rounded,color: Colors.red,size: 30,),
          Column(
            children: [
              Text('Home',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black),),
              Text('your address ',style: TextStyle(color: Colors.grey),),
            ],
          ),
        ],
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(top: 1),
          child: CircleAvatar(
            radius: 30,
              backgroundImage: AssetImage('assets/food-images/profile.png'),
          ),
        ),
       
      ],
    )
    );
  }
  
  }
  
