import 'package:flutter/material.dart';

class Header extends StatelessWidget{

  final String title;
  const Header({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text("Done",style: TextStyle(
            color: Colors.blue,
            fontWeight: FontWeight.w500
        ),),
        Text(title,style: TextStyle(
            fontWeight: FontWeight.w700
        ),),
        Icon(Icons.settings,size: 16,color: Colors.grey[900],)
      ],
    );
  }
}

class HomePage extends StatelessWidget {
    const HomePage({
    super.key,
  });

   @override
   Widget build(BuildContext context){
     return Scaffold(
       body: SafeArea(
           child: Padding(
               padding: EdgeInsets.all(16),
               child: Column(
                 children: [
                    Header(title: "Profile",),
                    SizedBox(
                      height: 32,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          radius: 40,
                          backgroundColor:Colors.grey[200],
                          child: Icon(Icons.person,size:50 ,),
                        ),
                        SizedBox(height: 12),
                        Text("Anai's Fourati",
                          style: TextStyle(
                            fontWeight: FontWeight.w700,
                            fontSize: 18
                          ),
                        ),
                        Text("Gold Member",style: TextStyle(
                          color: Colors.orange
                        ),),
                      ],
                    )
                 ],
               ),
           )
       ),
     );
   }
}


