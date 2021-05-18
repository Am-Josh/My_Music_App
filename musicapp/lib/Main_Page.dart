import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: Colors.deepPurple,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 40,),
          Padding(
            padding: EdgeInsets.only(left: 20,right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(Icons.arrow_back,color: Colors.white,),
                Text("Now Playing", style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                Icon(Icons.menu,color: Colors.white,),
              ],
            ),
          ),
          SizedBox(height: 30,),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: 30,),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.favorite,color: Colors.pinkAccent,size:30,),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Center(
                    child: Container(
                      height: 250,
                      width: 250,
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey.shade100,
                        borderRadius: BorderRadius.circular(200),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset('assets/image.jpg',fit: BoxFit.cover,),
                      ),
                    ),
                  ),
                  SizedBox(height: 30,),
                  Center(
                    child: Text("Jeje La Aiye",style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold),),
                  ),
                  SizedBox(height: 8,),
                  Center(
                    child: Text("Yinka Ayefele",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.grey),),
                  ),
                  SizedBox(height: 30,),
                  Padding(
                    padding: EdgeInsets.only(left: 20,right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text("0.58",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                        Text("3.52",style: TextStyle(fontSize: 12,color: Colors.black,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                  Slider(
                    value: 0.5,
                    onChanged: (value){},
                    activeColor: Colors.red,
                    inactiveColor: Colors.grey.shade500,
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.only(left: 30,right: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.repeat,size: 25,),
                        Icon(Icons.skip_previous,size: 25,),
                        Container(
                          height: 60,
                          width: 60,
                          child: FloatingActionButton(
                            onPressed: (){},
                            backgroundColor: Colors.deepPurple,
                            child: Icon(Icons.pause,color: Colors.white,size: 30,),
                          ),
                        ),
                        Icon(Icons.skip_next,size: 25,),
                        Icon(Icons.shuffle,size: 25,),
                      ],
                    ),
                  )
                ],
              ),
          ),

          )
        ],
      ),
    );
  }

}