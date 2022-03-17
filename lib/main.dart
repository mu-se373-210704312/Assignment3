import "package:flutter/material.dart";


void main(){
  runApp(myApp());
}

class myApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}

class MyAppState extends State<myApp>{
  var counter=0;
  var textt="I'm not clicked yet";
  void restartCounter(){
    setState(() {
      counter=0;
      textMessage();
    });

  }
  void clickedCounter(){
    setState(() {
      counter+=1;
      textMessage();
    });


  }
  void textMessage(){
    setState(() {
      if(counter==0){
        textt="I'm not clicked";
      }
      else{
        textt="I'm clicked now";

      }

    });
  }
  Widget build(BuildContext context){
    return MaterialApp(
        home:Scaffold(
          appBar: AppBar(
            title: Text("My Application"),
          ),
          body:Column(
            children:<Widget> [Container(alignment: Alignment.center,
              margin: EdgeInsets.fromLTRB(0, 80, 0, 0),
              child: OutlinedButton(
                style: OutlinedButton.styleFrom(primary: Colors.white,
                    minimumSize: Size(10,1),
                    side: BorderSide(
                      width: 2.0,
                      color: Colors.black45,

                    ))
                ,child: Text(""),
                onPressed: restartCounter,),

            ),
              Text("Click for restart.",
                style: TextStyle(fontSize: 12),),
              Padding(padding: EdgeInsets.all(50.0)),
              Container(alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child :ElevatedButton(
                  child: Text(textt),
                  onPressed: clickedCounter,
                  style: ElevatedButton.styleFrom(
                      primary: Colors.blue,
                      padding: const EdgeInsets.all(15),
                      textStyle: TextStyle(fontSize: 20),
                      alignment: Alignment.center

                  ),),

              ),
              Container(alignment: Alignment.center,
                margin: EdgeInsets.fromLTRB(0, 0, 0,50),
                child:Text(counter.toString(),
                  style: TextStyle(fontSize: 20),),),
              Text(textt,
                style: TextStyle(fontSize: 15),)



            ],
          ),
        )
    );
  }
}
