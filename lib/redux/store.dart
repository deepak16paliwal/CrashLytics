import 'package:crashlyticsexample/redux/app/app_state.dart';
import 'package:crashlyticsexample/redux/app_reducers.dart';
import 'package:redux/redux.dart';
import 'package:redux_thunk/redux_thunk.dart';


Future<Store<AppState>> createStore() async {
  return Store(
    appReducer,
    initialState: AppState.initial(),
    middleware: [thunkMiddleware],
  );
}