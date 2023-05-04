import 'package:flutter/material.dart';
// import 'package:icon_decoration/icon_decoration.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}


class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController Field1 = TextEditingController();
  TextEditingController Field2 = TextEditingController();
  TextEditingController Field3 = TextEditingController();
  @override
  void initState() {
    Field1.text = ""; //innitail value of text field
    Field2.text = "";
    Field3.text="";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("Gratitude"),
          centerTitle: true,
          backgroundColor: Colors.grey,
        ),
        body:SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
            mainAxisAlignment: MainAxisAlignment.center,
                    children:[ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () { },
                  child: Text('send'),
                ),
                      SizedBox(
                        height: 50,
                        width: 50,
                        // <-- SEE HERE
                      ),
                Align(
                        child:ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.blue, // background
                    onPrimary: Colors.white, // foreground
                  ),
                  onPressed: () { },
                  child: Text('Journal'),
                ))]),
                Text('Write three points on gratitude!',style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.blue,
                  decorationColor: Colors.redAccent,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                ),
                  maxLines: 4,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,),
                TextField(
                    controller: Field1,
                    decoration: InputDecoration(
                      labelText: "I am grateful for",
                      icon: Icon(Icons.monitor_heart_sharp),

                    )
                ),
                TextField(
                    controller: Field2,
                    decoration: InputDecoration(
                      labelText: "I am grateful for",
                      icon: Icon(Icons.monitor_heart_sharp), //icon at head of input
                    )
                ),

                TextField(
                    controller: Field3,
                    decoration: InputDecoration(
                        icon: Icon(Icons.monitor_heart_rounded), //icon at head of input
                        //prefixIcon: Icon(Icons.people), //you can use prefixIcon property too.
                        labelText: "I am grateful for",
                        //icon at tail of input
                    )
                ),
                SizedBox(
                  height: 10,
                  // <-- SEE HERE
                ),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon( // <-- Icon
                    Icons.share,
                    size: 24.0,
                  ),
                  label: Text('Share'), // <-- Text
                ),


            ],
          )
    ),
        ),
      floatingActionButton: FloatingActionButton(
        // When the user presses the button, show an alert dialog containing
        // the text that the user has entered into the text field.
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) {
              return AlertDialog(
                // Retrieve the text the that user has entered by using the
                // TextEditingController.
                content: Text(Field1.text + Field2.text),


              );
            },
          );
        },
        tooltip: 'Show me the value!',
        child: const Icon(Icons.text_fields),
      ),
    );

  }
}