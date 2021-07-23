import 'package:crashlyticsexample/Screens/HomeScreens/home.dart';
import 'package:crashlyticsexample/Screens/HomeScreens/home_state.dart';
import 'package:crashlyticsexample/redux/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Second extends StatefulWidget {
  Second({Key? key}) : super(key: key);

  @override
  _SecondState createState() => _SecondState();
}

class _SecondState extends State<Second> {
  TextEditingController textController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
              height: 800,
              width: 450,
              child: StoreConnector<AppState, BawaState>(
                  // onInit: (store) {
                  //   store.dispatch(getPromotions());
                  // },
                  converter: (store) => store.state.bawaState,
                  builder: (_, bawaState) {
                    // bawaState.value = "Ram";
                    // print("We get first value ${bawaState.value}");
                    // bawaState.value = "Anurag";
                    return Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text(
                              "Second Screen",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w900),
                            ),
                          ),
                          Container(
                            height: 200,
                            width: 450,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Firebase Data : ",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  // "${bawaState.value.toString()} \n
                                  "${bawaState.manageItems.first.promoName}  ${bawaState.manageItems.first.tiffinName}",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                              ],
                            ),
                          ),
                        (bawaState.value == "")
                              ? SizedBox()
                              : Container(
                                  height: 200,
                                  width: 450,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        "Text Data : ",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                      Text(
                                        "${bawaState.value.toString()}",
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                            child: TextFormField(
                              controller: textController,
                              decoration:
                                  InputDecoration(fillColor: Colors.white),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        InkWell(
                          onTap: () {
                            bawaState.value = textController.text.toString();
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext context) => Home()));
                          },
                          child: Container(
                            height: 50,
                            color: Colors.blue,
                            child: Center(
                              child: Text("First Screen Navigate"),
                            ),
                          ),
                        )
                      ],
                    );
                  })),
        ),
      ),
    );
  }
}
