import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:untitled5/button.dart';




import 'global.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculatrice',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void initState(){
    super.initState();

  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              flex: 2,
              child: Observer(
                builder: (_) => Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 5,
                            color: Colors.black,
                          ),
                          Row(
                            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                width: MediaQuery.of(context).size.width*0.025,
                                height: 73,
                                color: Colors.black,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.95,
                                decoration: BoxDecoration(
                                ),
                                padding: const EdgeInsets.all(25),
                                alignment: Alignment.centerLeft,
                                child: Text(calculator.userInput, style: const TextStyle(fontSize: 20)),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width*0.025,
                                height: 73,
                                color: Colors.black,
                              )
                            ],
                          ),
                          Container(
                            height: 5,
                            color: Colors.black,
                          )
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(30),
                        alignment: Alignment.centerRight,
                        child: Text(calculator.answer,style: const TextStyle(fontSize: 25),),
                      ),
                    ],
                  ),
                ),
              )
          ),

          Expanded(
            flex: 4,
            /*child: GridView.builder(
                   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                   itemCount: calcGrid.length,
                   itemBuilder: (BuildContext context, int index) {
                     return calcGrid[index];
                   }
               )*/
            child: Container(
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('couple.jpeg'),
                      fit: BoxFit.cover,
                    opacity: 0.5,
                  ),
                color: Colors.pink
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button.orange(label: "AC", onTap: () => setState(() {calculator.clean(); }),),
                      Button.red(label: "DEL", onTap: () => setState(() {calculator.delete();}),),
                      Button.blue(label: "%", onTap: () {},),
                      Button.blue(label: "/", onTap: () =>setState(() {calculator.addUserInput("/");}),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button.grey(label: "7", onTap: () =>setState(() {calculator.addUserInput("7");}),),
                      Button.grey(label: "8", onTap: () => setState(() {calculator.addUserInput("8");}),),
                      Button.grey(label: "9", onTap: () => setState(() {calculator.addUserInput("9");}),),
                      Button.blue(label: "x", onTap: () => setState(() {calculator.addUserInput("*");}),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button.grey(label: "4", onTap: () => setState(() {calculator.addUserInput("4");}),),
                      Button.grey(label: "5", onTap: () => setState(() {calculator.addUserInput("5");}),),
                      Button.grey(label: "6", onTap: () => setState(() {calculator.addUserInput("6");}),),
                      Button.blue(label: "-", onTap: () => setState(() {calculator.addUserInput("-");}),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button.grey(label: "1", onTap: () => setState(() {calculator.addUserInput("1");}),),
                      Button.grey(label: "2", onTap: () => setState(() {calculator.addUserInput("2");}),),
                      Button.grey(label: "3", onTap: () => setState(() {calculator.addUserInput("3");}),),
                      Button.blue(label: "+", onTap: () => setState(() {calculator.addUserInput("+");}),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Button.blue(label: "+/-", onTap: () => setState(() {calculator.addUserInput("-");}),),
                      Button.grey(label: "0", onTap: () => setState(() {calculator.addUserInput("0");}),),
                      Button.blue(label: ",", onTap: () => setState(() {calculator.addUserInput(".");}),),
                      Button.blue(label: "=", onTap: () => setState(() {calculator.result();}),),
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    super.setState(fn);
  }

  Widget setText()
  {
    //setState(() { });
    return Text(calculator.userInput, style: const TextStyle(fontSize: 20),);
  }

  void state() {
    setState(() { });
  }

}