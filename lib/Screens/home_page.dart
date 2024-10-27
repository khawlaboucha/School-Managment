import 'package:flutter/material.dart';
import 'package:management_student_app/Utils/colors.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Color(0xFFd5e7ff),
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: SafeArea(
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerRight,
                  child: RichText(
                    text: TextSpan(
                      text: "Wed",
                      style: TextStyle(
                        color: Color(0xFF263064),
                        letterSpacing: 0,
                        fontWeight: FontWeight.w900,
                      ),
                      children: [
                        TextSpan(text: "10 Oct",
                        style: TextStyle(
                          letterSpacing: -1,
                          color: Color(0xFF263064),
                          fontWeight: FontWeight.normal,
                        )
                        )
                      ]
                    ),
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(width: 1,color: Colors.white),
                        boxShadow: [BoxShadow(
                          color: Colors.blueGrey.withOpacity(0.2),
                          blurRadius: 7,
                          spreadRadius: 7,
                          offset: const Offset(0,5),
                        ),],
                        image:const  DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage("https://i.pinimg.com/564x/58/95/2b/58952b7b316912cfc3c24cfd15cbe553.jpg")
                        )
                      ),
                    ),
                    const SizedBox(width: 20,),
                     Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hi Jihane',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 27,
                          letterSpacing: -0.5,
                          color: Color(0xFF263064)
                        ),
                        ),
                        const SizedBox(width: 20,),
                        Text("Here is a list of schedule\nyou need check ....",
                        style: TextStyle(
                          height:1.8,
                          color: textColor.withOpacity(0.75)
                        ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
        Positioned(
            top: 220,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: ListView(
                children: [
                 seeAllItems( "TODAY CLASSES",3),
                  SizedBox(height: 20,),
                  todayclassesItems(
                      "7:00",
                      "The Basic of Typography II|",
                      "https://i.pinimg.com/564x/9b/5a/b8/9b5ab8390b3ddb61f274fd62ccf10ff9.jpg",
                      "Gabriel Sutton"),
                  todayclassesItems(
                      "9:30",
                      "The Design Psychology: Principale of Arts...",
                      "https://i.pinimg.com/564x/b0/57/3e/b0573e9aae8dfe37a314222edfa7d075.jpg",
                      "Jessie Reeves"),
                  const SizedBox(height: 20,),
                  seeAllItems( "YOUR TASKS",4),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        yourTaskItems(Colors.red,3,"The Basic of Typography II"),
                        yourTaskItems(Colors.green,10,"Design Psychology: Principale of arts"),
                        yourTaskItems(Colors.red,10,"Design Psychology: Principale of arts"),

                      ],
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }

  Container yourTaskItems(Color color,int dayLeft,String coursTitle) {
    return Container(
                        margin: EdgeInsets.only(right: 15),
                        padding: EdgeInsets.all(12),
                        height: 170,
                        width: 175,
                        decoration:BoxDecoration(
                          color: color.withOpacity(0.05),
                          borderRadius: BorderRadius.circular(20)
                        ),
                       child:  Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           const Text("DeadLine",style: TextStyle(
                             fontSize: 15,
                             color: Colors.black26,
                           ),),
                           Row(
                             children: [
                               CircleAvatar(radius: 4,backgroundColor:color),
                               const SizedBox(width: 5),
                               Text("$dayLeft days left ",style: const TextStyle(
                                 fontSize: 17,
                                 color: Colors.black54
                               ),)
                             ],
                           ),
                           const SizedBox(height: 20,),
                           SizedBox(width: 130,child: Text(coursTitle,
                           maxLines: 3,
                               overflow: TextOverflow.ellipsis,
                             style: TextStyle(
                               fontSize: 18,
                               color: Colors.black54,
                               fontWeight: FontWeight.bold
                             ),
                           ))
                         ],
                       ),
                      );
  }

  Row seeAllItems(title,number) {
    return Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   RichText(text: TextSpan(text:title,
                   style: const TextStyle(
                     fontWeight: FontWeight.w900,
                     color: Colors.black
                   ),
                     children: [
                       TextSpan(text: "($number)",style: TextStyle(color: Colors.grey,
                       fontWeight: FontWeight.normal,
                       ))
                     ]
                   )
                   ),
                   Text("See all",style: TextStyle(
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                       color: secondTextColor
                   ),)
                 ],
               );
  }

  Container todayclassesItems(time,title,profile,name) {
    return Container(
                  margin: const EdgeInsets.only(bottom: 15),
                  height: 110,
                  decoration: BoxDecoration(
                    color: kCardColor,
                    borderRadius: BorderRadius.circular(30),
                  ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   children: [
                     Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Text(time,style: TextStyle(
                           fontWeight: FontWeight.w800
                         ),),
                         const Text("AM",style: TextStyle(
                           fontWeight: FontWeight.bold,
                           color: Colors.grey,
                         ),),
                       ],
                     ),
                     Container(
                       width: 1,
                         color:Colors.grey.withOpacity(0.5),
                     ),
                     Padding(padding: EdgeInsets.all(20),
                     child: Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                       children: [
                         SizedBox(
                           width: MediaQuery.of(context).size.width-160,
                           child: Text(
                             title,
                             maxLines: 1,
                             overflow: TextOverflow.ellipsis,
                             style:const  TextStyle(
                               fontSize: 16
                             ),
                           ),
                         ),
                         Row(
                           children: [
                             Icon(Icons.location_on,
                             color: Colors.grey,
                             size: 20,
                             ),
                             SizedBox(width: 5,),
                             SizedBox(width: MediaQuery.of(context).size.width-160,
                             child: const Text("Room C1,Faclty of Art & Desig Building",
                             overflow: TextOverflow.ellipsis,
                             maxLines: 1,
                             style: TextStyle(
                               fontSize: 16,
                               color: Colors.grey
                             ),
                             ),
                             ),
                           ],
                         ),
                         Row(
                           children: [
                             CircleAvatar(backgroundImage: NetworkImage(profile),
                             radius: 12,
                             ),
                             const SizedBox(width: 5,),
                             Text(name,
                             style: const TextStyle(
                               color: Colors.grey,
                               fontSize: 15,

                             ),
                             ),
                           ],
                         )

                       ],
                     ),

                     )
                   ],
                 ),
                );
  }
}
