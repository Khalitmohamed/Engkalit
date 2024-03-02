import 'package:flutter/material.dart';



 void main() => runApp(const Calculater());

 // ignore: camel_case_types, use_key_in_widget_constructors
 
  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Calculater(),
    );

  }
 
 class Calculater extends StatefulWidget {
  const Calculater({super.key});

  @override
  State<Calculater> createState() => _CalculaterState(
    

  );
}

class _CalculaterState extends State<Calculater> {

  Widget calcbutton(String btntxt,Color btncolor,Color txtcolor){
    return Container(
      child:raisedButton(
        onPressed:(){
          // to do add functio for button press
          
        },
        child:Text(btntxt,
        style: TextStyle(
          fontSize: 35,
          color: txtcolor,
        ),
        ),
        shape:const CircleBorder(),
        color:btncolor,
        padding:const EdgeInsets.all(20),
        
        
      ),

    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(title: const Text('calculater'),backgroundColor: Colors.black,),
      body: Padding(padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Column(mainAxisAlignment: MainAxisAlignment.end,
      children: [
        //calculater display
        const Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(padding:EdgeInsets.all(10.0),
            child: Text('0',
            textAlign:TextAlign.left,
            style: TextStyle(color:Colors.white,
            fontSize: 100),
        
        
            )
        
        
            )
          ],
        ),
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //here buttons willbe called where will be pass some arguments
                 calcbutton('Ac',Colors.grey,Colors.black),
                 calcbutton('+/-',Colors.grey,Colors.black),
                 calcbutton('%',Colors.grey,Colors.black),
                 calcbutton('/',const Color.fromARGB(255, 203, 137, 4),Colors.white),
                 

          ],

        ),
        const SizedBox(height:10 ,),

        //another row two
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //here buttons willbe called where will be pass some arguments
                 calcbutton('Ac',Colors.grey,Colors.black),
                 calcbutton('+/-',Colors.grey,Colors.black),
                 calcbutton('%',Colors.grey,Colors.black),
                 calcbutton('/',const Color.fromARGB(255, 203, 137, 4),Colors.white),
                 

          ],

        ),
        const SizedBox(height:10 ,),
        // row three
          Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //here buttons willbe called where will be pass some arguments
                 calcbutton('7',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('8',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('9',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('x',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 

          ],

        ),
        const SizedBox(height:10 ,),
        //row four
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //here buttons willbe called where will be pass some arguments
                 calcbutton('4',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('5',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('6',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('-',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 

          ],

        ),
        const SizedBox(height:10 ,),
        //row 5
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //here buttons willbe called where will be pass some arguments
                 calcbutton('1',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('2',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('3',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('+',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 

          ],

        ),
            const SizedBox(height:10 ,),

        
        /// now its last buttons and its different
         Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //This is button

          children:[  raisedButton(
            padding:const EdgeInsets.fromLTRB(34, 20, 128, 20),
            onPressed:(){

              ///button function

            },
            shape:const StadiumBorder(),
            child:const Text("0",
            style:TextStyle(
              fontSize: 35,
              color:Colors.white,
                

            )
          
            ),

          color:const Color.fromARGB(255, 50, 49, 49),
               

          ),
  

               calcbutton('.',const Color.fromARGB(255, 50, 49, 49),Colors.white),
                 calcbutton('=',const Color.fromARGB(255, 50, 49, 49),Colors.white),
          ]
          
          

      
    

    
  ),









      ],),),


    );
  }

  // the logic code

  dynamic text ='0';
  double numOne = 0;
  double numTwo = 0;

  dynamic result = '';
  dynamic finalResult = '';
  dynamic opr = '';
  dynamic preOpr = '';
   void calculation(btnText) {


    if(btnText  == 'AC') {
      text ='0';
      numOne = 0;
      numTwo = 0;
      result = '';
      finalResult = '0';
      opr = '';
      preOpr = '';

    } else if( opr == '=' && btnText == '=') {

      if(preOpr == '+') {
         finalResult = add();
      } else if( preOpr == '-') {
          finalResult = sub();
      } else if( preOpr == 'x') {
          finalResult = mul();
      } else if( preOpr == '/') {
          finalResult = div();
      } 

    } else if(btnText == '+' || btnText == '-' || btnText == 'x' || btnText == '/' || btnText == '=') {

      if(numOne == 0) {
          numOne = double.parse(result);
      } else {
          numTwo = double.parse(result);
      }

      if(opr == '+') {
          finalResult = add();
      } else if( opr == '-') {
          finalResult = sub();
      } else if( opr == 'x') {
          finalResult = mul();
      } else if( opr == '/') {
          finalResult = div();
      } 
      preOpr = opr;
      opr = btnText;
      result = '';
    }
    else if(btnText == '%') {
     result = numOne / 100;
     finalResult = doesContainDecimal(result);
    } else if(btnText == '.') {
      if(!result.toString().contains('.')) {
        result = '$result.';
      }
      finalResult = result;
    }

    else if(btnText == '+/-') {
        result.toString().startsWith('-') ? result = result.toString().substring(1): result = '-$result';        
        finalResult = result;        

    } 

    else {
        result = result + btnText;
        finalResult = result;        
    }


    setState(() {
          text = finalResult;
        });

  }


  String add() {
         result = (numOne + numTwo).toString();
         numOne = double.parse(result);           
         return doesContainDecimal(result);
  }

  String sub() {
         result = (numOne - numTwo).toString();
         numOne = double.parse(result);
         return doesContainDecimal(result);
  }
  String mul() {
         result = (numOne * numTwo).toString();
         numOne = double.parse(result);
         return doesContainDecimal(result);
  }
  String div() {
          result = (numOne / numTwo).toString();
          numOne = double.parse(result);
          return doesContainDecimal(result);
  }


  String doesContainDecimal(dynamic result) {

    if(result.toString().contains('.')) {
        List<String> splitDecimal = result.toString().split('.');
        if(!(int.parse(splitDecimal[1]) > 0)) {
          return result = splitDecimal[0].toString();
        }
    }
    return result; 
  }

}

raisedButton({required Null Function() onPressed, required Text child, 
required shape, required Color color, required EdgeInsets padding}) async {
}





















































































































































































































































































































// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         // This is the theme of your application.
//         //
//         // TRY THIS: Try running your application with "flutter run". You'll see
//         // the application has a purple toolbar. Then, without quitting the app,
//         // try changing the seedColor in the colorScheme below to Colors.green
//         // and then invoke "hot reload" (save your changes or press the "hot
//         // reload" button in a Flutter-supported IDE, or press "r" if you used
//         // the command line to start the app).
//         //
//         // Notice that the counter didn't reset back to zero; the application
//         // state is not lost during the reload. To reset the state, use hot
//         // restart instead.
//         //
//         // This works for code too, not just values: Most code changes can be
//         // tested with just a hot reload.
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }

// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//       appBar: AppBar(
//         // TRY THIS: Try changing the color here to a specific color (to
//         // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
//         // change color while the other colors stay the same.
//         backgroundColor: Theme.of(context).colorScheme.inversePrimary,
//         // Here we take the value from the MyHomePage object that was created by
//         // the App.build method, and use it to set our appbar title.
//         title: Text(widget.title),
//       ),
//       body: Center(
//         // Center is a layout widget. It takes a single child and positions it
//         // in the middle of the parent.
//         child: Column(
//           // Column is also a layout widget. It takes a list of children and
//           // arranges them vertically. By default, it sizes itself to fit its
//           // children horizontally, and tries to be as tall as its parent.
//           //
//           // Column has various properties to control how it sizes itself and
//           // how it positions its children. Here we use mainAxisAlignment to
//           // center the children vertically; the main axis here is the vertical
//           // axis because Columns are vertical (the cross axis would be
//           // horizontal).
//           //
//           // TRY THIS: Invoke "debug painting" (choose the "Toggle Debug Paint"
//           // action in the IDE, or press "p" in the console), to see the
//           // wireframe for each widget.
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headlineMedium,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
