import 'package:crashlyticsexample/Screens/HomeScreens/home_actions.dart';
import 'package:crashlyticsexample/Screens/HomeScreens/home_state.dart';
import 'package:crashlyticsexample/Screens/HomeScreens/secondScreen.dart';
import 'package:crashlyticsexample/redux/app/app_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                  onInit: (store) {
                    store.dispatch(getPromotions());
                  },
                  converter: (store) => store.state.bawaState,
                  builder: (_, bawaState) {
                    if (bawaState.manageItems.isNotEmpty) {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Text(
                              "First Screen",
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
                          // InkWell(
                          //   onTap: () {
                              
                          //   },
                          //   child: Container(
                          //     height: 50,
                          //     color: Colors.blue,
                          //     child: Center(
                          //       child: Text("Show"),
                          //     ),
                          //   ),
                          // ),
                          // SizedBox(
                          //   height: 20,
                          // ),
                          InkWell(
                            onTap: () {
                              bawaState.value = textController.text.toString();
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (BuildContext context) =>
                                          Second()));
                            },
                            child: Container(
                              height: 50,
                              color: Colors.blue,
                              child: Center(
                                child: Text("Second Screen Navigate"),
                              ),
                            ),
                          )
                        ],
                      );
                    } else {
                      return Container(
                        child: Center(
                          child: Text("No Data Present"),
                        ),
                      );
                    }
                  })),
        ),
      ),
    );
  }
}
