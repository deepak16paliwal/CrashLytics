import 'package:crashlyticsexample/Screens/HomeScreens/home_state.dart';
import 'package:meta/meta.dart';


@immutable
class AppState {

  final BawaState bawaState;

  AppState({

    required this.bawaState

  });

  factory AppState.initial() {
    return AppState(

      bawaState: BawaState.initial(),

    );
  }

  AppState copyWith({
    BawaState? bawaState
    
    }) {
    return AppState(
        bawaState: bawaState ?? this.bawaState,

            
            );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AppState &&
          runtimeType == other.runtimeType 
          &&
          bawaState == other.bawaState
         
          ;

  @override
  int get hashCode =>
      bawaState.hashCode 
      // ^
      // moderatorClubState.hashCode ^
      // mileState.hashCode ^
      // historyState.hashCode ^
      // myRewardState.hashCode ^
      // checkInState.hashCode ^
      // moderatorRewardState.hashCode ^
      // moderatorReedemState.hashCode
      ;
}