import 'package:crashlyticsexample/Screens/HomeScreens/home_reducers.dart';
import 'app/app_state.dart';

AppState appReducer(AppState state, dynamic action) {
  return new AppState(
    // loginState: loginReducers(
    //   state.loginState,
    //   action,
    // ),
    // activityState: activityReducer(
    //   state.activityState,
    //   action,
    // ),
    bawaState: bawaReducer(
      state.bawaState,
      action,
    ),
    // orderState: orderReducer(
    //   state.orderState,
    //   action,
    // ),
  );
}